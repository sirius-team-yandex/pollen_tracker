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
  SpeciesDto? get Species => throw _privateConstructorUsedError;
  RiscDto? get Risk => throw _privateConstructorUsedError;
  CountDto? get Count => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastEntryDtoCopyWith<ForecastEntryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastEntryDtoCopyWith<$Res> {
  factory $ForecastEntryDtoCopyWith(
          ForecastEntryDto value, $Res Function(ForecastEntryDto) then) =
      _$ForecastEntryDtoCopyWithImpl<$Res, ForecastEntryDto>;
  @useResult
  $Res call(
      {int? time,
      SpeciesDto? Species,
      RiscDto? Risk,
      CountDto? Count,
      String? updatedAt});

  $SpeciesDtoCopyWith<$Res>? get Species;
  $RiscDtoCopyWith<$Res>? get Risk;
  $CountDtoCopyWith<$Res>? get Count;
}

/// @nodoc
class _$ForecastEntryDtoCopyWithImpl<$Res, $Val extends ForecastEntryDto>
    implements $ForecastEntryDtoCopyWith<$Res> {
  _$ForecastEntryDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? Species = freezed,
    Object? Risk = freezed,
    Object? Count = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int?,
      Species: freezed == Species
          ? _value.Species
          : Species // ignore: cast_nullable_to_non_nullable
              as SpeciesDto?,
      Risk: freezed == Risk
          ? _value.Risk
          : Risk // ignore: cast_nullable_to_non_nullable
              as RiscDto?,
      Count: freezed == Count
          ? _value.Count
          : Count // ignore: cast_nullable_to_non_nullable
              as CountDto?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SpeciesDtoCopyWith<$Res>? get Species {
    if (_value.Species == null) {
      return null;
    }

    return $SpeciesDtoCopyWith<$Res>(_value.Species!, (value) {
      return _then(_value.copyWith(Species: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RiscDtoCopyWith<$Res>? get Risk {
    if (_value.Risk == null) {
      return null;
    }

    return $RiscDtoCopyWith<$Res>(_value.Risk!, (value) {
      return _then(_value.copyWith(Risk: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CountDtoCopyWith<$Res>? get Count {
    if (_value.Count == null) {
      return null;
    }

    return $CountDtoCopyWith<$Res>(_value.Count!, (value) {
      return _then(_value.copyWith(Count: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ForecastEntryDtoImplCopyWith<$Res>
    implements $ForecastEntryDtoCopyWith<$Res> {
  factory _$$ForecastEntryDtoImplCopyWith(_$ForecastEntryDtoImpl value,
          $Res Function(_$ForecastEntryDtoImpl) then) =
      __$$ForecastEntryDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? time,
      SpeciesDto? Species,
      RiscDto? Risk,
      CountDto? Count,
      String? updatedAt});

  @override
  $SpeciesDtoCopyWith<$Res>? get Species;
  @override
  $RiscDtoCopyWith<$Res>? get Risk;
  @override
  $CountDtoCopyWith<$Res>? get Count;
}

/// @nodoc
class __$$ForecastEntryDtoImplCopyWithImpl<$Res>
    extends _$ForecastEntryDtoCopyWithImpl<$Res, _$ForecastEntryDtoImpl>
    implements _$$ForecastEntryDtoImplCopyWith<$Res> {
  __$$ForecastEntryDtoImplCopyWithImpl(_$ForecastEntryDtoImpl _value,
      $Res Function(_$ForecastEntryDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? Species = freezed,
    Object? Risk = freezed,
    Object? Count = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ForecastEntryDtoImpl(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int?,
      Species: freezed == Species
          ? _value.Species
          : Species // ignore: cast_nullable_to_non_nullable
              as SpeciesDto?,
      Risk: freezed == Risk
          ? _value.Risk
          : Risk // ignore: cast_nullable_to_non_nullable
              as RiscDto?,
      Count: freezed == Count
          ? _value.Count
          : Count // ignore: cast_nullable_to_non_nullable
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
      {this.time, this.Species, this.Risk, this.Count, this.updatedAt});

  factory _$ForecastEntryDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastEntryDtoImplFromJson(json);

  @override
  final int? time;
  @override
  final SpeciesDto? Species;
  @override
  final RiscDto? Risk;
  @override
  final CountDto? Count;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'ForecastEntryDto(time: $time, Species: $Species, Risk: $Risk, Count: $Count, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastEntryDtoImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.Species, Species) || other.Species == Species) &&
            (identical(other.Risk, Risk) || other.Risk == Risk) &&
            (identical(other.Count, Count) || other.Count == Count) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, time, Species, Risk, Count, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastEntryDtoImplCopyWith<_$ForecastEntryDtoImpl> get copyWith =>
      __$$ForecastEntryDtoImplCopyWithImpl<_$ForecastEntryDtoImpl>(
          this, _$identity);

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
      final SpeciesDto? Species,
      final RiscDto? Risk,
      final CountDto? Count,
      final String? updatedAt}) = _$ForecastEntryDtoImpl;

  factory _ForecastEntryDto.fromJson(Map<String, dynamic> json) =
      _$ForecastEntryDtoImpl.fromJson;

  @override
  int? get time;
  @override
  SpeciesDto? get Species;
  @override
  RiscDto? get Risk;
  @override
  CountDto? get Count;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$ForecastEntryDtoImplCopyWith<_$ForecastEntryDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
