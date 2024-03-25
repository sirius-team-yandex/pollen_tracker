// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CityEntityImpl _$$CityEntityImplFromJson(Map<String, dynamic> json) =>
    _$CityEntityImpl(
      name: json['name'] as String,
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      country: json['country'] as String,
      id: json['id'] as int,
    );

Map<String, dynamic> _$$CityEntityImplToJson(_$CityEntityImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'lat': instance.lat,
      'lng': instance.lng,
      'country': instance.country,
      'id': instance.id,
    };
