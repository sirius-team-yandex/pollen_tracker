import 'package:pollen_tracker/domain/models/config_entity.dart';

abstract interface class ConfigSubject {
  Stream<ConfigEntity> observe();
}
