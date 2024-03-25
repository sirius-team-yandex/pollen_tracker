// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'config_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ConfigEntity {
  int? get currProfileId => throw _privateConstructorUsedError;
  String get locale => throw _privateConstructorUsedError;
  bool get darkTheme => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConfigEntityCopyWith<ConfigEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfigEntityCopyWith<$Res> {
  factory $ConfigEntityCopyWith(
          ConfigEntity value, $Res Function(ConfigEntity) then) =
      _$ConfigEntityCopyWithImpl<$Res, ConfigEntity>;
  @useResult
  $Res call({int? currProfileId, String locale, bool darkTheme});
}

/// @nodoc
class _$ConfigEntityCopyWithImpl<$Res, $Val extends ConfigEntity>
    implements $ConfigEntityCopyWith<$Res> {
  _$ConfigEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currProfileId = freezed,
    Object? locale = null,
    Object? darkTheme = null,
  }) {
    return _then(_value.copyWith(
      currProfileId: freezed == currProfileId
          ? _value.currProfileId
          : currProfileId // ignore: cast_nullable_to_non_nullable
              as int?,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
      darkTheme: null == darkTheme
          ? _value.darkTheme
          : darkTheme // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConfigEntityImplCopyWith<$Res>
    implements $ConfigEntityCopyWith<$Res> {
  factory _$$ConfigEntityImplCopyWith(
          _$ConfigEntityImpl value, $Res Function(_$ConfigEntityImpl) then) =
      __$$ConfigEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? currProfileId, String locale, bool darkTheme});
}

/// @nodoc
class __$$ConfigEntityImplCopyWithImpl<$Res>
    extends _$ConfigEntityCopyWithImpl<$Res, _$ConfigEntityImpl>
    implements _$$ConfigEntityImplCopyWith<$Res> {
  __$$ConfigEntityImplCopyWithImpl(
      _$ConfigEntityImpl _value, $Res Function(_$ConfigEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currProfileId = freezed,
    Object? locale = null,
    Object? darkTheme = null,
  }) {
    return _then(_$ConfigEntityImpl(
      currProfileId: freezed == currProfileId
          ? _value.currProfileId
          : currProfileId // ignore: cast_nullable_to_non_nullable
              as int?,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
      darkTheme: null == darkTheme
          ? _value.darkTheme
          : darkTheme // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ConfigEntityImpl implements _ConfigEntity {
  const _$ConfigEntityImpl({this.currProfileId, required this.locale, required this.darkTheme});

  @override
  final int? currProfileId;
  @override
  final String locale;
  @override
  final bool darkTheme;

  @override
  String toString() {
    return 'ConfigEntity(currProfileId: $currProfileId, locale: $locale, darkTheme: $darkTheme)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfigEntityImpl &&
            (identical(other.currProfileId, currProfileId) || other.currProfileId == currProfileId) &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.darkTheme, darkTheme) ||
                other.darkTheme == darkTheme));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currProfileId, locale, darkTheme);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfigEntityImplCopyWith<_$ConfigEntityImpl> get copyWith =>
      __$$ConfigEntityImplCopyWithImpl<_$ConfigEntityImpl>(this, _$identity);
}

abstract class _ConfigEntity implements ConfigEntity {
  const factory _ConfigEntity({final int? currProfileId, required final String locale, required final bool darkTheme}) =
      _$ConfigEntityImpl;

  @override
  int? get currProfileId;
  @override
  String get locale;
  @override
  bool get darkTheme;
  @override
  @JsonKey(ignore: true)
  _$$ConfigEntityImplCopyWith<_$ConfigEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
