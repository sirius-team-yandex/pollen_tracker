import 'package:pollen_tracker/data/models/local/mood_record_model.dart';

abstract class MoodLocalStorageDatasource {
  Future<void> initialize();
  Future<bool> deleteMoodRecord(int id);
  Future<List<MoodRecordModel>> fetchAllmoodRecordModels();
  Future<int?> insertMoodRecordModel(MoodRecordModel moodRecordModel);
  Future<int?> updateMoodRecordModel(MoodRecordModel moodRecordModel);
}
