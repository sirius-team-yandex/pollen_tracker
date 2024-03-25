import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:pollen_tracker/data/models/local/mood_record_model_isar.dart';

@singleton
// WARNING: We should use only UTC time as arguments to avoid possible errors!!
class MoodLocalStorageDatasourceIsar {
  MoodLocalStorageDatasourceIsar({required this.isar});

  Isar isar;

  // Return true if we inserted model
  Future<bool> insert(
    MoodRecordModelIsar model,
  ) async {
    if (!model.date.isUtc) {
      throw ArgumentError('Date should be UTC!');
    }

    await isar.writeTxn(
      () async {
        await isar.moodRecordModelIsars.put(model);
      },
    );

    // Exception would be thrown otherwise
    return true;
  }

  Future<bool> insertAll(
    List<MoodRecordModelIsar> models,
  ) async {
    if (models.any(
      (model) => !model.date.isUtc,
    )) {
      throw ArgumentError('Date should be UTC!');
    }

    await isar.writeTxn(
      () async {
        isar.moodRecordModelIsars.putAll(models);
      },
    );

    return true;
  }

  Future<bool> delete(int ownerId, DateTime date) async {
    if (!date.isUtc) {
      throw ArgumentError('Date should be UTC!');
    }
    bool deleted = false;

    await isar.writeTxn(
      () async {
        deleted = await isar.moodRecordModelIsars.delete(
          MoodRecordModelIsar.getIsarId(
            id: MoodRecordModelIsar.getId(ownerId, date),
          ),
        );
      },
    );

    return deleted;
  }

  Stream<List<MoodRecordModelIsar>> observeAll(int ownerId) async* {

    yield* isar.moodRecordModelIsars
        .where()
        .ownerIdEqualToAnyDate(ownerId)
        .watch();
  }

  Stream<List<MoodRecordModelIsar>> observeIn(
    int ownerId,
    DateTime lowerDate,
    DateTime upperDate,
  ) async* {
    if (!lowerDate.isUtc || !upperDate.isUtc) {
      throw ArgumentError('Date should be UTC!');
    }

    yield* isar.moodRecordModelIsars
        .where()
        .ownerIdEqualToDateBetween(ownerId, lowerDate, upperDate)
        .watch();
  }
}
