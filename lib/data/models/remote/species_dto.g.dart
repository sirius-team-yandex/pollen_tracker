// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'species_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpeciesDtoImpl _$$SpeciesDtoImplFromJson(Map<String, dynamic> json) =>
    _$SpeciesDtoImpl(
      grass: (json['Grass'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as int?),
      ),
      others: json['Others'] as int?,
      tree: (json['Tree'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as int?),
      ),
      weed: (json['Weed'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as int?),
      ),
    );

Map<String, dynamic> _$$SpeciesDtoImplToJson(_$SpeciesDtoImpl instance) =>
    <String, dynamic>{
      'Grass': instance.grass,
      'Others': instance.others,
      'Tree': instance.tree,
      'Weed': instance.weed,
    };
