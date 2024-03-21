import 'package:isar/isar.dart';
import 'package:pollen_tracker/common/enum/mood_type_enum.dart';

class MoodRecordEntity {
  Id? id;
  MoodType moodType;
  String? comment;
  DateTime date;
  MoodRecordEntity({
    required this.id,
    required this.moodType,
    this.comment,
    required this.date,
  });
}
