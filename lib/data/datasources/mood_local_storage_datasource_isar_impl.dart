import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pollen_tracker/data/models/local/mood_record_model_isar.dart';

@singleton
// WARNING: We should use only UTC time as arguments to avoid possible errors!!
class MoodLocalStorageDatasourceIsar {
  MoodLocalStorageDatasourceIsar();

  Isar? _isar;

  // WARNING Use Date.noon() when you pass date or exception will be thrown!!
  // Return null if we updated model
  Future<bool> insert(
    MoodRecordModelIsar model,
  ) async {
    if (!model.date.isAtSameMomentAs(model.date.noon()) || !model.date.isUtc) {
      throw ArgumentError('Date should be UTC at the noon!');
    }

    bool updated = false;
    final isar = await _getInstance();

    await isar.writeTxn(
      () async {
        // We should clean up if there are any models with the same Key
        final count = await isar.moodRecordModelIsars
            .where()
            .ownerIdDateEqualTo(model.ownerId, model.date.toUtc().noon())
            .deleteAll();

        // We DO NOT use Isar id in any logic, we use COMPOSITE KEY (ownerId, date)
        await isar.moodRecordModelIsars.put(model);
        updated = count != 0;
      },
    );

    return updated;
  }

  Future<bool> insertAll(
    List<MoodRecordModelIsar> models,
  ) async {
    if (models.any(
      (model) => !model.date.isAtSameMomentAs(model.date.noon()) || !model.date.isUtc,
    )) {
      throw ArgumentError('Date should be UTC at the noon!');
    }

    bool updated = false;
    final isar = await _getInstance();

    await isar.writeTxn(
      () async {
        for (var model in models) {
          // We should clean up if there are any models with the same Key
          final count = await isar.moodRecordModelIsars
              .where()
              .ownerIdDateEqualTo(model.ownerId, model.date.toUtc().noon())
              .deleteAll();

          // We DO NOT use Isar Id in any logic, we use COMPOSITE KEY (ownerId, date)
          await isar.moodRecordModelIsars.put(model);
          updated = count != 0;
        }
      },
    );

    return updated;
  }

  Future<List<MoodRecordModelIsar>> getAll() async {
    final isar = await _getInstance();

    final moodRecordModels = await isar.moodRecordModelIsars.where().findAll();
    return moodRecordModels;
  }

  Future<MoodRecordModelIsar?> get(int ownerId, DateTime date) async {
    final isar = await _getInstance();

    final model = await isar.moodRecordModelIsars.where().ownerIdDateEqualTo(ownerId, date.toUtc().noon()).findFirst();
    return model;
  }

  Future<bool> delete(int ownerId, DateTime date) async {
    bool deleted = false;
    final isar = await _getInstance();

    await isar.writeTxn(
      () async {
        final count =
            await isar.moodRecordModelIsars.where().ownerIdDateEqualTo(ownerId, date.toUtc().noon()).deleteAll();
        deleted = count > 0;
      },
    );

    return deleted;
  }

  Future<Stream<List<MoodRecordModelIsar>>> observeAll() async {
    final isar = await _getInstance();

    return isar.moodRecordModelIsars.where().watch();
  }

  Future<Isar> _getInstance() async {
    if (_isar != null) {
      return _isar!;
    }
    final dir = await getApplicationDocumentsDirectory();

    return Isar.open(
      [MoodRecordModelIsarSchema],
      directory: dir.path,
    );
  }
}

// Convert given DateTime to noon for the comparison purposes
extension DateManipulation on DateTime {
  DateTime noon() {
    return copyWith(hour: 12, minute: 0, second: 0, millisecond: 0, microsecond: 0);
  }
}
