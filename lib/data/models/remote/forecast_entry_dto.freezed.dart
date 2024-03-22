// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_entry_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ForecastEntryDto _$ForecastEntryDtoFromJson(Map<String, dynamic> json) {
  return _ForecastEntryDto.fromJson(json);
}

/// @nodoc
mixin _$ForecastEntryDto {
  int? get time => throw _privateConstructorUsedError;
  @JsonKey(name: 'Species')
  SpeciesDto? get species => throw _privateConstructorUsedError;
  @JsonKey(name: 'Risc')
  RiscDto? get risk => throw _privateConstructorUsedError;
  @JsonKey(name: 'Count')
  CountDto? get count => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastEntryDtoCopyWith<ForecastEntryDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastEntryDtoCopyWith<$Res> {
  factory $ForecastEntryDtoCopyWith(ForecastEntryDto value, $Res Function(ForecastEntryDto) then) =
      _$ForecastEntryDtoCopyWithImpl<$Res, ForecastEntryDto>;
  @useResult
  $Res call(
      {int? time,
      @JsonKey(name: 'Species') SpeciesDto? species,
      @JsonKey(name: 'Risc') RiscDto? risk,
      @JsonKey(name: 'Count') CountDto? count,
      String? updatedAt});

  $SpeciesDtoCopyWith<$Res>? get species;
  $RiscDtoCopyWith<$Res>? get risk;
  $CountDtoCopyWith<$Res>? get count;
}

/// @nodoc
class _$ForecastEntryDtoCopyWithImpl<$Res, $Val extends ForecastEntryDto> implements $ForecastEntryDtoCopyWith<$Res> {
  _$ForecastEntryDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? species = freezed,
    Object? risk = freezed,
    Object? count = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int?,
      species: freezed == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as SpeciesDto?,
      risk: freezed == risk
          ? _value.risk
          : risk // ignore: cast_nullable_to_non_nullable
              as RiscDto?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as CountDto?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SpeciesDtoCopyWith<$Res>? get species {
    if (_value.species == null) {
      return null;
    }

    return $SpeciesDtoCopyWith<$Res>(_value.species!, (value) {
      return _then(_value.copyWith(species: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RiscDtoCopyWith<$Res>? get risk {
    if (_value.risk == null) {
      return null;
    }

    return $RiscDtoCopyWith<$Res>(_value.risk!, (value) {
      return _then(_value.copyWith(risk: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CountDtoCopyWith<$Res>? get count {
    if (_value.count == null) {
      return null;
    }

    return $CountDtoCopyWith<$Res>(_value.count!, (value) {
      return _then(_value.copyWith(count: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ForecastEntryDtoImplCopyWith<$Res> implements $ForecastEntryDtoCopyWith<$Res> {
  factory _$$ForecastEntryDtoImplCopyWith(_$ForecastEntryDtoImpl value, $Res Function(_$ForecastEntryDtoImpl) then) =
      __$$ForecastEntryDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? time,
      @JsonKey(name: 'Species') SpeciesDto? species,
      @JsonKey(name: 'Risc') RiscDto? risk,
      @JsonKey(name: 'Count') CountDto? count,
      String? updatedAt});

  @override
  $SpeciesDtoCopyWith<$Res>? get species;
  @override
  $RiscDtoCopyWith<$Res>? get risk;
  @override
  $CountDtoCopyWith<$Res>? get count;
}

/// @nodoc
class __$$ForecastEntryDtoImplCopyWithImpl<$Res> extends _$ForecastEntryDtoCopyWithImpl<$Res, _$ForecastEntryDtoImpl>
    implements _$$ForecastEntryDtoImplCopyWith<$Res> {
  __$$ForecastEntryDtoImplCopyWithImpl(_$ForecastEntryDtoImpl _value, $Res Function(_$ForecastEntryDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? species = freezed,
    Object? risk = freezed,
    Object? count = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ForecastEntryDtoImpl(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int?,
      species: freezed == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as SpeciesDto?,
      risk: freezed == risk
          ? _value.risk
          : risk // ignore: cast_nullable_to_non_nullable
              as RiscDto?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as CountDto?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForecastEntryDtoImpl implements _ForecastEntryDto {
  const _$ForecastEntryDtoImpl(
      {this.time,
      @JsonKey(name: 'Species') this.species,
      @JsonKey(name: 'Risc') this.risk,
      @JsonKey(name: 'Count') this.count,
      this.updatedAt});

  factory _$ForecastEntryDtoImpl.fromJson(Map<String, dynamic> json) => _$$ForecastEntryDtoImplFromJson(json);

  @override
  final int? time;
  @override
  @JsonKey(name: 'Species')
  final SpeciesDto? species;
  @override
  @JsonKey(name: 'Risc')
  final RiscDto? risk;
  @override
  @JsonKey(name: 'Count')
  final CountDto? count;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'ForecastEntryDto(time: $time, species: $species, risk: $risk, count: $count, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastEntryDtoImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.species, species) || other.species == species) &&
            (identical(other.risk, risk) || other.risk == risk) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, time, species, risk, count, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastEntryDtoImplCopyWith<_$ForecastEntryDtoImpl> get copyWith =>
      __$$ForecastEntryDtoImplCopyWithImpl<_$ForecastEntryDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastEntryDtoImplToJson(
      this,
    );
  }
}

abstract class _ForecastEntryDto implements ForecastEntryDto {
  const factory _ForecastEntryDto(
      {final int? time,
      @JsonKey(name: 'Species') final SpeciesDto? species,
      @JsonKey(name: 'Risc') final RiscDto? risk,
      @JsonKey(name: 'Count') final CountDto? count,
      final String? updatedAt}) = _$ForecastEntryDtoImpl;

  factory _ForecastEntryDto.fromJson(Map<String, dynamic> json) = _$ForecastEntryDtoImpl.fromJson;

  @override
  int? get time;
  @override
  @JsonKey(name: 'Species')
  SpeciesDto? get species;
  @override
  @JsonKey(name: 'Risc')
  RiscDto? get risk;
  @override
  @JsonKey(name: 'Count')
  CountDto? get count;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$ForecastEntryDtoImplCopyWith<_$ForecastEntryDtoImpl> get copyWith => throw _privateConstructorUsedError;
}
