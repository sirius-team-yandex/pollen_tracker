import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pollen_tracker/data/models/local/mood_record_model_isar.dart';

@singleton
class MoodLocalStorageDatasourceIsar {
  Isar? _isar;

  MoodLocalStorageDatasourceIsar();
  Future<Isar> _getIsarInstance() async {
    if (_isar != null) {
      return _isar!;
    }
    final dir = await getApplicationDocumentsDirectory();
    return Isar.open(
      [MoodRecordModelIsarSchema],
      directory: dir.path,
    );
  }

  Future<bool> deleteMoodRecord(int id) async {
    late bool deleted;
    _isar ??= await _getIsarInstance();
    await _isar?.writeTxn(
      () async {
        deleted = await _isar!.moodRecordModelIsars.delete(id);
      },
    );
    return deleted;
  }

  Future<List<MoodRecordModelIsar>> fetchAllmoodRecordModels() async {
    _isar ??= await _getIsarInstance();
    final moodRecordModels =
        await _isar!.moodRecordModelIsars.where().findAll();
    return moodRecordModels;
  }

  Future<int?> insertMoodRecordModel(
    MoodRecordModelIsar moodRecordModel,
  ) async {
    late int id;
    _isar ??= await _getIsarInstance();
    await _isar?.writeTxn(
      () async {
        id = await _isar!.moodRecordModelIsars.put(moodRecordModel);
      },
    );
    return id;
  }

  //TODO Проверить реализацию
  Future<int?> updateMoodRecordModel(
    MoodRecordModelIsar moodRecordModel,
  ) async {
    late int id;
    _isar ??= await _getIsarInstance();
    await _isar?.writeTxn(
      () async {
        id = await _isar!.moodRecordModelIsars.put(moodRecordModel);
      },
    );
    return id;
  }
}
