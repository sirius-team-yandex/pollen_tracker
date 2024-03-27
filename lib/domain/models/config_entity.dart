import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pollen_tracker/common/enums/locale_enum.dart';

part 'config_entity.freezed.dart';

@freezed
class ConfigEntity with _$ConfigEntity {
  const factory ConfigEntity({
    int? currProfileId,
    required LocaleEnum locale,
    required ThemeMode darkTheme,
  }) = _ConfigEntity;
}
