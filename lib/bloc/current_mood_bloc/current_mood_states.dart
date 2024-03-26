part of 'current_mood_bloc.dart';

@freezed
class CurrentMoodState with _$CurrentMoodState {
  const factory CurrentMoodState.init() = _InitialCurrentMoodState;

  const factory CurrentMoodState.loaded(MoodRecordEntity mood) = _CurrentMoodLoadedState;

  const factory CurrentMoodState.notSet() = _MoodNoSetState;

  const factory CurrentMoodState.error() = _ErrorCurrentMoodState;
}
