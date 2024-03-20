import 'package:pollen_tracker/data/models/local/mood_record_model.dart';
import 'package:pollen_tracker/domain/datasources/mood_local_storage_datasource.dart';
import 'package:pollen_tracker/domain/repositories/mood_record_repository.dart';

class MoodRecordRepositoryImpl implements MoodRecordRepository {
  MoodRecordRepositoryImpl(this.moodLocalStorageDatasource);
  MoodLocalStorageDatasource moodLocalStorageDatasource;

  @override
  Future<bool> deleteMoodRecord(int id) {
    return moodLocalStorageDatasource.deleteMoodRecord(id);
  }

  @override
  Future<List<MoodRecordModel>> fetchAllmoodRecordModels() {
    return moodLocalStorageDatasource.fetchAllmoodRecordModels();
  }

  @override
  Future<int?> insertMoodRecordModel(MoodRecordModel moodRecordModel) {
    return moodLocalStorageDatasource.insertMoodRecordModel(moodRecordModel);
  }

  @override
  Future<int?> updateMoodRecordModel(MoodRecordModel moodRecordModel) {
    return moodLocalStorageDatasource.updateMoodRecordModel(moodRecordModel);
  }
}
