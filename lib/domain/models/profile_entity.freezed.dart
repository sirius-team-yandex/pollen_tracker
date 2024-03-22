// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  Species get species => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileEntityCopyWith<ProfileEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEntityCopyWith<$Res> {
  factory $ProfileEntityCopyWith(
          ProfileEntity value, $Res Function(ProfileEntity) then) =
      _$ProfileEntityCopyWithImpl<$Res, ProfileEntity>;
  @useResult
  $Res call({int id, String name, String city, Species species});
}

/// @nodoc
class _$ProfileEntityCopyWithImpl<$Res, $Val extends ProfileEntity>
    implements $ProfileEntityCopyWith<$Res> {
  _$ProfileEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? city = null,
    Object? species = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      species: null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as Species,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileEntityImplCopyWith<$Res>
    implements $ProfileEntityCopyWith<$Res> {
  factory _$$ProfileEntityImplCopyWith(
          _$ProfileEntityImpl value, $Res Function(_$ProfileEntityImpl) then) =
      __$$ProfileEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String city, Species species});
}

/// @nodoc
class __$$ProfileEntityImplCopyWithImpl<$Res>
    extends _$ProfileEntityCopyWithImpl<$Res, _$ProfileEntityImpl>
    implements _$$ProfileEntityImplCopyWith<$Res> {
  __$$ProfileEntityImplCopyWithImpl(
      _$ProfileEntityImpl _value, $Res Function(_$ProfileEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? city = null,
    Object? species = null,
  }) {
    return _then(_$ProfileEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      species: null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as Species,
    ));
  }
}

/// @nodoc

class _$ProfileEntityImpl implements _ProfileEntity {
  const _$ProfileEntityImpl(
      {required this.id,
      required this.name,
      required this.city,
      required this.species});

  @override
  final int id;
  @override
  final String name;
  @override
  final String city;
  @override
  final Species species;

  @override
  String toString() {
    return 'ProfileEntity(id: $id, name: $name, city: $city, species: $species)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.species, species) || other.species == species));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, city, species);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileEntityImplCopyWith<_$ProfileEntityImpl> get copyWith =>
      __$$ProfileEntityImplCopyWithImpl<_$ProfileEntityImpl>(this, _$identity);
}

abstract class _ProfileEntity implements ProfileEntity {
  const factory _ProfileEntity(
      {required final int id,
      required final String name,
      required final String city,
      required final Species species}) = _$ProfileEntityImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  String get city;
  @override
  Species get species;
  @override
  @JsonKey(ignore: true)
  _$$ProfileEntityImplCopyWith<_$ProfileEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
