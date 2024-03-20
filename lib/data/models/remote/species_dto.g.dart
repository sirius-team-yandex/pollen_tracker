// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'species_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpeciesDtoImpl _$$SpeciesDtoImplFromJson(Map<String, dynamic> json) =>
    _$SpeciesDtoImpl(
      Grass: (json['Grass'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as int?),
      ),
      Others: json['Others'] as int?,
      Tree: (json['Tree'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as int?),
      ),
      Weed: (json['Weed'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as int?),
      ),
    );

Map<String, dynamic> _$$SpeciesDtoImplToJson(_$SpeciesDtoImpl instance) =>
    <String, dynamic>{
      'Grass': instance.Grass,
      'Others': instance.Others,
      'Tree': instance.Tree,
      'Weed': instance.Weed,
    };
