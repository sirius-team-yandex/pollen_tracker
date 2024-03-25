import 'package:pollen_tracker/domain/models/mood_record_entity.dart';

abstract interface class MoodRecordSubject {
  Stream<List<MoodRecordEntity>> observeAll();
  // We use only local time in domain layer!
  Stream<MoodRecordEntity?> observeDay(DateTime date);
  Stream<List<MoodRecordEntity>> observeIn(
      DateTime lowerDate, DateTime upperDate);
}
