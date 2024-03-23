import 'package:pollen_tracker/common/enums/mood_type.dart';

class MoodRecordEntity {
  // date is the effective id of entity in the domain layer.
  // date should be in local time and presented in UI as is.
  DateTime date;
  MoodType moodType;
  String? comment;
  MoodRecordEntity({
    required this.date,
    required this.moodType,
    this.comment,
  });
}
