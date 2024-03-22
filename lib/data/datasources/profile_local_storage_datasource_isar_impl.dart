import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pollen_tracker/data/models/local/profile_model_isar.dart';

class ProfileLocalStorageDatasourceIsar {
  Isar? isar;

  ProfileLocalStorageDatasourceIsar();
  Future<Isar> _getIsarInstance() async {
    if (isar != null) {
      return isar!;
    }
    final dir = await getApplicationDocumentsDirectory();
    return Isar.open(
      [ProfileModelIsarSchema],
      directory: dir.path,
    );
  }

  Future<List<ProfileModelIsar>> fetchAllProfileModels() async {
    isar ??= await _getIsarInstance();
    final profileModels = await isar!.profileModelIsars.where().findAll();
    return profileModels;
  }

  Future<int?> addNewProfileModel(ProfileModelIsar profileModel) async {
    late int id;
    isar ??= await _getIsarInstance();
    await isar?.writeTxn(
      () async {
        id = await isar!.profileModelIsars.put(profileModel);
      },
    );
    return id;
  }

  Future<bool> deleteProfile(int id) async {
    late bool deleted;
    isar ??= await _getIsarInstance();
    await isar?.writeTxn(
      () async {
        deleted = await isar!.profileModelIsars.delete(id);
      },
    );
    return deleted;
  }

  Future<ProfileModelIsar?> fetchProfileModelById(int id) async {
    isar ??= await _getIsarInstance();
    final profileModels =
        await isar!.profileModelIsars.filter().idEqualTo(id).findFirst();
    return profileModels;
  }

  // TODO Проверить реализацию
  Future<int?> updateProfileModelInfo(ProfileModelIsar newInfo) async {
    late int id;
    isar ??= await _getIsarInstance();
    final objectToUpdate = await isar!.profileModelIsars
        .filter()
        .idEqualTo(newInfo.id)
        .findFirst();
    if (objectToUpdate != null) {
      objectToUpdate
        ..name = newInfo.name
        ..city = newInfo.city
        ..species = newInfo.species;

      await isar?.writeTxn(() async {
        id = await isar!.profileModelIsars.put(objectToUpdate);
      });
    }
    return id;
  }
}
