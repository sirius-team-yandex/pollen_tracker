import 'package:isar/isar.dart';
import 'package:pollen_tracker/common/enum/mood_type_enum.dart';
part 'mood_record_model_isar.g.dart';

@collection
class MoodRecordModelIsar {
  Id id;
  @enumerated
  MoodType moodType;
  String? comment;
  DateTime date;
  MoodRecordModelIsar({
    required this.moodType,
    this.comment,
    required this.date,
  }) : id = int.parse(date.millisecondsSinceEpoch.toString().substring(0, 10));
}
