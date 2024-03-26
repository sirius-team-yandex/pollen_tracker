part of 'current_mood_bloc.dart';

@freezed
abstract class CurrentMoodEvent with _$CurrentMoodEvent {
  const factory CurrentMoodEvent.load(MoodRecordEntity? mood) = _LoadCurrentMood;
  const factory CurrentMoodEvent.write(MoodRecordEntity mood) = _WriteCurrentMood;
}
