import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:pollen_tracker/common/logger.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pollen_tracker/domain/repositories/pollen_repository.dart';
import 'package:pollen_tracker/domain/repositories/pollen_subject.dart';
import 'package:pollen_tracker/domain/repositories/profile_subject.dart';
import 'package:pollen_tracker/ui/formatters/pollen_entity_to_pollen_vo_formatter.dart';
import 'package:pollen_tracker/ui/models/forecast_vo.dart';
import 'package:rxdart/rxdart.dart';

part 'current_pollen_bloc.freezed.dart';
part 'current_pollen_events.dart';
part 'current_pollen_states.dart';

extension CurrentPollenBuilder on BuildContext {
  CurrentPollenState? get currentPollenState => BlocProvider.of<CurrentPollenBloc>(this).state;
  CurrentPollenBloc? get currentPollenBloc => BlocProvider.of<CurrentPollenBloc>(this);
}

@singleton
class CurrentPollenBloc extends Bloc<CurrentPollenEvent, CurrentPollenState> {
  final ProfileSubject profileSubject;
  final PollenSubject pollenRecordSubject;
  final PollenRepository currentPollenRepository;
  final PollenEntityToForecastVoFormatter pollenEntityToForecastVoFormatter;
  late StreamSubscription pollenSubscription;

  CurrentPollenBloc({
    required this.profileSubject,
    required this.pollenRecordSubject,
    required this.currentPollenRepository,
    required this.pollenEntityToForecastVoFormatter,
  }) : super(const CurrentPollenState.init()) {
    // In case if we want to load all records for the day we can use these bounds
    // final DateTime startDate = DateTime.now().copyWith(hour: 0, minute: 0, second: 0);
    // final DateTime endDate = startDate.copyWith(hour: 23, minute: 59, second: 59);

    profileSubject.observeCurrent();

    pollenSubscription = Rx.combineLatest2(
      profileSubject.observeCurrent(),
      pollenRecordSubject.observeForecast(DateTime.now()),
      (profile, pollen) {
        if (profile == null) {
          return null;
        } else {
          final vos = pollenEntityToForecastVoFormatter.mapList(
            pollen,
            profile.species,
          );
          return vos;
        }
      },
    ).whereNotNull().listen((vos) {
      add(CurrentPollenEvent.load(vos));
    })
      ..onError(
        (e) {
          _error(e, 'Error on CurrentPollenBloc from stream');
        },
      );

    on<_LoadCurrentPollen>(_loadPollenRecord);
  }

  Future<void> _loadPollenRecord(
    _LoadCurrentPollen event,
    Emitter<CurrentPollenState> emit,
  ) async {
    try {
      emit(CurrentPollenState.loaded(event.pollen));
      logger.i('Emit CurrentPollenLoadedState from CurrentPollenBloc');
    } catch (e) {
      _error(e, 'Error on loadCurrentPollen', emit);
    }
  }

  Future<void> _error(
    Object error, [
    String message = 'Error',
    Emitter<CurrentPollenState>? emit,
  ]) async {
    logger.e('$message: $error');
    emit?.call(const CurrentPollenState.error());
  }

  @override
  Future<void> close() async {
    pollenSubscription.cancel();
    return super.close();
  }
}
