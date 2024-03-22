import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pollen_tracker/data/models/remote/forecast_entry_dto.dart';

part 'ambee_dto.freezed.dart';
part 'ambee_dto.g.dart';

@freezed
class AmbeeDto with _$AmbeeDto {
  const factory AmbeeDto({
    String? message,
    double? lat,
    double? lng,
    List<ForecastEntryDto>? data,
  }) = _AmbeeDto;
  factory AmbeeDto.fromJson(Map<String, Object?> json) => _$AmbeeDtoFromJson(json);
}
