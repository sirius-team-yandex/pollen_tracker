// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pollen_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PollenEntity {
  DateTime get time => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;
  Map<Species, int> get levels => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PollenEntityCopyWith<PollenEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PollenEntityCopyWith<$Res> {
  factory $PollenEntityCopyWith(
          PollenEntity value, $Res Function(PollenEntity) then) =
      _$PollenEntityCopyWithImpl<$Res, PollenEntity>;
  @useResult
  $Res call({DateTime time, double lat, double lng, Map<Species, int> levels});
}

/// @nodoc
class _$PollenEntityCopyWithImpl<$Res, $Val extends PollenEntity>
    implements $PollenEntityCopyWith<$Res> {
  _$PollenEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? lat = null,
    Object? lng = null,
    Object? levels = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      levels: null == levels
          ? _value.levels
          : levels // ignore: cast_nullable_to_non_nullable
              as Map<Species, int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PollenEntityImplCopyWith<$Res>
    implements $PollenEntityCopyWith<$Res> {
  factory _$$PollenEntityImplCopyWith(
          _$PollenEntityImpl value, $Res Function(_$PollenEntityImpl) then) =
      __$$PollenEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime time, double lat, double lng, Map<Species, int> levels});
}

/// @nodoc
class __$$PollenEntityImplCopyWithImpl<$Res>
    extends _$PollenEntityCopyWithImpl<$Res, _$PollenEntityImpl>
    implements _$$PollenEntityImplCopyWith<$Res> {
  __$$PollenEntityImplCopyWithImpl(
      _$PollenEntityImpl _value, $Res Function(_$PollenEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? lat = null,
    Object? lng = null,
    Object? levels = null,
  }) {
    return _then(_$PollenEntityImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      levels: null == levels
          ? _value._levels
          : levels // ignore: cast_nullable_to_non_nullable
              as Map<Species, int>,
    ));
  }
}

/// @nodoc

class _$PollenEntityImpl with DiagnosticableTreeMixin implements _PollenEntity {
  const _$PollenEntityImpl(
      {required this.time,
      required this.lat,
      required this.lng,
      required final Map<Species, int> levels})
      : _levels = levels;

  @override
  final DateTime time;
  @override
  final double lat;
  @override
  final double lng;
  final Map<Species, int> _levels;
  @override
  Map<Species, int> get levels {
    if (_levels is EqualUnmodifiableMapView) return _levels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_levels);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PollenEntity(time: $time, lat: $lat, lng: $lng, levels: $levels)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PollenEntity'))
      ..add(DiagnosticsProperty('time', time))
      ..add(DiagnosticsProperty('lat', lat))
      ..add(DiagnosticsProperty('lng', lng))
      ..add(DiagnosticsProperty('levels', levels));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PollenEntityImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            const DeepCollectionEquality().equals(other._levels, _levels));
  }

  @override
  int get hashCode => Object.hash(runtimeType, time, lat, lng,
      const DeepCollectionEquality().hash(_levels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PollenEntityImplCopyWith<_$PollenEntityImpl> get copyWith =>
      __$$PollenEntityImplCopyWithImpl<_$PollenEntityImpl>(this, _$identity);
}

abstract class _PollenEntity implements PollenEntity {
  const factory _PollenEntity(
      {required final DateTime time,
      required final double lat,
      required final double lng,
      required final Map<Species, int> levels}) = _$PollenEntityImpl;

  @override
  DateTime get time;
  @override
  double get lat;
  @override
  double get lng;
  @override
  Map<Species, int> get levels;
  @override
  @JsonKey(ignore: true)
  _$$PollenEntityImplCopyWith<_$PollenEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
