// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'species_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SpeciesDto _$SpeciesDtoFromJson(Map<String, dynamic> json) {
  return _SpeciesDto.fromJson(json);
}

/// @nodoc
mixin _$SpeciesDto {
  Map<String, int?>? get Grass => throw _privateConstructorUsedError;
  int? get Others => throw _privateConstructorUsedError;
  Map<String, int?>? get Tree => throw _privateConstructorUsedError;
  Map<String, int?>? get Weed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpeciesDtoCopyWith<SpeciesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpeciesDtoCopyWith<$Res> {
  factory $SpeciesDtoCopyWith(
          SpeciesDto value, $Res Function(SpeciesDto) then) =
      _$SpeciesDtoCopyWithImpl<$Res, SpeciesDto>;
  @useResult
  $Res call(
      {Map<String, int?>? Grass,
      int? Others,
      Map<String, int?>? Tree,
      Map<String, int?>? Weed});
}

/// @nodoc
class _$SpeciesDtoCopyWithImpl<$Res, $Val extends SpeciesDto>
    implements $SpeciesDtoCopyWith<$Res> {
  _$SpeciesDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Grass = freezed,
    Object? Others = freezed,
    Object? Tree = freezed,
    Object? Weed = freezed,
  }) {
    return _then(_value.copyWith(
      Grass: freezed == Grass
          ? _value.Grass
          : Grass // ignore: cast_nullable_to_non_nullable
              as Map<String, int?>?,
      Others: freezed == Others
          ? _value.Others
          : Others // ignore: cast_nullable_to_non_nullable
              as int?,
      Tree: freezed == Tree
          ? _value.Tree
          : Tree // ignore: cast_nullable_to_non_nullable
              as Map<String, int?>?,
      Weed: freezed == Weed
          ? _value.Weed
          : Weed // ignore: cast_nullable_to_non_nullable
              as Map<String, int?>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpeciesDtoImplCopyWith<$Res>
    implements $SpeciesDtoCopyWith<$Res> {
  factory _$$SpeciesDtoImplCopyWith(
          _$SpeciesDtoImpl value, $Res Function(_$SpeciesDtoImpl) then) =
      __$$SpeciesDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, int?>? Grass,
      int? Others,
      Map<String, int?>? Tree,
      Map<String, int?>? Weed});
}

/// @nodoc
class __$$SpeciesDtoImplCopyWithImpl<$Res>
    extends _$SpeciesDtoCopyWithImpl<$Res, _$SpeciesDtoImpl>
    implements _$$SpeciesDtoImplCopyWith<$Res> {
  __$$SpeciesDtoImplCopyWithImpl(
      _$SpeciesDtoImpl _value, $Res Function(_$SpeciesDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Grass = freezed,
    Object? Others = freezed,
    Object? Tree = freezed,
    Object? Weed = freezed,
  }) {
    return _then(_$SpeciesDtoImpl(
      Grass: freezed == Grass
          ? _value._Grass
          : Grass // ignore: cast_nullable_to_non_nullable
              as Map<String, int?>?,
      Others: freezed == Others
          ? _value.Others
          : Others // ignore: cast_nullable_to_non_nullable
              as int?,
      Tree: freezed == Tree
          ? _value._Tree
          : Tree // ignore: cast_nullable_to_non_nullable
              as Map<String, int?>?,
      Weed: freezed == Weed
          ? _value._Weed
          : Weed // ignore: cast_nullable_to_non_nullable
              as Map<String, int?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpeciesDtoImpl implements _SpeciesDto {
  const _$SpeciesDtoImpl(
      {final Map<String, int?>? Grass,
      this.Others,
      final Map<String, int?>? Tree,
      final Map<String, int?>? Weed})
      : _Grass = Grass,
        _Tree = Tree,
        _Weed = Weed;

  factory _$SpeciesDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpeciesDtoImplFromJson(json);

  final Map<String, int?>? _Grass;
  @override
  Map<String, int?>? get Grass {
    final value = _Grass;
    if (value == null) return null;
    if (_Grass is EqualUnmodifiableMapView) return _Grass;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final int? Others;
  final Map<String, int?>? _Tree;
  @override
  Map<String, int?>? get Tree {
    final value = _Tree;
    if (value == null) return null;
    if (_Tree is EqualUnmodifiableMapView) return _Tree;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, int?>? _Weed;
  @override
  Map<String, int?>? get Weed {
    final value = _Weed;
    if (value == null) return null;
    if (_Weed is EqualUnmodifiableMapView) return _Weed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'SpeciesDto(Grass: $Grass, Others: $Others, Tree: $Tree, Weed: $Weed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpeciesDtoImpl &&
            const DeepCollectionEquality().equals(other._Grass, _Grass) &&
            (identical(other.Others, Others) || other.Others == Others) &&
            const DeepCollectionEquality().equals(other._Tree, _Tree) &&
            const DeepCollectionEquality().equals(other._Weed, _Weed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_Grass),
      Others,
      const DeepCollectionEquality().hash(_Tree),
      const DeepCollectionEquality().hash(_Weed));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpeciesDtoImplCopyWith<_$SpeciesDtoImpl> get copyWith =>
      __$$SpeciesDtoImplCopyWithImpl<_$SpeciesDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpeciesDtoImplToJson(
      this,
    );
  }
}

abstract class _SpeciesDto implements SpeciesDto {
  const factory _SpeciesDto(
      {final Map<String, int?>? Grass,
      final int? Others,
      final Map<String, int?>? Tree,
      final Map<String, int?>? Weed}) = _$SpeciesDtoImpl;

  factory _SpeciesDto.fromJson(Map<String, dynamic> json) =
      _$SpeciesDtoImpl.fromJson;

  @override
  Map<String, int?>? get Grass;
  @override
  int? get Others;
  @override
  Map<String, int?>? get Tree;
  @override
  Map<String, int?>? get Weed;
  @override
  @JsonKey(ignore: true)
  _$$SpeciesDtoImplCopyWith<_$SpeciesDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
