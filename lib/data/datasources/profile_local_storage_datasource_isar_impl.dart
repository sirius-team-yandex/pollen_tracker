import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pollen_tracker/data/models/local/profile_model_isar.dart';

@injectable
class ProfileLocalStorageDatasourceIsar {
  Isar? _isar;

  ProfileLocalStorageDatasourceIsar();
  Future<Isar> _getIsarInstance() async {
    if (_isar != null) {
      return _isar!;
    }
    final dir = await getApplicationDocumentsDirectory();
    return Isar.open(
      [ProfileModelIsarSchema],
      directory: dir.path,
    );
  }

  Future<List<ProfileModelIsar>> fetchAllProfileModels() async {
    _isar ??= await _getIsarInstance();
    final profileModels = await _isar!.profileModelIsars.where().findAll();
    return profileModels;
  }

  Future<int?> addNewProfileModel(ProfileModelIsar profileModel) async {
    late int id;
    _isar ??= await _getIsarInstance();
    await _isar?.writeTxn(
      () async {
        id = await _isar!.profileModelIsars.put(profileModel);
      },
    );
    return id;
  }

  Future<bool> deleteProfile(int id) async {
    late bool deleted;
    _isar ??= await _getIsarInstance();
    await _isar?.writeTxn(
      () async {
        deleted = await _isar!.profileModelIsars.delete(id);
      },
    );
    return deleted;
  }

  Future<ProfileModelIsar?> fetchProfileModelById(int id) async {
    _isar ??= await _getIsarInstance();
    final profileModels =
        await _isar!.profileModelIsars.filter().idEqualTo(id).findFirst();
    return profileModels;
  }

  // TODO Проверить реализацию
  Future<int?> updateProfileModelInfo(ProfileModelIsar newInfo) async {
    late int id;
    _isar ??= await _getIsarInstance();
    final objectToUpdate = await _isar!.profileModelIsars
        .filter()
        .idEqualTo(newInfo.id)
        .findFirst();
    if (objectToUpdate != null) {
      objectToUpdate
        ..name = newInfo.name
        ..city = newInfo.city
        ..species = newInfo.species;

      await _isar?.writeTxn(() async {
        id = await _isar!.profileModelIsars.put(objectToUpdate);
      });
    }
    return id;
  }
}
