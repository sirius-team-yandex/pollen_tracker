import 'package:injectable/injectable.dart';
import 'package:pollen_tracker/data/models/local/mood_record_model_isar.dart';
import 'package:pollen_tracker/domain/models/mood_record_entity.dart';

@injectable
class MoodRecordModelIsarToEntityMapper {
  MoodRecordEntity map(MoodRecordModelIsar model) {
    return MoodRecordEntity(
      date: model.date.toLocal(),
      moodType: model.moodType,
      comment: model.comment,
    );
  }

  List<MoodRecordEntity> mapList(List<MoodRecordModelIsar> model) {
    return model.map((e) => map(e)).toList();
  }
}
