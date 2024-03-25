import 'package:freezed_annotation/freezed_annotation.dart';

part 'config_entity.freezed.dart';

@freezed
class ConfigEntity with _$ConfigEntity {
  const factory ConfigEntity({
    int? currProfileId,
    required String locale,
    required bool darkTheme,
  }) = _ConfigEntity;
}
