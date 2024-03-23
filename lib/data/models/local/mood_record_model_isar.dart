import 'package:isar/isar.dart';
import 'package:pollen_tracker/common/enums/mood_type.dart';
part 'mood_record_model_isar.g.dart';

@collection
class MoodRecordModelIsar {
  // Internal id for Isar, we DO NOT use it to query our objects.
  Id id = Isar.autoIncrement;
  // We should use composite index of ownerId + date instead.
  // This is workaround baecause Isar does not support neither composite nor string keys.
  // Composite index is just a way to find db entry it IS NOT unique.
  // You should make sure that you deleted all of the other entries with the same index.
  @Index(composite: [CompositeIndex('date')])
  int ownerId;
  // date, as a part of the "composite key" should be stable and time zone agnostic
  // Those it should be stored as utc time to avoid any possible errors
  DateTime date;
  @enumerated
  MoodType moodType;
  String? comment;
  MoodRecordModelIsar({
    required this.ownerId,
    required this.date,
    required this.moodType,
    this.comment,
  });
}
