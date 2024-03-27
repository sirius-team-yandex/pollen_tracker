import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:pollen_tracker/common/enums/locale_enum.dart';
import 'package:pollen_tracker/common/logger.dart';
import 'package:pollen_tracker/data/datasources/config_local_storage_datasource_isar_impl.dart';
import 'package:pollen_tracker/data/mappers/config_mappers/config_entity_to_config_model_mapper.dart';
import 'package:pollen_tracker/data/mappers/config_mappers/config_model_to_config_entity_mapper.dart';
import 'package:pollen_tracker/domain/models/config_entity.dart';
import 'package:pollen_tracker/domain/repositories/config_repository.dart';
import 'package:pollen_tracker/domain/repositories/config_subject.dart';

@injectable
class ConfigRepositoryIsarImpl implements ConfigRepository, ConfigSubject {
  ConfigRepositoryIsarImpl(
    this.datasource,
    this.configModelIsarToEntityMapper,
    this.configEntityToModelIsarMapper,
  );

  final ConfigLocalStorageDatasourceIsar datasource;
  final ConfigModelIsarToEntityMapper configModelIsarToEntityMapper;
  final ConfigEntityToModelIsarMapper configEntityToModelIsarMapper;

  @override
  Future<bool> set(ConfigEntity config) {
    logger.d('setted');
    return datasource.set(configEntityToModelIsarMapper.map(config));
  }

  @override
  Stream<ConfigEntity> observe() {
    return datasource.observe().map(
          (config) => config != null ? configModelIsarToEntityMapper.map(config) : _defaultConfig(),
        );
  }

  @override
  Future<ConfigEntity> get() async {
    final config = await datasource.get();
    return config != null ? configModelIsarToEntityMapper.map(config) : _defaultConfig();
  }

  // TODO: get default params from some contant object or from dynamically from the system
  ConfigEntity _defaultConfig() => const ConfigEntity(currProfileId: null, locale: LocaleEnum.ru, darkTheme: ThemeMode.system);
}
