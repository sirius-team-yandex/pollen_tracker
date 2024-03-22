import 'package:pollen_tracker/domain/models/mood_record_entity.dart';

abstract class MoodRecordRepository {
  Future<List<MoodRecordEntity>> fetchAllmoodRecordModels();
  Future<int?> insertMoodRecordModel(MoodRecordEntity moodRecordModel);
  Future<int?> updateMoodRecordModel(MoodRecordEntity moodRecordModel);
  Future<bool> deleteMoodRecord(int id);
}
