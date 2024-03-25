import 'package:isar/isar.dart';

part 'config_model_isar.g.dart';

@collection
class ConfigModelIsar {
  // We have only ONE config with all of the setting in there, we do not need any other ids
  Id id = 0;
  int? currProfileId;
  String locale;
  bool isDark;

  ConfigModelIsar({
    required this.currProfileId,
    required this.locale,
    required this.isDark,
  });
}
