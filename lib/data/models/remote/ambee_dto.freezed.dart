// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ambee_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AmbeeDto _$AmbeeDtoFromJson(Map<String, dynamic> json) {
  return _AmbeeDto.fromJson(json);
}

/// @nodoc
mixin _$AmbeeDto {
  String? get message => throw _privateConstructorUsedError;
  double? get lat => throw _privateConstructorUsedError;
  double? get lng => throw _privateConstructorUsedError;
  List<ForecastEntryDto>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AmbeeDtoCopyWith<AmbeeDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AmbeeDtoCopyWith<$Res> {
  factory $AmbeeDtoCopyWith(AmbeeDto value, $Res Function(AmbeeDto) then) = _$AmbeeDtoCopyWithImpl<$Res, AmbeeDto>;
  @useResult
  $Res call({String? message, double? lat, double? lng, List<ForecastEntryDto>? data});
}

/// @nodoc
class _$AmbeeDtoCopyWithImpl<$Res, $Val extends AmbeeDto> implements $AmbeeDtoCopyWith<$Res> {
  _$AmbeeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ForecastEntryDto>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AmbeeDtoImplCopyWith<$Res> implements $AmbeeDtoCopyWith<$Res> {
  factory _$$AmbeeDtoImplCopyWith(_$AmbeeDtoImpl value, $Res Function(_$AmbeeDtoImpl) then) =
      __$$AmbeeDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, double? lat, double? lng, List<ForecastEntryDto>? data});
}

/// @nodoc
class __$$AmbeeDtoImplCopyWithImpl<$Res> extends _$AmbeeDtoCopyWithImpl<$Res, _$AmbeeDtoImpl>
    implements _$$AmbeeDtoImplCopyWith<$Res> {
  __$$AmbeeDtoImplCopyWithImpl(_$AmbeeDtoImpl _value, $Res Function(_$AmbeeDtoImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? data = freezed,
  }) {
    return _then(_$AmbeeDtoImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ForecastEntryDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AmbeeDtoImpl with DiagnosticableTreeMixin implements _AmbeeDto {
  const _$AmbeeDtoImpl({this.message, this.lat, this.lng, final List<ForecastEntryDto>? data}) : _data = data;

  factory _$AmbeeDtoImpl.fromJson(Map<String, dynamic> json) => _$$AmbeeDtoImplFromJson(json);

  @override
  final String? message;
  @override
  final double? lat;
  @override
  final double? lng;
  final List<ForecastEntryDto>? _data;
  @override
  List<ForecastEntryDto>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AmbeeDto(message: $message, lat: $lat, lng: $lng, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AmbeeDto'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('lat', lat))
      ..add(DiagnosticsProperty('lng', lng))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AmbeeDtoImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, lat, lng, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AmbeeDtoImplCopyWith<_$AmbeeDtoImpl> get copyWith =>
      __$$AmbeeDtoImplCopyWithImpl<_$AmbeeDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AmbeeDtoImplToJson(
      this,
    );
  }
}

abstract class _AmbeeDto implements AmbeeDto {
  const factory _AmbeeDto(
      {final String? message,
      final double? lat,
      final double? lng,
      final List<ForecastEntryDto>? data}) = _$AmbeeDtoImpl;

  factory _AmbeeDto.fromJson(Map<String, dynamic> json) = _$AmbeeDtoImpl.fromJson;

  @override
  String? get message;
  @override
  double? get lat;
  @override
  double? get lng;
  @override
  List<ForecastEntryDto>? get data;
  @override
  @JsonKey(ignore: true)
  _$$AmbeeDtoImplCopyWith<_$AmbeeDtoImpl> get copyWith => throw _privateConstructorUsedError;
}
