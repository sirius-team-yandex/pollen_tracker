// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'count_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CountDto _$CountDtoFromJson(Map<String, dynamic> json) {
  return _CountDto.fromJson(json);
}

/// @nodoc
mixin _$CountDto {
  int? get grass_pollen => throw _privateConstructorUsedError;
  int? get tree_pollen => throw _privateConstructorUsedError;
  int? get weed_pollen => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountDtoCopyWith<CountDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountDtoCopyWith<$Res> {
  factory $CountDtoCopyWith(CountDto value, $Res Function(CountDto) then) =
      _$CountDtoCopyWithImpl<$Res, CountDto>;
  @useResult
  $Res call({int? grass_pollen, int? tree_pollen, int? weed_pollen});
}

/// @nodoc
class _$CountDtoCopyWithImpl<$Res, $Val extends CountDto>
    implements $CountDtoCopyWith<$Res> {
  _$CountDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grass_pollen = freezed,
    Object? tree_pollen = freezed,
    Object? weed_pollen = freezed,
  }) {
    return _then(_value.copyWith(
      grass_pollen: freezed == grass_pollen
          ? _value.grass_pollen
          : grass_pollen // ignore: cast_nullable_to_non_nullable
              as int?,
      tree_pollen: freezed == tree_pollen
          ? _value.tree_pollen
          : tree_pollen // ignore: cast_nullable_to_non_nullable
              as int?,
      weed_pollen: freezed == weed_pollen
          ? _value.weed_pollen
          : weed_pollen // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountDtoImplCopyWith<$Res>
    implements $CountDtoCopyWith<$Res> {
  factory _$$CountDtoImplCopyWith(
          _$CountDtoImpl value, $Res Function(_$CountDtoImpl) then) =
      __$$CountDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? grass_pollen, int? tree_pollen, int? weed_pollen});
}

/// @nodoc
class __$$CountDtoImplCopyWithImpl<$Res>
    extends _$CountDtoCopyWithImpl<$Res, _$CountDtoImpl>
    implements _$$CountDtoImplCopyWith<$Res> {
  __$$CountDtoImplCopyWithImpl(
      _$CountDtoImpl _value, $Res Function(_$CountDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grass_pollen = freezed,
    Object? tree_pollen = freezed,
    Object? weed_pollen = freezed,
  }) {
    return _then(_$CountDtoImpl(
      grass_pollen: freezed == grass_pollen
          ? _value.grass_pollen
          : grass_pollen // ignore: cast_nullable_to_non_nullable
              as int?,
      tree_pollen: freezed == tree_pollen
          ? _value.tree_pollen
          : tree_pollen // ignore: cast_nullable_to_non_nullable
              as int?,
      weed_pollen: freezed == weed_pollen
          ? _value.weed_pollen
          : weed_pollen // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CountDtoImpl implements _CountDto {
  const _$CountDtoImpl({this.grass_pollen, this.tree_pollen, this.weed_pollen});

  factory _$CountDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountDtoImplFromJson(json);

  @override
  final int? grass_pollen;
  @override
  final int? tree_pollen;
  @override
  final int? weed_pollen;

  @override
  String toString() {
    return 'CountDto(grass_pollen: $grass_pollen, tree_pollen: $tree_pollen, weed_pollen: $weed_pollen)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountDtoImpl &&
            (identical(other.grass_pollen, grass_pollen) ||
                other.grass_pollen == grass_pollen) &&
            (identical(other.tree_pollen, tree_pollen) ||
                other.tree_pollen == tree_pollen) &&
            (identical(other.weed_pollen, weed_pollen) ||
                other.weed_pollen == weed_pollen));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, grass_pollen, tree_pollen, weed_pollen);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountDtoImplCopyWith<_$CountDtoImpl> get copyWith =>
      __$$CountDtoImplCopyWithImpl<_$CountDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountDtoImplToJson(
      this,
    );
  }
}

abstract class _CountDto implements CountDto {
  const factory _CountDto(
      {final int? grass_pollen,
      final int? tree_pollen,
      final int? weed_pollen}) = _$CountDtoImpl;

  factory _CountDto.fromJson(Map<String, dynamic> json) =
      _$CountDtoImpl.fromJson;

  @override
  int? get grass_pollen;
  @override
  int? get tree_pollen;
  @override
  int? get weed_pollen;
  @override
  @JsonKey(ignore: true)
  _$$CountDtoImplCopyWith<_$CountDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
