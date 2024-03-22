import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pollen_tracker/data/models/local/mood_record_model_isar.dart';

@singleton
class MoodLocalStorageDatasourceIsar {
  Isar? isar;

  MoodLocalStorageDatasourceIsar();
  Future<Isar> _getIsarInstance() async {
    if (isar != null) {
      return isar!;
    }
    final dir = await getApplicationDocumentsDirectory();
    return Isar.open(
      [MoodRecordModelIsarSchema],
      directory: dir.path,
    );
  }

  Future<bool> deleteMoodRecord(int id) async {
    late bool deleted;
    isar ??= await _getIsarInstance();
    await isar?.writeTxn(
      () async {
        deleted = await isar!.moodRecordModelIsars.delete(id);
      },
    );
    return deleted;
  }

  Future<List<MoodRecordModelIsar>> fetchAllmoodRecordModels() async {
    isar ??= await _getIsarInstance();
    final moodRecordModels = await isar!.moodRecordModelIsars.where().findAll();
    return moodRecordModels;
  }

  Future<int?> insertMoodRecordModel(
    MoodRecordModelIsar moodRecordModel,
  ) async {
    late int id;
    isar ??= await _getIsarInstance();
    await isar?.writeTxn(
      () async {
        id = await isar!.moodRecordModelIsars.put(moodRecordModel);
      },
    );
    return id;
  }

  //TODO Проверить реализацию
  Future<int?> updateMoodRecordModel(
    MoodRecordModelIsar moodRecordModel,
  ) async {
    late int id;
    isar ??= await _getIsarInstance();
    await isar?.writeTxn(
      () async {
        id = await isar!.moodRecordModelIsars.put(moodRecordModel);
      },
    );
    return id;
  }
}
