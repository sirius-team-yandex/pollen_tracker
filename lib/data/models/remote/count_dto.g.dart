// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'count_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountDtoImpl _$$CountDtoImplFromJson(Map<String, dynamic> json) =>
    _$CountDtoImpl(
      grassPollen: json['grass_pollen'] as int?,
      treePollen: json['tree_pollen'] as int?,
      weedPollen: json['weed_pollen'] as int?,
    );

Map<String, dynamic> _$$CountDtoImplToJson(_$CountDtoImpl instance) =>
    <String, dynamic>{
      'grass_pollen': instance.grassPollen,
      'tree_pollen': instance.treePollen,
      'weed_pollen': instance.weedPollen,
    };
