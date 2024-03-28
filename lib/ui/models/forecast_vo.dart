import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pollen_tracker/common/enums/risc_enum.dart';

part 'forecast_vo.freezed.dart';
part 'forecast_vo.g.dart';

@freezed
class ForecastVo with _$ForecastVo {
  const factory ForecastVo({
    required DateTime time,
    required RiscLevel level,
  }) = _ForecastVo;
  factory ForecastVo.fromJson(Map<String, Object?> json) => _$ForecastVoFromJson(json);
}
