import 'package:pollen_tracker/domain/models/mood_record_entity.dart';

abstract interface class MoodRecordRepository {
  // We use only local time in domain layer!
  Future<bool> deleteByDate(DateTime date);
  Future<bool> insert(MoodRecordEntity moodRecordModel);
  Future<bool> insertAll(List<MoodRecordEntity> moodRecordModel);
}
