// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfilesAllEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProfileEntity profile) logIn,
    required TResult Function() logOut,
    required TResult Function(ProfileEntity newProfile) changeProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProfileEntity profile)? logIn,
    TResult? Function()? logOut,
    TResult? Function(ProfileEntity newProfile)? changeProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProfileEntity profile)? logIn,
    TResult Function()? logOut,
    TResult Function(ProfileEntity newProfile)? changeProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LogIn value) logIn,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_ChangeProfile value) changeProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LogIn value)? logIn,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_ChangeProfile value)? changeProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LogIn value)? logIn,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeProfile value)? changeProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfilesAllEventCopyWith<$Res> {
  factory $ProfilesAllEventCopyWith(ProfilesAllEvent value, $Res Function(ProfilesAllEvent) then) =
      _$ProfilesAllEventCopyWithImpl<$Res, ProfilesAllEvent>;
}

/// @nodoc
class _$ProfilesAllEventCopyWithImpl<$Res, $Val extends ProfilesAllEvent> implements $ProfilesAllEventCopyWith<$Res> {
  _$ProfilesAllEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LogInImplCopyWith<$Res> {
  factory _$$LogInImplCopyWith(_$LogInImpl value, $Res Function(_$LogInImpl) then) = __$$LogInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProfileEntity profile});

  $ProfileEntityCopyWith<$Res> get profile;
}

/// @nodoc
class __$$LogInImplCopyWithImpl<$Res> extends _$ProfilesAllEventCopyWithImpl<$Res, _$LogInImpl>
    implements _$$LogInImplCopyWith<$Res> {
  __$$LogInImplCopyWithImpl(_$LogInImpl _value, $Res Function(_$LogInImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
  }) {
    return _then(_$LogInImpl(
      null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileEntityCopyWith<$Res> get profile {
    return $ProfileEntityCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }
}

/// @nodoc

class _$LogInImpl implements _LogIn {
  const _$LogInImpl(this.profile);

  @override
  final ProfileEntity profile;

  @override
  String toString() {
    return 'ProfilesAllEvent.logIn(profile: $profile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogInImpl &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogInImplCopyWith<_$LogInImpl> get copyWith => __$$LogInImplCopyWithImpl<_$LogInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProfileEntity profile) logIn,
    required TResult Function() logOut,
    required TResult Function(ProfileEntity newProfile) changeProfile,
  }) {
    return logIn(profile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProfileEntity profile)? logIn,
    TResult? Function()? logOut,
    TResult? Function(ProfileEntity newProfile)? changeProfile,
  }) {
    return logIn?.call(profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProfileEntity profile)? logIn,
    TResult Function()? logOut,
    TResult Function(ProfileEntity newProfile)? changeProfile,
    required TResult orElse(),
  }) {
    if (logIn != null) {
      return logIn(profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LogIn value) logIn,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_ChangeProfile value) changeProfile,
  }) {
    return logIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LogIn value)? logIn,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_ChangeProfile value)? changeProfile,
  }) {
    return logIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LogIn value)? logIn,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeProfile value)? changeProfile,
    required TResult orElse(),
  }) {
    if (logIn != null) {
      return logIn(this);
    }
    return orElse();
  }
}

abstract class _LogIn implements ProfilesAllEvent {
  const factory _LogIn(final ProfileEntity profile) = _$LogInImpl;

  ProfileEntity get profile;
  @JsonKey(ignore: true)
  _$$LogInImplCopyWith<_$LogInImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogOutImplCopyWith<$Res> {
  factory _$$LogOutImplCopyWith(_$LogOutImpl value, $Res Function(_$LogOutImpl) then) =
      __$$LogOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogOutImplCopyWithImpl<$Res> extends _$ProfilesAllEventCopyWithImpl<$Res, _$LogOutImpl>
    implements _$$LogOutImplCopyWith<$Res> {
  __$$LogOutImplCopyWithImpl(_$LogOutImpl _value, $Res Function(_$LogOutImpl) _then) : super(_value, _then);
}

/// @nodoc

class _$LogOutImpl implements _LogOut {
  const _$LogOutImpl();

  @override
  String toString() {
    return 'ProfilesAllEvent.logOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$LogOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProfileEntity profile) logIn,
    required TResult Function() logOut,
    required TResult Function(ProfileEntity newProfile) changeProfile,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProfileEntity profile)? logIn,
    TResult? Function()? logOut,
    TResult? Function(ProfileEntity newProfile)? changeProfile,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProfileEntity profile)? logIn,
    TResult Function()? logOut,
    TResult Function(ProfileEntity newProfile)? changeProfile,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LogIn value) logIn,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_ChangeProfile value) changeProfile,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LogIn value)? logIn,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_ChangeProfile value)? changeProfile,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LogIn value)? logIn,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeProfile value)? changeProfile,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class _LogOut implements ProfilesAllEvent {
  const factory _LogOut() = _$LogOutImpl;
}

