import 'package:isar/isar.dart';
import 'package:pollen_tracker/common/enums/mood_type.dart';
part 'mood_record_model_isar.g.dart';

@collection
class MoodRecordModelIsar {
  // We derive composite key from date(up to day, ignore hours and smaller) and ownerId
  Id get id => getIsarId(id: getId(ownerId, date));
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

  // We use date only up to day as a part of the key, so we can store one record at a day
  // Could be changed later but now works like this
  static String getId(int ownerId, DateTime date) => '$ownerId-${date.copyWith(
        hour: 12,
        minute: 0,
        second: 0,
        millisecond: 0,
        microsecond: 0,
      )}';

  static int getIsarId({required String id}) => _fastHash(id);

  /// FNV-1a 64bit hash algorithm optimized for Dart Strings
  static int _fastHash(String string) {
    var hash = 0xcbf29ce484222325;

    var i = 0;
    while (i < string.length) {
      final codeUnit = string.codeUnitAt(i++);
      hash ^= codeUnit >> 8;
      hash *= 0x100000001b3;
      hash ^= codeUnit & 0xFF;
      hash *= 0x100000001b3;
    }

    return hash;
  }
}
