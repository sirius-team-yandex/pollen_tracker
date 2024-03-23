part of 'mood_bloc.dart';

@freezed
abstract class MoodRecordsEvent with _$MoodRecordsEvent {
  const factory MoodRecordsEvent.load({required int profileId, required DateTime date}) = LoadMoodRecords;
  const factory MoodRecordsEvent.logOut() = MoodRecordsLogOut;
  const factory MoodRecordsEvent.addMoodRecord(MoodRecordEntity mood) = AddMoodRecord;
  const factory MoodRecordsEvent.updateMoodRecord(MoodRecordEntity mood) = UpdateMoodRecord;
  const factory MoodRecordsEvent.deleteMoodRecord(MoodRecordEntity mood) = DeleteMoodRecord;
}
