import 'package:isar/isar.dart';
part 'mood_record_model.g.dart';

enum MoodType { veryBad, bad, normal, good }

@collection
class MoodRecordModel {
  Id id = Isar.autoIncrement;
  @enumerated
  MoodType moodType;
  String? comment;
  DateTime date;
  MoodRecordModel({
    required this.moodType,
    this.comment,
    required this.date,
  });
}
