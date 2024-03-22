import 'package:isar/isar.dart';

part 'config_model_isar.g.dart';
@collection
class ConfigModelIsar {
  Id? lastId;
  String locale;
  bool isDark;

  ConfigModelIsar({
    required this.lastId,
    required this.locale,
    required this.isDark,
  });
}
