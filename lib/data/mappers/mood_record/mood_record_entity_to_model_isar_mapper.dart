import 'package:injectable/injectable.dart';
import 'package:pollen_tracker/data/models/local/mood_record_model_isar.dart';
import 'package:pollen_tracker/domain/models/mood_record_entity.dart';

@injectable
class MoodRecordEntityToModelIsarMapper {
  MoodRecordModelIsar map(MoodRecordEntity moodRecordEntity) {
    return MoodRecordModelIsar(
      moodType: moodRecordEntity.moodType,
      comment: moodRecordEntity.comment,
      date: moodRecordEntity.date,
    );
  }

  List<MoodRecordModelIsar> mapList(List<MoodRecordEntity> moodRecordEntity) {
    return moodRecordEntity.map((e) => map(e)).toList();
  }
}
