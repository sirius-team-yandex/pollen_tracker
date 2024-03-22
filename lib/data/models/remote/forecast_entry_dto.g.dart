// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_entry_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForecastEntryDtoImpl _$$ForecastEntryDtoImplFromJson(Map<String, dynamic> json) => _$ForecastEntryDtoImpl(
      time: json['time'] as int?,
      species: json['Species'] == null ? null : SpeciesDto.fromJson(json['Species'] as Map<String, dynamic>),
      risk: json['Risc'] == null ? null : RiscDto.fromJson(json['Risc'] as Map<String, dynamic>),
      count: json['Count'] == null ? null : CountDto.fromJson(json['Count'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$ForecastEntryDtoImplToJson(_$ForecastEntryDtoImpl instance) => <String, dynamic>{
      'time': instance.time,
      'Species': instance.species,
      'Risc': instance.risk,
      'Count': instance.count,
      'updatedAt': instance.updatedAt,
    };
