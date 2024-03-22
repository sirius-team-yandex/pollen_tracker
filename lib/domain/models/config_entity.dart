import 'package:freezed_annotation/freezed_annotation.dart';

part 'config_entity.freezed.dart';

@freezed
class ConfigEntity with _$ConfigEntity {
  const factory ConfigEntity({
     int? lastId,
    @Default('en')  String locale,
    @Default(false) bool darkTheme,
  }) = _ConfigEntity;
}
//
//
