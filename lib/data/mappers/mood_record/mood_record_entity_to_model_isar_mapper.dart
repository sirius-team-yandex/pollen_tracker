import 'package:injectable/injectable.dart';
import 'package:pollen_tracker/data/models/local/mood_record_model_isar.dart';
import 'package:pollen_tracker/domain/models/mood_record_entity.dart';

@injectable
class MoodRecordEntityToModelIsarMapper {
  MoodRecordModelIsar map(MoodRecordEntity moodRecordEntity, int ownerId) {
    return MoodRecordModelIsar(
      ownerId: ownerId,
      date: moodRecordEntity.date.toUtc(),
      moodType: moodRecordEntity.moodType,
      comment: moodRecordEntity.comment,
    );
  }

  List<MoodRecordModelIsar> mapList(
    List<MoodRecordEntity> moodRecordEntity,
    int ownerId,
  ) {
    return moodRecordEntity.map((e) => map(e, ownerId)).toList();
  }
}
