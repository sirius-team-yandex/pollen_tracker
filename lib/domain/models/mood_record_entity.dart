import 'package:isar/isar.dart';
import 'package:pollen_tracker/common/enum/mood_type_enum.dart';

class MoodRecordEntity {
  Id? id;
  Id profileId;
  MoodType moodType;
  String? comment;
  DateTime date;
  MoodRecordEntity({
    required this.id,
    required this.profileId,
    required this.moodType,
    this.comment,
    required this.date,
  });
}
