import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:pollen_tracker/data/models/local/pollen_model.dart';

@singleton
class PollenLocalStorageDatasource {
  PollenLocalStorageDatasource({required this.isar});

  Isar isar;

  // Return true if we inserted model
  Future<bool> insert(
    PollenModel model,
  ) async {
    await isar.writeTxn(
      () async {
        await isar.pollenModels.put(model);
      },
    );

    // If something went wrong exception will be thrown
    return true;
  }

  // Return true if we inserted model
  Future<bool> insertAll(
    List<PollenModel> models,
  ) async {
    await isar.writeTxn(
      () async {
        await isar.pollenModels.putAll(models);
      },
    );

    // If something went wrong exception will be thrown
    return true;
  }

  Future<bool> delete({
    required double lat,
    required double lng,
    required DateTime time,
  }) async {
    if (!time.isUtc) {
      throw ArgumentError('Date should be UTC!');
    }
    bool deleted = false;

    await isar.writeTxn(
      () async {
        final count = await isar.pollenModels
            .where()
            .isarIdEqualTo(
              PollenModel.getIsarId(
                id: PollenModel.getId(
                  lng: lng,
                  lat: lat,
                  time: time,
                ),
              ),
            )
            .deleteAll();
        deleted = count > 0;
      },
    );

    return deleted;
  }

  Stream<List<PollenModel>> observeAll({
    required double lat,
    required double lng,
  }) async* {
    yield* isar.pollenModels
        .where()
        .filter()
        .latEqualTo(lat)
        .lngEqualTo(lng)
        .watch(fireImmediately: true);
  }

  Stream<List<PollenModel>> observeIn({
    required double lat,
    required double lng,
    required DateTime lowerTime,
    required DateTime upperTime,
  }) async* {
    if (!lowerTime.isUtc || !upperTime.isUtc) {
      throw ArgumentError('Date should be UTC!');
    }

    yield* isar.pollenModels
        .where()
        .timeBetween(lowerTime, upperTime)
        .filter()
        .latEqualTo(lat)
        .lngEqualTo(lng)
        .watch(fireImmediately: true);
  }
}
