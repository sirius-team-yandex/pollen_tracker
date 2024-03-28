import 'package:injectable/injectable.dart';
import 'package:pollen_tracker/data/models/local/config_model_isar.dart';
import 'package:pollen_tracker/domain/models/config_entity.dart';

@injectable
class ConfigModelIsarToEntityMapper {
  ConfigEntity map(ConfigModelIsar configModelIsar) {
    return ConfigEntity(
      currProfileId: configModelIsar.currProfileId,
      locale: configModelIsar.locale,
      darkTheme: configModelIsar.isDark,
      isFirstLaunch: configModelIsar.isFirstLaunch,
    );
  }

  List<ConfigEntity> mapList(List<ConfigModelIsar> configModelIsar) {
    return configModelIsar.map((e) => map(e)).toList();
  }
}
