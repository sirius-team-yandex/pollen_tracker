import 'package:pollen_tracker/domain/models/mood_record_entity.dart';

abstract class MoodRecordRepository {
  Future<List<MoodRecordEntity>> getAll();
  // We use only local time in domain layer!
  Future<MoodRecordEntity?> getByDate(DateTime date);
  Future<bool> deleteByDate(DateTime date);
  Future<bool> insert(MoodRecordEntity moodRecordModel);
  Future<bool> insertAll(List<MoodRecordEntity> moodRecordModel);
}
