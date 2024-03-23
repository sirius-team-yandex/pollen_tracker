import 'package:pollen_tracker/domain/models/mood_record_entity.dart';

abstract interface class MoodRecordSubject {
  Stream<List<MoodRecordEntity>> observe();
}
