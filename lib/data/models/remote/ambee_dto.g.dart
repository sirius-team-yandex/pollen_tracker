// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ambee_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AmbeeDtoImpl _$$AmbeeDtoImplFromJson(Map<String, dynamic> json) => _$AmbeeDtoImpl(
      message: json['message'] as String?,
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
      data: (json['data'] as List<dynamic>?)?.map((e) => ForecastEntryDto.fromJson(e as Map<String, dynamic>)).toList(),
    );

Map<String, dynamic> _$$AmbeeDtoImplToJson(_$AmbeeDtoImpl instance) => <String, dynamic>{
      'message': instance.message,
      'lat': instance.lat,
      'lng': instance.lng,
      'data': instance.data,
    };