/// @nodoc
abstract class _$$ChangeProfileImplCopyWith<$Res> {
  factory _$$ChangeProfileImplCopyWith(_$ChangeProfileImpl value, $Res Function(_$ChangeProfileImpl) then) =
      __$$ChangeProfileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProfileEntity newProfile});

  $ProfileEntityCopyWith<$Res> get newProfile;
}

/// @nodoc
class __$$ChangeProfileImplCopyWithImpl<$Res> extends _$ProfilesAllEventCopyWithImpl<$Res, _$ChangeProfileImpl>
    implements _$$ChangeProfileImplCopyWith<$Res> {
  __$$ChangeProfileImplCopyWithImpl(_$ChangeProfileImpl _value, $Res Function(_$ChangeProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newProfile = null,
  }) {
    return _then(_$ChangeProfileImpl(
      null == newProfile
          ? _value.newProfile
          : newProfile // ignore: cast_nullable_to_non_nullable
              as ProfileEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileEntityCopyWith<$Res> get newProfile {
    return $ProfileEntityCopyWith<$Res>(_value.newProfile, (value) {
      return _then(_value.copyWith(newProfile: value));
    });
  }
}

/// @nodoc

class _$ChangeProfileImpl implements _ChangeProfile {
  const _$ChangeProfileImpl(this.newProfile);

  @override
  final ProfileEntity newProfile;

  @override
  String toString() {
    return 'ProfilesAllEvent.changeProfile(newProfile: $newProfile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeProfileImpl &&
            (identical(other.newProfile, newProfile) || other.newProfile == newProfile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newProfile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeProfileImplCopyWith<_$ChangeProfileImpl> get copyWith =>
      __$$ChangeProfileImplCopyWithImpl<_$ChangeProfileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProfileEntity profile) logIn,
    required TResult Function() logOut,
    required TResult Function(ProfileEntity newProfile) changeProfile,
  }) {
    return changeProfile(newProfile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProfileEntity profile)? logIn,
    TResult? Function()? logOut,
    TResult? Function(ProfileEntity newProfile)? changeProfile,
  }) {
    return changeProfile?.call(newProfile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProfileEntity profile)? logIn,
    TResult Function()? logOut,
    TResult Function(ProfileEntity newProfile)? changeProfile,
    required TResult orElse(),
  }) {
    if (changeProfile != null) {
      return changeProfile(newProfile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LogIn value) logIn,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_ChangeProfile value) changeProfile,
  }) {
    return changeProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LogIn value)? logIn,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_ChangeProfile value)? changeProfile,
  }) {
    return changeProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LogIn value)? logIn,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeProfile value)? changeProfile,
    required TResult orElse(),
  }) {
    if (changeProfile != null) {
      return changeProfile(this);
    }
    return orElse();
  }
}

abstract class _ChangeProfile implements ProfilesAllEvent {
  const factory _ChangeProfile(final ProfileEntity newProfile) = _$ChangeProfileImpl;

  ProfileEntity get newProfile;
  @JsonKey(ignore: true)
  _$$ChangeProfileImplCopyWith<_$ChangeProfileImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logedOut,
    required TResult Function(ProfileEntity profile) logedIn,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logedOut,
    TResult? Function(ProfileEntity profile)? logedIn,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logedOut,
    TResult Function(ProfileEntity profile)? logedIn,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LogedOutProfileState value) logedOut,
    required TResult Function(_LogedInProfileState value) logedIn,
    required TResult Function(_ErrorProfileState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LogedOutProfileState value)? logedOut,
    TResult? Function(_LogedInProfileState value)? logedIn,
    TResult? Function(_ErrorProfileState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LogedOutProfileState value)? logedOut,
    TResult Function(_LogedInProfileState value)? logedIn,
    TResult Function(_ErrorProfileState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LogedOutProfileStateImplCopyWith<$Res> {
  factory _$$LogedOutProfileStateImplCopyWith(
          _$LogedOutProfileStateImpl value, $Res Function(_$LogedOutProfileStateImpl) then) =
      __$$LogedOutProfileStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogedOutProfileStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$LogedOutProfileStateImpl>
    implements _$$LogedOutProfileStateImplCopyWith<$Res> {
  __$$LogedOutProfileStateImplCopyWithImpl(
      _$LogedOutProfileStateImpl _value, $Res Function(_$LogedOutProfileStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogedOutProfileStateImpl implements _LogedOutProfileState {
  const _$LogedOutProfileStateImpl();

  @override
  String toString() {
    return 'ProfileState.logedOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$LogedOutProfileStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logedOut,
    required TResult Function(ProfileEntity profile) logedIn,
    required TResult Function() error,
  }) {
    return logedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logedOut,
    TResult? Function(ProfileEntity profile)? logedIn,
    TResult? Function()? error,
  }) {
    return logedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logedOut,
    TResult Function(ProfileEntity profile)? logedIn,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (logedOut != null) {
      return logedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LogedOutProfileState value) logedOut,
    required TResult Function(_LogedInProfileState value) logedIn,
    required TResult Function(_ErrorProfileState value) error,
  }) {
    return logedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LogedOutProfileState value)? logedOut,
    TResult? Function(_LogedInProfileState value)? logedIn,
    TResult? Function(_ErrorProfileState value)? error,
  }) {
    return logedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LogedOutProfileState value)? logedOut,
    TResult Function(_LogedInProfileState value)? logedIn,
    TResult Function(_ErrorProfileState value)? error,
    required TResult orElse(),
  }) {
    if (logedOut != null) {
      return logedOut(this);
    }
    return orElse();
  }
}

