import 'package:pollen_tracker/domain/models/config_entity.dart';

abstract class ConfigRepository {
  Future<ConfigEntity?> fetchConfigModel();
  Future<bool> updateModelId(int newId);
  Future<bool> updateModelLocale(String newLocale);
  Future<bool> updateModelTheme(bool isDark);
}
