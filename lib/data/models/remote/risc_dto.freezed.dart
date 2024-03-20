// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'risc_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RiscDto _$RiscDtoFromJson(Map<String, dynamic> json) {
  return _RiscDto.fromJson(json);
}

/// @nodoc
mixin _$RiscDto {
  String? get grass_pollen => throw _privateConstructorUsedError;
  String? get tree_pollen => throw _privateConstructorUsedError;
  String? get weed_pollen => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RiscDtoCopyWith<RiscDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RiscDtoCopyWith<$Res> {
  factory $RiscDtoCopyWith(RiscDto value, $Res Function(RiscDto) then) =
      _$RiscDtoCopyWithImpl<$Res, RiscDto>;
  @useResult
  $Res call({String? grass_pollen, String? tree_pollen, String? weed_pollen});
}

/// @nodoc
class _$RiscDtoCopyWithImpl<$Res, $Val extends RiscDto>
    implements $RiscDtoCopyWith<$Res> {
  _$RiscDtoCopyWithImpl(this._value, this._then);

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
              as String?,
      tree_pollen: freezed == tree_pollen
          ? _value.tree_pollen
          : tree_pollen // ignore: cast_nullable_to_non_nullable
              as String?,
      weed_pollen: freezed == weed_pollen
          ? _value.weed_pollen
          : weed_pollen // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RiscDtoImplCopyWith<$Res> implements $RiscDtoCopyWith<$Res> {
  factory _$$RiscDtoImplCopyWith(
          _$RiscDtoImpl value, $Res Function(_$RiscDtoImpl) then) =
      __$$RiscDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? grass_pollen, String? tree_pollen, String? weed_pollen});
}

/// @nodoc
class __$$RiscDtoImplCopyWithImpl<$Res>
    extends _$RiscDtoCopyWithImpl<$Res, _$RiscDtoImpl>
    implements _$$RiscDtoImplCopyWith<$Res> {
  __$$RiscDtoImplCopyWithImpl(
      _$RiscDtoImpl _value, $Res Function(_$RiscDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grass_pollen = freezed,
    Object? tree_pollen = freezed,
    Object? weed_pollen = freezed,
  }) {
    return _then(_$RiscDtoImpl(
      grass_pollen: freezed == grass_pollen
          ? _value.grass_pollen
          : grass_pollen // ignore: cast_nullable_to_non_nullable
              as String?,
      tree_pollen: freezed == tree_pollen
          ? _value.tree_pollen
          : tree_pollen // ignore: cast_nullable_to_non_nullable
              as String?,
      weed_pollen: freezed == weed_pollen
          ? _value.weed_pollen
          : weed_pollen // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RiscDtoImpl implements _RiscDto {
  const _$RiscDtoImpl({this.grass_pollen, this.tree_pollen, this.weed_pollen});

  factory _$RiscDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RiscDtoImplFromJson(json);

  @override
  final String? grass_pollen;
  @override
  final String? tree_pollen;
  @override
  final String? weed_pollen;

  @override
  String toString() {
    return 'RiscDto(grass_pollen: $grass_pollen, tree_pollen: $tree_pollen, weed_pollen: $weed_pollen)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RiscDtoImpl &&
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
  _$$RiscDtoImplCopyWith<_$RiscDtoImpl> get copyWith =>
      __$$RiscDtoImplCopyWithImpl<_$RiscDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RiscDtoImplToJson(
      this,
    );
  }
}

abstract class _RiscDto implements RiscDto {
  const factory _RiscDto(
      {final String? grass_pollen,
      final String? tree_pollen,
      final String? weed_pollen}) = _$RiscDtoImpl;

  factory _RiscDto.fromJson(Map<String, dynamic> json) = _$RiscDtoImpl.fromJson;

  @override
  String? get grass_pollen;
  @override
  String? get tree_pollen;
  @override
  String? get weed_pollen;
  @override
  @JsonKey(ignore: true)
  _$$RiscDtoImplCopyWith<_$RiscDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
