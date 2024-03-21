import 'package:isar/isar.dart';
import 'package:pollen_tracker/common/enum/mood_type_enum.dart';
import 'package:pollen_tracker/data/models/local/mood_record_model_isar.dart';

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

  factory MoodRecordEntity.fromModel(MoodRecordModelIsar model) {
    return MoodRecordEntity(
      id: model.id,
      moodType: model.moodType,
      comment: model.comment,
      date: model.date,
    );
  }
}
