// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_entry_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForecastEntryDtoImpl _$$ForecastEntryDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ForecastEntryDtoImpl(
      time: json['time'] as int?,
      Species: json['Species'] == null
          ? null
          : SpeciesDto.fromJson(json['Species'] as Map<String, dynamic>),
      Risk: json['Risk'] == null
          ? null
          : RiscDto.fromJson(json['Risk'] as Map<String, dynamic>),
      Count: json['Count'] == null
          ? null
          : CountDto.fromJson(json['Count'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$ForecastEntryDtoImplToJson(
        _$ForecastEntryDtoImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'Species': instance.Species,
      'Risk': instance.Risk,
      'Count': instance.Count,
      'updatedAt': instance.updatedAt,
    };
