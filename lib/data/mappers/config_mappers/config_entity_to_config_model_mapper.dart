import 'package:injectable/injectable.dart';
import 'package:pollen_tracker/data/models/local/config_model_isar.dart';
import 'package:pollen_tracker/domain/models/config_entity.dart';

@injectable
class ConfigEntityToModelIsarMapper {
  ConfigModelIsar map(ConfigEntity configEntity) {
    return ConfigModelIsar(
      lastId: configEntity.lastId,
      locale: configEntity.locale,
      isDark: configEntity.darkTheme,
    );
  }

  List<ConfigModelIsar> mapList(List<ConfigEntity> configEntity) {
    return configEntity.map((e) => map(e)).toList();
  }
}
