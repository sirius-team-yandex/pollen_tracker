import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pollen_tracker/data/models/local/mood_record_model.dart';
import 'package:pollen_tracker/domain/datasources/mood_local_storage_datasource.dart';

class MoodLocalStorageDatasourceIsarImpl implements MoodLocalStorageDatasource {
  late final Isar isar;

  MoodLocalStorageDatasourceIsarImpl._(this.isar);

  static Future<MoodLocalStorageDatasourceIsarImpl> create() async {
    final dir = await getApplicationDocumentsDirectory();
    final isarInstance = await Isar.open(
      [MoodRecordModelSchema],
      directory: dir.path,
    );
    return MoodLocalStorageDatasourceIsarImpl._(isarInstance);
  }

  @override
  Future<void> initialize() async {
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open(
      [MoodRecordModelSchema],
      directory: dir.path,
    );
  }

  @override
  Future<bool> deleteMoodRecord(int id) async {
    late bool deleted;
    await isar.writeTxn(() async {
      deleted = await isar.moodRecordModels.delete(id);
    });
    return deleted;
  }

  @override
  Future<List<MoodRecordModel>> fetchAllmoodRecordModels() async {
    final moodRecordModels = await isar.moodRecordModels.where().findAll();
    return moodRecordModels;
  }

  @override
  Future<int?> insertMoodRecordModel(MoodRecordModel moodRecordModel) async {
    late int id;

    await isar.writeTxn(() async {
      id = await isar.moodRecordModels.put(moodRecordModel);
    });
    return id;
  }

  @override
  Future<int?> updateMoodRecordModel(MoodRecordModel moodRecordModel) async {
    late int id;
    await isar.writeTxn(() async {
      id = await isar.moodRecordModels.put(moodRecordModel);
    });
    return id;
  }
}
