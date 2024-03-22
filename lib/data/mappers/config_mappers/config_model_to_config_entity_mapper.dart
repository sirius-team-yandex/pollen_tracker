import 'package:pollen_tracker/data/models/local/config_model_isar.dart';
import 'package:pollen_tracker/domain/models/config_entity.dart';

class ConfigModelIsarToEntityMapper {
  ConfigEntity map(ConfigModelIsar configModelIsar) {
    return ConfigEntity(
      lastId: configModelIsar.lastId,
      locale: configModelIsar.locale,
      darkTheme: configModelIsar.isDark,
    );
  }

  List<ConfigEntity> mapList(List<ConfigModelIsar> configModelIsar) {
    return configModelIsar.map((e) => map(e)).toList();
  }
}
