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
  @JsonKey(name: 'Grass')
  Map<String, int?>? get grass => throw _privateConstructorUsedError;
  @JsonKey(name: 'Others')
  int? get others => throw _privateConstructorUsedError;
  @JsonKey(name: 'Tree')
  Map<String, int?>? get tree => throw _privateConstructorUsedError;
  @JsonKey(name: 'Weed')
  Map<String, int?>? get weed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpeciesDtoCopyWith<SpeciesDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpeciesDtoCopyWith<$Res> {
  factory $SpeciesDtoCopyWith(SpeciesDto value, $Res Function(SpeciesDto) then) =
      _$SpeciesDtoCopyWithImpl<$Res, SpeciesDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Grass') Map<String, int?>? grass,
      @JsonKey(name: 'Others') int? others,
      @JsonKey(name: 'Tree') Map<String, int?>? tree,
      @JsonKey(name: 'Weed') Map<String, int?>? weed});
}

/// @nodoc
class _$SpeciesDtoCopyWithImpl<$Res, $Val extends SpeciesDto> implements $SpeciesDtoCopyWith<$Res> {
  _$SpeciesDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grass = freezed,
    Object? others = freezed,
    Object? tree = freezed,
    Object? weed = freezed,
  }) {
    return _then(_value.copyWith(
      grass: freezed == grass
          ? _value.grass
          : grass // ignore: cast_nullable_to_non_nullable
              as Map<String, int?>?,
      others: freezed == others
          ? _value.others
          : others // ignore: cast_nullable_to_non_nullable
              as int?,
      tree: freezed == tree
          ? _value.tree
          : tree // ignore: cast_nullable_to_non_nullable
              as Map<String, int?>?,
      weed: freezed == weed
          ? _value.weed
          : weed // ignore: cast_nullable_to_non_nullable
              as Map<String, int?>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpeciesDtoImplCopyWith<$Res> implements $SpeciesDtoCopyWith<$Res> {
  factory _$$SpeciesDtoImplCopyWith(_$SpeciesDtoImpl value, $Res Function(_$SpeciesDtoImpl) then) =
      __$$SpeciesDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Grass') Map<String, int?>? grass,
      @JsonKey(name: 'Others') int? others,
      @JsonKey(name: 'Tree') Map<String, int?>? tree,
      @JsonKey(name: 'Weed') Map<String, int?>? weed});
}

/// @nodoc
class __$$SpeciesDtoImplCopyWithImpl<$Res> extends _$SpeciesDtoCopyWithImpl<$Res, _$SpeciesDtoImpl>
    implements _$$SpeciesDtoImplCopyWith<$Res> {
  __$$SpeciesDtoImplCopyWithImpl(_$SpeciesDtoImpl _value, $Res Function(_$SpeciesDtoImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grass = freezed,
    Object? others = freezed,
    Object? tree = freezed,
    Object? weed = freezed,
  }) {
    return _then(_$SpeciesDtoImpl(
      grass: freezed == grass
          ? _value._grass
          : grass // ignore: cast_nullable_to_non_nullable
              as Map<String, int?>?,
      others: freezed == others
          ? _value.others
          : others // ignore: cast_nullable_to_non_nullable
              as int?,
      tree: freezed == tree
          ? _value._tree
          : tree // ignore: cast_nullable_to_non_nullable
              as Map<String, int?>?,
      weed: freezed == weed
          ? _value._weed
          : weed // ignore: cast_nullable_to_non_nullable
              as Map<String, int?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpeciesDtoImpl implements _SpeciesDto {
  const _$SpeciesDtoImpl(
      {@JsonKey(name: 'Grass') final Map<String, int?>? grass,
      @JsonKey(name: 'Others') this.others,
      @JsonKey(name: 'Tree') final Map<String, int?>? tree,
      @JsonKey(name: 'Weed') final Map<String, int?>? weed})
      : _grass = grass,
        _tree = tree,
        _weed = weed;

  factory _$SpeciesDtoImpl.fromJson(Map<String, dynamic> json) => _$$SpeciesDtoImplFromJson(json);

  final Map<String, int?>? _grass;
  @override
  @JsonKey(name: 'Grass')
  Map<String, int?>? get grass {
    final value = _grass;
    if (value == null) return null;
    if (_grass is EqualUnmodifiableMapView) return _grass;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: 'Others')
  final int? others;
  final Map<String, int?>? _tree;
  @override
  @JsonKey(name: 'Tree')
  Map<String, int?>? get tree {
    final value = _tree;
    if (value == null) return null;
    if (_tree is EqualUnmodifiableMapView) return _tree;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, int?>? _weed;
  @override
  @JsonKey(name: 'Weed')
  Map<String, int?>? get weed {
    final value = _weed;
    if (value == null) return null;
    if (_weed is EqualUnmodifiableMapView) return _weed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'SpeciesDto(grass: $grass, others: $others, tree: $tree, weed: $weed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpeciesDtoImpl &&
            const DeepCollectionEquality().equals(other._grass, _grass) &&
            (identical(other.others, others) || other.others == others) &&
            const DeepCollectionEquality().equals(other._tree, _tree) &&
            const DeepCollectionEquality().equals(other._weed, _weed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_grass), others,
      const DeepCollectionEquality().hash(_tree), const DeepCollectionEquality().hash(_weed));

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
      {@JsonKey(name: 'Grass') final Map<String, int?>? grass,
      @JsonKey(name: 'Others') final int? others,
      @JsonKey(name: 'Tree') final Map<String, int?>? tree,
      @JsonKey(name: 'Weed') final Map<String, int?>? weed}) = _$SpeciesDtoImpl;

  factory _SpeciesDto.fromJson(Map<String, dynamic> json) = _$SpeciesDtoImpl.fromJson;

  @override
  @JsonKey(name: 'Grass')
  Map<String, int?>? get grass;
  @override
  @JsonKey(name: 'Others')
  int? get others;
  @override
  @JsonKey(name: 'Tree')
  Map<String, int?>? get tree;
  @override
  @JsonKey(name: 'Weed')
  Map<String, int?>? get weed;
  @override
  @JsonKey(ignore: true)
  _$$SpeciesDtoImplCopyWith<_$SpeciesDtoImpl> get copyWith => throw _privateConstructorUsedError;
}
