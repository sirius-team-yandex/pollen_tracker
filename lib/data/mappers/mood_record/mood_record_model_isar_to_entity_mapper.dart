import 'package:pollen_tracker/data/models/local/mood_record_model_isar.dart';
import 'package:pollen_tracker/domain/models/mood_record_entity.dart';

class MoodRecordModelIsarToEntityMapper {
  MoodRecordEntity map(MoodRecordModelIsar model) {
    return MoodRecordEntity(
      id: model.id,
      moodType: model.moodType,
      comment: model.comment,
      date: model.date,
    );
  }

  List<MoodRecordEntity> mapList(List<MoodRecordModelIsar> model) {
    return model.map((e) => map(e)).toList();
  }
}