abstract class _LogedOutProfileState implements ProfileState {
  const factory _LogedOutProfileState() = _$LogedOutProfileStateImpl;
}

/// @nodoc
abstract class _$$LogedInProfileStateImplCopyWith<$Res> {
  factory _$$LogedInProfileStateImplCopyWith(
          _$LogedInProfileStateImpl value, $Res Function(_$LogedInProfileStateImpl) then) =
      __$$LogedInProfileStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProfileEntity profile});

  $ProfileEntityCopyWith<$Res> get profile;
}

/// @nodoc
class __$$LogedInProfileStateImplCopyWithImpl<$Res> extends _$ProfileStateCopyWithImpl<$Res, _$LogedInProfileStateImpl>
    implements _$$LogedInProfileStateImplCopyWith<$Res> {
  __$$LogedInProfileStateImplCopyWithImpl(
      _$LogedInProfileStateImpl _value, $Res Function(_$LogedInProfileStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
  }) {
    return _then(_$LogedInProfileStateImpl(
      null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileEntityCopyWith<$Res> get profile {
    return $ProfileEntityCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }
}

/// @nodoc

class _$LogedInProfileStateImpl implements _LogedInProfileState {
  const _$LogedInProfileStateImpl(this.profile);

  @override
  final ProfileEntity profile;

  @override
  String toString() {
    return 'ProfileState.logedIn(profile: $profile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogedInProfileStateImpl &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogedInProfileStateImplCopyWith<_$LogedInProfileStateImpl> get copyWith =>
      __$$LogedInProfileStateImplCopyWithImpl<_$LogedInProfileStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logedOut,
    required TResult Function(ProfileEntity profile) logedIn,
    required TResult Function() error,
  }) {
    return logedIn(profile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logedOut,
    TResult? Function(ProfileEntity profile)? logedIn,
    TResult? Function()? error,
  }) {
    return logedIn?.call(profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logedOut,
    TResult Function(ProfileEntity profile)? logedIn,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (logedIn != null) {
      return logedIn(profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LogedOutProfileState value) logedOut,
    required TResult Function(_LogedInProfileState value) logedIn,
    required TResult Function(_ErrorProfileState value) error,
  }) {
    return logedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LogedOutProfileState value)? logedOut,
    TResult? Function(_LogedInProfileState value)? logedIn,
    TResult? Function(_ErrorProfileState value)? error,
  }) {
    return logedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LogedOutProfileState value)? logedOut,
    TResult Function(_LogedInProfileState value)? logedIn,
    TResult Function(_ErrorProfileState value)? error,
    required TResult orElse(),
  }) {
    if (logedIn != null) {
      return logedIn(this);
    }
    return orElse();
  }
}

abstract class _LogedInProfileState implements ProfileState {
  const factory _LogedInProfileState(final ProfileEntity profile) = _$LogedInProfileStateImpl;

  ProfileEntity get profile;
  @JsonKey(ignore: true)
  _$$LogedInProfileStateImplCopyWith<_$LogedInProfileStateImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorProfileStateImplCopyWith<$Res> {
  factory _$$ErrorProfileStateImplCopyWith(_$ErrorProfileStateImpl value, $Res Function(_$ErrorProfileStateImpl) then) =
      __$$ErrorProfileStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorProfileStateImplCopyWithImpl<$Res> extends _$ProfileStateCopyWithImpl<$Res, _$ErrorProfileStateImpl>
    implements _$$ErrorProfileStateImplCopyWith<$Res> {
  __$$ErrorProfileStateImplCopyWithImpl(_$ErrorProfileStateImpl _value, $Res Function(_$ErrorProfileStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorProfileStateImpl implements _ErrorProfileState {
  const _$ErrorProfileStateImpl();

  @override
  String toString() {
    return 'ProfileState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$ErrorProfileStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logedOut,
    required TResult Function(ProfileEntity profile) logedIn,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logedOut,
    TResult? Function(ProfileEntity profile)? logedIn,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logedOut,
    TResult Function(ProfileEntity profile)? logedIn,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LogedOutProfileState value) logedOut,
    required TResult Function(_LogedInProfileState value) logedIn,
    required TResult Function(_ErrorProfileState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LogedOutProfileState value)? logedOut,
    TResult? Function(_LogedInProfileState value)? logedIn,
    TResult? Function(_ErrorProfileState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LogedOutProfileState value)? logedOut,
    TResult Function(_LogedInProfileState value)? logedIn,
    TResult Function(_ErrorProfileState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorProfileState implements ProfileState {
  const factory _ErrorProfileState() = _$ErrorProfileStateImpl;
}
