import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pollen_tracker/common/enums/mood_type.dart';

part 'mood_record_entity.freezed.dart';

@freezed
class MoodRecordEntity with _$MoodRecordEntity {
  // date is the effective id of entity in the domain layer.
  // date should be in local time and presented in UI as is.
  const factory MoodRecordEntity({
    required DateTime date,
    required MoodType moodType,
    String? comment,
  }) = _MoodRecordEntity;
}
