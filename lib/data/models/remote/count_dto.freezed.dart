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
  @JsonKey(name: 'grass_pollen')
  int? get grassPollen => throw _privateConstructorUsedError;
  @JsonKey(name: 'tree_pollen')
  int? get treePollen => throw _privateConstructorUsedError;
  @JsonKey(name: 'weed_pollen')
  int? get weedPollen => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountDtoCopyWith<CountDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountDtoCopyWith<$Res> {
  factory $CountDtoCopyWith(CountDto value, $Res Function(CountDto) then) = _$CountDtoCopyWithImpl<$Res, CountDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'grass_pollen') int? grassPollen,
      @JsonKey(name: 'tree_pollen') int? treePollen,
      @JsonKey(name: 'weed_pollen') int? weedPollen});
}

/// @nodoc
class _$CountDtoCopyWithImpl<$Res, $Val extends CountDto> implements $CountDtoCopyWith<$Res> {
  _$CountDtoCopyWithImpl(this._value, this._then);

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
              as int?,
      treePollen: freezed == treePollen
          ? _value.treePollen
          : treePollen // ignore: cast_nullable_to_non_nullable
              as int?,
      weedPollen: freezed == weedPollen
          ? _value.weedPollen
          : weedPollen // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountDtoImplCopyWith<$Res> implements $CountDtoCopyWith<$Res> {
  factory _$$CountDtoImplCopyWith(_$CountDtoImpl value, $Res Function(_$CountDtoImpl) then) =
      __$$CountDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'grass_pollen') int? grassPollen,
      @JsonKey(name: 'tree_pollen') int? treePollen,
      @JsonKey(name: 'weed_pollen') int? weedPollen});
}

/// @nodoc
class __$$CountDtoImplCopyWithImpl<$Res> extends _$CountDtoCopyWithImpl<$Res, _$CountDtoImpl>
    implements _$$CountDtoImplCopyWith<$Res> {
  __$$CountDtoImplCopyWithImpl(_$CountDtoImpl _value, $Res Function(_$CountDtoImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grassPollen = freezed,
    Object? treePollen = freezed,
    Object? weedPollen = freezed,
  }) {
    return _then(_$CountDtoImpl(
      grassPollen: freezed == grassPollen
          ? _value.grassPollen
          : grassPollen // ignore: cast_nullable_to_non_nullable
              as int?,
      treePollen: freezed == treePollen
          ? _value.treePollen
          : treePollen // ignore: cast_nullable_to_non_nullable
              as int?,
      weedPollen: freezed == weedPollen
          ? _value.weedPollen
          : weedPollen // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CountDtoImpl implements _CountDto {
  const _$CountDtoImpl(
      {@JsonKey(name: 'grass_pollen') this.grassPollen,
      @JsonKey(name: 'tree_pollen') this.treePollen,
      @JsonKey(name: 'weed_pollen') this.weedPollen});

  factory _$CountDtoImpl.fromJson(Map<String, dynamic> json) => _$$CountDtoImplFromJson(json);

  @override
  @JsonKey(name: 'grass_pollen')
  final int? grassPollen;
  @override
  @JsonKey(name: 'tree_pollen')
  final int? treePollen;
  @override
  @JsonKey(name: 'weed_pollen')
  final int? weedPollen;

  @override
  String toString() {
    return 'CountDto(grassPollen: $grassPollen, treePollen: $treePollen, weedPollen: $weedPollen)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountDtoImpl &&
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
      {@JsonKey(name: 'grass_pollen') final int? grassPollen,
      @JsonKey(name: 'tree_pollen') final int? treePollen,
      @JsonKey(name: 'weed_pollen') final int? weedPollen}) = _$CountDtoImpl;

  factory _CountDto.fromJson(Map<String, dynamic> json) = _$CountDtoImpl.fromJson;

  @override
  @JsonKey(name: 'grass_pollen')
  int? get grassPollen;
  @override
  @JsonKey(name: 'tree_pollen')
  int? get treePollen;
  @override
  @JsonKey(name: 'weed_pollen')
  int? get weedPollen;
  @override
  @JsonKey(ignore: true)
  _$$CountDtoImplCopyWith<_$CountDtoImpl> get copyWith => throw _privateConstructorUsedError;
}
