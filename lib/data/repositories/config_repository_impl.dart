import 'package:injectable/injectable.dart';
import 'package:pollen_tracker/data/datasources/config_local_storage_datasource_isar_impl.dart';
import 'package:pollen_tracker/data/mappers/config_mappers/config_entity_to_config_model_mapper.dart';
import 'package:pollen_tracker/data/mappers/config_mappers/config_model_to_config_entity_mapper.dart';
import 'package:pollen_tracker/domain/models/config_entity.dart';
import 'package:pollen_tracker/domain/repositories/config_repository.dart';

@Injectable(as: ConfigRepository)
class ConfigRepositoryIsarImpl implements ConfigRepository {
  ConfigRepositoryIsarImpl(
    this.configLocalStorageDatasource,
    this.configModelIsarToEntityMapper,
    this.configEntityToModelIsarMapper,
  );

  final ConfigLocalStorageDatasourceIsar configLocalStorageDatasource;
  final ConfigModelIsarToEntityMapper configModelIsarToEntityMapper;
  final ConfigEntityToModelIsarMapper configEntityToModelIsarMapper;

  @override
  Future<ConfigEntity?> fetchConfigModel() async {
    final profileModel = await configLocalStorageDatasource.fetchConfigModel();

    if (profileModel != null) {
      return configModelIsarToEntityMapper.map(profileModel);
    }
    return null;
  }

  @override
  Future<bool> updateModelId(int? newId) async {
    final profileModel = await configLocalStorageDatasource.fetchConfigModel();

    if (profileModel != null) {
      profileModel.lastId = newId;
      final success =
          await configLocalStorageDatasource.updateModel(profileModel);
      if (success != null) {
        return true;
      }
    }
    return false;
  }

  @override
  Future<bool> updateModelLocale(String newLocale) async {
    final profileModel = await configLocalStorageDatasource.fetchConfigModel();

    if (profileModel != null) {
      profileModel.locale = newLocale;
      final success =
          await configLocalStorageDatasource.updateModel(profileModel);
      if (success != null) {
        return true;
      }
    }
    return false;
  }

  @override
  Future<bool> updateModelTheme(bool isDark) async {
    final profileModel = await configLocalStorageDatasource.fetchConfigModel();

    if (profileModel != null) {
      profileModel.isDark = isDark;
      final success =
          await configLocalStorageDatasource.updateModel(profileModel);
      if (success != null) {
        return true;
      }
    }
    return false;
  }
}
