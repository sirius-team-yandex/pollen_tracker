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
  @JsonKey(name: 'grass_pollen')
  String? get grassPollen => throw _privateConstructorUsedError;
  @JsonKey(name: 'tree_pollen')
  String? get treePollen => throw _privateConstructorUsedError;
  @JsonKey(name: 'weed_pollen')
  String? get weedPollen => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RiscDtoCopyWith<RiscDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RiscDtoCopyWith<$Res> {
  factory $RiscDtoCopyWith(RiscDto value, $Res Function(RiscDto) then) = _$RiscDtoCopyWithImpl<$Res, RiscDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'grass_pollen') String? grassPollen,
      @JsonKey(name: 'tree_pollen') String? treePollen,
      @JsonKey(name: 'weed_pollen') String? weedPollen});
}

/// @nodoc
class _$RiscDtoCopyWithImpl<$Res, $Val extends RiscDto> implements $RiscDtoCopyWith<$Res> {
  _$RiscDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grassPollen = freezed,
    Object? treePollen = freezed,
    Object? weedPollen = freezed,
  }) {
    return _then(_value.copyWith(
      grassPollen: freezed == grassPollen
          ? _value.grassPollen
          : grassPollen // ignore: cast_nullable_to_non_nullable
              as String?,
      treePollen: freezed == treePollen
          ? _value.treePollen
          : treePollen // ignore: cast_nullable_to_non_nullable
              as String?,
      weedPollen: freezed == weedPollen
          ? _value.weedPollen
          : weedPollen // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RiscDtoImplCopyWith<$Res> implements $RiscDtoCopyWith<$Res> {
  factory _$$RiscDtoImplCopyWith(_$RiscDtoImpl value, $Res Function(_$RiscDtoImpl) then) =
      __$$RiscDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'grass_pollen') String? grassPollen,
      @JsonKey(name: 'tree_pollen') String? treePollen,
      @JsonKey(name: 'weed_pollen') String? weedPollen});
}

/// @nodoc
class __$$RiscDtoImplCopyWithImpl<$Res> extends _$RiscDtoCopyWithImpl<$Res, _$RiscDtoImpl>
    implements _$$RiscDtoImplCopyWith<$Res> {
  __$$RiscDtoImplCopyWithImpl(_$RiscDtoImpl _value, $Res Function(_$RiscDtoImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grassPollen = freezed,
    Object? treePollen = freezed,
    Object? weedPollen = freezed,
  }) {
    return _then(_$RiscDtoImpl(
      grassPollen: freezed == grassPollen
          ? _value.grassPollen
          : grassPollen // ignore: cast_nullable_to_non_nullable
              as String?,
      treePollen: freezed == treePollen
          ? _value.treePollen
          : treePollen // ignore: cast_nullable_to_non_nullable
              as String?,
      weedPollen: freezed == weedPollen
          ? _value.weedPollen
          : weedPollen // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RiscDtoImpl implements _RiscDto {
  const _$RiscDtoImpl(
      {@JsonKey(name: 'grass_pollen') this.grassPollen,
      @JsonKey(name: 'tree_pollen') this.treePollen,
      @JsonKey(name: 'weed_pollen') this.weedPollen});

  factory _$RiscDtoImpl.fromJson(Map<String, dynamic> json) => _$$RiscDtoImplFromJson(json);

  @override
  @JsonKey(name: 'grass_pollen')
  final String? grassPollen;
  @override
  @JsonKey(name: 'tree_pollen')
  final String? treePollen;
  @override
  @JsonKey(name: 'weed_pollen')
  final String? weedPollen;

  @override
  String toString() {
    return 'RiscDto(grassPollen: $grassPollen, treePollen: $treePollen, weedPollen: $weedPollen)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RiscDtoImpl &&
            (identical(other.grassPollen, grassPollen) || other.grassPollen == grassPollen) &&
            (identical(other.treePollen, treePollen) || other.treePollen == treePollen) &&
            (identical(other.weedPollen, weedPollen) || other.weedPollen == weedPollen));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, grassPollen, treePollen, weedPollen);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RiscDtoImplCopyWith<_$RiscDtoImpl> get copyWith => __$$RiscDtoImplCopyWithImpl<_$RiscDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RiscDtoImplToJson(
      this,
    );
  }
}

abstract class _RiscDto implements RiscDto {
  const factory _RiscDto(
      {@JsonKey(name: 'grass_pollen') final String? grassPollen,
      @JsonKey(name: 'tree_pollen') final String? treePollen,
      @JsonKey(name: 'weed_pollen') final String? weedPollen}) = _$RiscDtoImpl;

  factory _RiscDto.fromJson(Map<String, dynamic> json) = _$RiscDtoImpl.fromJson;

  @override
  @JsonKey(name: 'grass_pollen')
  String? get grassPollen;
  @override
  @JsonKey(name: 'tree_pollen')
  String? get treePollen;
  @override
  @JsonKey(name: 'weed_pollen')
  String? get weedPollen;
  @override
  @JsonKey(ignore: true)
  _$$RiscDtoImplCopyWith<_$RiscDtoImpl> get copyWith => throw _privateConstructorUsedError;
}
