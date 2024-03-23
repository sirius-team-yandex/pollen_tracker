part of 'mood_bloc.dart';

@freezed
class MoodRecordsState with _$MoodRecordsState {
  const factory MoodRecordsState.loading() = LoadingMoodRecordsState;

  const factory MoodRecordsState.moodRecordsLoaded(List<MoodRecordEntity> moodRecords) = MoodRecordsLoadedState;

  const factory MoodRecordsState.error() = ErrorMoodRecordsState;
}
