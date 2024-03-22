import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pollen_tracker/data/models/local/config_model_isar.dart';

class ConfigLocalStorageDatasourceIsar {
  Isar? isar;

  ConfigLocalStorageDatasourceIsar();
  Future<Isar> _getIsarInstance() async {
    if (isar != null) {
      return isar!;
    }
    final dir = await getApplicationDocumentsDirectory();
    return Isar.open(
      [ConfigModelIsarSchema],
      directory: dir.path,
    );
  }

  Future<ConfigModelIsar?> fetchConfigModel() async {
    isar ??= await _getIsarInstance();
    final configModels = await isar!.configModelIsars.where().findFirst();
    return configModels;
  }

  // TODO Проверить реализацию
  Future<int?> updateModel(ConfigModelIsar newConfig) async {
    late int id;
    isar ??= await _getIsarInstance();
    final objectToUpdate = await isar!.configModelIsars.where().findFirst();
    if (objectToUpdate != null) {
      objectToUpdate
        ..lastId = newConfig.lastId
        ..locale = newConfig.locale
        ..isDark = newConfig.isDark;

      await isar?.writeTxn(() async {
        id = await isar!.configModelIsars.put(objectToUpdate);
      });
    }
    return id;
  }
}
