import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_model.freezed.dart';
part 'city_model.g.dart';

@freezed
class CityModel with _$CityModel {
    const factory CityModel(
        {params}) = _CityModel;
    factory CityModel.fromJson(Map<String, Object?> json) => _$CityModelFromJson(json);
}
