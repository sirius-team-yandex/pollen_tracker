import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pollen_tracker/common/logger.dart';
import 'package:pollen_tracker/domain/models/mood_record_entity.dart';
import 'package:pollen_tracker/domain/repositories/mood_record_repository.dart';
import 'package:pollen_tracker/domain/repositories/mood_record_subject.dart';

part 'current_mood_bloc.freezed.dart';
part 'current_mood_events.dart';
part 'current_mood_states.dart';

extension CurrentMoodBuilder on BuildContext {
  CurrentMoodState? get currentMoodState => BlocProvider.of<CurrentMoodBloc>(this).state;
  CurrentMoodBloc? get currentMoodBloc => BlocProvider.of<CurrentMoodBloc>(this);
}

@injectable
class CurrentMoodBloc extends Bloc<CurrentMoodEvent, CurrentMoodState> {
  final MoodRecordSubject moodRecordSubject;
  final MoodRecordRepository currentMoodRepository;

  late StreamSubscription moodSubscription;

  CurrentMoodBloc({required this.moodRecordSubject, required this.currentMoodRepository})
      : super(const CurrentMoodState.init()) {
    moodSubscription = moodRecordSubject.observeDay(DateTime.now()).listen((mood) {
      add(
        CurrentMoodEvent.load(mood),
      );
      logger.i('Call load Event on CurrentMoodBloc from stream');
    })
      ..onError((e) {
        _error(e, 'Error on CurrentMoodBloc from stream');
      });

    on<_LoadCurrentMood>(_loadMoodRecord);
    on<_WriteCurrentMood>(_writeMoodRecord);
  }

  void loadCurrentMood(MoodRecordEntity? mood) {
    add(CurrentMoodEvent.load(mood));
  }

  void writeCurrentMood(MoodRecordEntity mood) {
    add(CurrentMoodEvent.write(mood));
  }

  Future<void> _loadMoodRecord(_LoadCurrentMood event, Emitter<CurrentMoodState> emit) async {
    try {
      final MoodRecordEntity? mood = event.mood;
      if (mood != null) {
        emit(CurrentMoodState.loaded(mood));
        logger.i('Emit CurrentMoodLoadedState from CurrentMoodBloc');
      } else {
        emit(const CurrentMoodState.notSet());
        logger.i('Emit MoodNoSetState from CurrentMoodBloc');
      }
    } catch (e) {
      _error(e, 'Error on loadCurrentMood', emit);
    }
  }

  Future<void> _writeMoodRecord(_WriteCurrentMood event, Emitter<CurrentMoodState> emit) async {
    try {
      await currentMoodRepository.insert(event.mood);
      logger.i('Write current mood from CurrentMoodBloc');
    } catch (e) {
      _error(e, 'Error on writeCurrentMood', emit);
    }
  }

  Future<void> _error(
    Object error, [
    String message = 'Error',
    Emitter<CurrentMoodState>? emit,
  ]) async {
    logger.e('$message: $error');
    emit?.call(const CurrentMoodState.error());
  }
}
