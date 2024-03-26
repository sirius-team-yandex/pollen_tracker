import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:pollen_tracker/common/logger.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pollen_tracker/domain/models/pollen_entity.dart';
import 'package:pollen_tracker/domain/repositories/pollen_repository.dart';
import 'package:pollen_tracker/domain/repositories/pollen_subject.dart';

part 'current_pollen_bloc.freezed.dart';
part 'current_pollen_events.dart';
part 'current_pollen_states.dart';

extension CurrentPollenBuilder on BuildContext {
  CurrentPollenState? get currentPollenState => BlocProvider.of<CurrentPollenBloc>(this).state;
  CurrentPollenBloc? get currentPollenBloc => BlocProvider.of<CurrentPollenBloc>(this);
}

// TODO: зарегать в DI
@injectable
class CurrentPollenBloc extends Bloc<CurrentPollenEvent, CurrentPollenState> {
  final PollenSubject pollenRecordSubject;
  final PollenRepository currentPollenRepository;

  late StreamSubscription pollenSubscription;

  CurrentPollenBloc({required this.pollenRecordSubject, required this.currentPollenRepository})
      : super(const CurrentPollenState.init()) {
    final DateTime startDate = DateTime.now().copyWith(hour: 0, minute: 0, second: 0);
    final DateTime endDate = startDate.copyWith(hour: 23, minute: 59, second: 59); // TODO
    pollenSubscription = pollenRecordSubject.observeIn(startDate, endDate).listen(
      (pollens) {
        add(
          CurrentPollenEvent.load(pollens),
        );
        logger.i('Call load Event on CurrentPollenBloc from stream');
      },
    )..onError(
        (e) {
          _error(e, 'Error on CurrentPollenBloc from stream');
        },
      );

    on<_LoadCurrentPollen>(_loadPollenRecord);
  }

  Future<void> _loadPollenRecord(_LoadCurrentPollen event, Emitter<CurrentPollenState> emit) async {
    try {
      final List<PollenEntity>? pollens = event.pollen;
      if (pollens != null) {
        emit(CurrentPollenState.loaded(pollens));
        logger.i('Emit CurrentPollenLoadedState from CurrentPollenBloc');
      }
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
