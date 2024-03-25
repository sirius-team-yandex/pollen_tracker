import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:pollen_tracker/data/models/local/profile_model_isar.dart';

@singleton
class ProfileLocalStorageDatasourceIsar {
  ProfileLocalStorageDatasourceIsar({required this.isar});

  Isar isar;

  Future<List<ProfileModelIsar>> getAll() async {
    final profileModels = await isar.profileModelIsars.where().findAll();
    return profileModels;
  }

  Future<ProfileModelIsar?> get(int id) async {
    final profileModel = await isar.profileModelIsars.get(id);

    return profileModel;
  }

  Future<bool> insert(ProfileModelIsar profileModel) async {
    await isar.writeTxn(
      () async {
        await isar.profileModelIsars.put(profileModel);
      },
    );

    // return true if everything is okay, Isar will throw otherwise
    return true;
  }

  Future<bool> deleteProfile(int id) async {
    bool deleted = false;
    await isar.writeTxn(
      () async {
        deleted = await isar.profileModelIsars.delete(id);
      },
    );
    return deleted;
  }

  Stream<List<ProfileModelIsar>> observeAll() async* {
    yield* isar.profileModelIsars.where().anyProfileId().watch(fireImmediately: true);
  }

  Stream<ProfileModelIsar?> observeById(int id) async* {
    yield* isar.profileModelIsars
        .where()
        .profileIdEqualTo(id)
        .watch(fireImmediately: true)
        .map((config) => config.firstOrNull);
  }
}
