import 'package:pollen_tracker/domain/models/mood_record_entity.dart';

abstract class MoodRecordsRepository {
  Future<List<MoodRecordEntity>> fetchAllmoodRecordModels(int profileId, DateTime date);
  Future<bool> addMoodRecordModel(MoodRecordEntity moodRecordModel);
  Future<bool> updateMoodRecordModel(MoodRecordEntity moodRecordModel);
  Future<bool> deleteMoodRecord(MoodRecordEntity moodRecordModel);
}
