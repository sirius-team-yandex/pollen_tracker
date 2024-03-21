import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pollen_tracker/data/models/local/mood_record_model_isar.dart';

class MoodLocalStorageDatasourceIsar {
  late final Isar isar;

  MoodLocalStorageDatasourceIsar._(this.isar);

  static Future<MoodLocalStorageDatasourceIsar> create() async {
    final dir = await getApplicationDocumentsDirectory();
    final isarInstance = await Isar.open(
      [MoodRecordModelIsarSchema],
      directory: dir.path,
    );
    return MoodLocalStorageDatasourceIsar._(isarInstance);
  }

  Future<bool> deleteMoodRecord(int id) async {
    late bool deleted;
    await isar.writeTxn(() async {
      deleted = await isar.moodRecordModelIsars.delete(id);
    });
    return deleted;
  }

  Future<List<MoodRecordModelIsar>> fetchAllmoodRecordModels() async {
    final moodRecordModels = await isar.moodRecordModelIsars.where().findAll();
    return moodRecordModels;
  }

  Future<int?> insertMoodRecordModel(MoodRecordModelIsar moodRecordModel) async {
    late int id;

    await isar.writeTxn(() async {
      id = await isar.moodRecordModelIsars.put(moodRecordModel);
    });
    return id;
  }

  Future<int?> updateMoodRecordModel(MoodRecordModelIsar moodRecordModel) async {
    late int id;
    await isar.writeTxn(() async {
      id = await isar.moodRecordModelIsars.put(moodRecordModel);
    });
    return id;
  }
}
