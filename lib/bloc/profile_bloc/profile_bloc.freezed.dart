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
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id) load,
    required TResult Function(int? id) select,
    required TResult Function(ProfileEntity profile) endRegistration,
    required TResult Function() logOut,
    required TResult Function(ProfileEntity newProfile) changeProfile,
    required TResult Function(int id) deleteProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? id)? load,
    TResult? Function(int? id)? select,
    TResult? Function(ProfileEntity profile)? endRegistration,
    TResult? Function()? logOut,
    TResult? Function(ProfileEntity newProfile)? changeProfile,
    TResult? Function(int id)? deleteProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id)? load,
    TResult Function(int? id)? select,
    TResult Function(ProfileEntity profile)? endRegistration,
    TResult Function()? logOut,
    TResult Function(ProfileEntity newProfile)? changeProfile,
    TResult Function(int id)? deleteProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProfile value) load,
    required TResult Function(SelectProfile value) select,
    required TResult Function(EndRegistration value) endRegistration,
    required TResult Function(LogOut value) logOut,
    required TResult Function(ChangeProfile value) changeProfile,
    required TResult Function(DeleteProfile value) deleteProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProfile value)? load,
    TResult? Function(SelectProfile value)? select,
    TResult? Function(EndRegistration value)? endRegistration,
    TResult? Function(LogOut value)? logOut,
    TResult? Function(ChangeProfile value)? changeProfile,
    TResult? Function(DeleteProfile value)? deleteProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProfile value)? load,
    TResult Function(SelectProfile value)? select,
    TResult Function(EndRegistration value)? endRegistration,
    TResult Function(LogOut value)? logOut,
    TResult Function(ChangeProfile value)? changeProfile,
    TResult Function(DeleteProfile value)? deleteProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadProfileImplCopyWith<$Res> {
  factory _$$LoadProfileImplCopyWith(
          _$LoadProfileImpl value, $Res Function(_$LoadProfileImpl) then) =
      __$$LoadProfileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? id});
}

/// @nodoc
class __$$LoadProfileImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$LoadProfileImpl>
    implements _$$LoadProfileImplCopyWith<$Res> {
  __$$LoadProfileImplCopyWithImpl(
      _$LoadProfileImpl _value, $Res Function(_$LoadProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$LoadProfileImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$LoadProfileImpl implements LoadProfile {
  const _$LoadProfileImpl({this.id});

  @override
  final int? id;

  @override
  String toString() {
    return 'ProfileEvent.load(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadProfileImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadProfileImplCopyWith<_$LoadProfileImpl> get copyWith =>
      __$$LoadProfileImplCopyWithImpl<_$LoadProfileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id) load,
    required TResult Function(int? id) select,
    required TResult Function(ProfileEntity profile) endRegistration,
    required TResult Function() logOut,
    required TResult Function(ProfileEntity newProfile) changeProfile,
    required TResult Function(int id) deleteProfile,
  }) {
    return load(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? id)? load,
    TResult? Function(int? id)? select,
    TResult? Function(ProfileEntity profile)? endRegistration,
    TResult? Function()? logOut,
    TResult? Function(ProfileEntity newProfile)? changeProfile,
    TResult? Function(int id)? deleteProfile,
  }) {
    return load?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id)? load,
    TResult Function(int? id)? select,
    TResult Function(ProfileEntity profile)? endRegistration,
    TResult Function()? logOut,
    TResult Function(ProfileEntity newProfile)? changeProfile,
    TResult Function(int id)? deleteProfile,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProfile value) load,
    required TResult Function(SelectProfile value) select,
    required TResult Function(EndRegistration value) endRegistration,
    required TResult Function(LogOut value) logOut,
    required TResult Function(ChangeProfile value) changeProfile,
    required TResult Function(DeleteProfile value) deleteProfile,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProfile value)? load,
    TResult? Function(SelectProfile value)? select,
    TResult? Function(EndRegistration value)? endRegistration,
    TResult? Function(LogOut value)? logOut,
    TResult? Function(ChangeProfile value)? changeProfile,
    TResult? Function(DeleteProfile value)? deleteProfile,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProfile value)? load,
    TResult Function(SelectProfile value)? select,
    TResult Function(EndRegistration value)? endRegistration,
    TResult Function(LogOut value)? logOut,
    TResult Function(ChangeProfile value)? changeProfile,
    TResult Function(DeleteProfile value)? deleteProfile,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadProfile implements ProfileEvent {
  const factory LoadProfile({final int? id}) = _$LoadProfileImpl;

  int? get id;
  @JsonKey(ignore: true)
  _$$LoadProfileImplCopyWith<_$LoadProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectProfileImplCopyWith<$Res> {
  factory _$$SelectProfileImplCopyWith(
          _$SelectProfileImpl value, $Res Function(_$SelectProfileImpl) then) =
      __$$SelectProfileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? id});
}

/// @nodoc
class __$$SelectProfileImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$SelectProfileImpl>
    implements _$$SelectProfileImplCopyWith<$Res> {
  __$$SelectProfileImplCopyWithImpl(
      _$SelectProfileImpl _value, $Res Function(_$SelectProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$SelectProfileImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$SelectProfileImpl implements SelectProfile {
  const _$SelectProfileImpl({this.id});

  @override
  final int? id;

  @override
  String toString() {
    return 'ProfileEvent.select(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectProfileImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectProfileImplCopyWith<_$SelectProfileImpl> get copyWith =>
      __$$SelectProfileImplCopyWithImpl<_$SelectProfileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id) load,
    required TResult Function(int? id) select,
    required TResult Function(ProfileEntity profile) endRegistration,
    required TResult Function() logOut,
    required TResult Function(ProfileEntity newProfile) changeProfile,
    required TResult Function(int id) deleteProfile,
  }) {
    return select(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? id)? load,
    TResult? Function(int? id)? select,
    TResult? Function(ProfileEntity profile)? endRegistration,
    TResult? Function()? logOut,
    TResult? Function(ProfileEntity newProfile)? changeProfile,
    TResult? Function(int id)? deleteProfile,
  }) {
    return select?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id)? load,
    TResult Function(int? id)? select,
    TResult Function(ProfileEntity profile)? endRegistration,
    TResult Function()? logOut,
    TResult Function(ProfileEntity newProfile)? changeProfile,
    TResult Function(int id)? deleteProfile,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProfile value) load,
    required TResult Function(SelectProfile value) select,
    required TResult Function(EndRegistration value) endRegistration,
    required TResult Function(LogOut value) logOut,
    required TResult Function(ChangeProfile value) changeProfile,
    required TResult Function(DeleteProfile value) deleteProfile,
  }) {
    return select(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProfile value)? load,
    TResult? Function(SelectProfile value)? select,
    TResult? Function(EndRegistration value)? endRegistration,
    TResult? Function(LogOut value)? logOut,
    TResult? Function(ChangeProfile value)? changeProfile,
    TResult? Function(DeleteProfile value)? deleteProfile,
  }) {
    return select?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProfile value)? load,
    TResult Function(SelectProfile value)? select,
    TResult Function(EndRegistration value)? endRegistration,
    TResult Function(LogOut value)? logOut,
    TResult Function(ChangeProfile value)? changeProfile,
    TResult Function(DeleteProfile value)? deleteProfile,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(this);
    }
    return orElse();
  }
}

abstract class SelectProfile implements ProfileEvent {
  const factory SelectProfile({final int? id}) = _$SelectProfileImpl;

  int? get id;
  @JsonKey(ignore: true)
  _$$SelectProfileImplCopyWith<_$SelectProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EndRegistrationImplCopyWith<$Res> {
  factory _$$EndRegistrationImplCopyWith(_$EndRegistrationImpl value,
          $Res Function(_$EndRegistrationImpl) then) =
      __$$EndRegistrationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProfileEntity profile});

  $ProfileEntityCopyWith<$Res> get profile;
}

/// @nodoc
class __$$EndRegistrationImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$EndRegistrationImpl>
    implements _$$EndRegistrationImplCopyWith<$Res> {
  __$$EndRegistrationImplCopyWithImpl(
      _$EndRegistrationImpl _value, $Res Function(_$EndRegistrationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
  }) {
    return _then(_$EndRegistrationImpl(
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

class _$EndRegistrationImpl implements EndRegistration {
  const _$EndRegistrationImpl(this.profile);

  @override
  final ProfileEntity profile;

  @override
  String toString() {
    return 'ProfileEvent.endRegistration(profile: $profile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EndRegistrationImpl &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EndRegistrationImplCopyWith<_$EndRegistrationImpl> get copyWith =>
      __$$EndRegistrationImplCopyWithImpl<_$EndRegistrationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id) load,
    required TResult Function(int? id) select,
    required TResult Function(ProfileEntity profile) endRegistration,
    required TResult Function() logOut,
    required TResult Function(ProfileEntity newProfile) changeProfile,
    required TResult Function(int id) deleteProfile,
  }) {
    return endRegistration(profile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? id)? load,
    TResult? Function(int? id)? select,
    TResult? Function(ProfileEntity profile)? endRegistration,
    TResult? Function()? logOut,
    TResult? Function(ProfileEntity newProfile)? changeProfile,
    TResult? Function(int id)? deleteProfile,
  }) {
    return endRegistration?.call(profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id)? load,
    TResult Function(int? id)? select,
    TResult Function(ProfileEntity profile)? endRegistration,
    TResult Function()? logOut,
    TResult Function(ProfileEntity newProfile)? changeProfile,
    TResult Function(int id)? deleteProfile,
    required TResult orElse(),
  }) {
    if (endRegistration != null) {
      return endRegistration(profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProfile value) load,
    required TResult Function(SelectProfile value) select,
    required TResult Function(EndRegistration value) endRegistration,
    required TResult Function(LogOut value) logOut,
    required TResult Function(ChangeProfile value) changeProfile,
    required TResult Function(DeleteProfile value) deleteProfile,
  }) {
    return endRegistration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProfile value)? load,
    TResult? Function(SelectProfile value)? select,
    TResult? Function(EndRegistration value)? endRegistration,
    TResult? Function(LogOut value)? logOut,
    TResult? Function(ChangeProfile value)? changeProfile,
    TResult? Function(DeleteProfile value)? deleteProfile,
  }) {
    return endRegistration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProfile value)? load,
    TResult Function(SelectProfile value)? select,
    TResult Function(EndRegistration value)? endRegistration,
    TResult Function(LogOut value)? logOut,
    TResult Function(ChangeProfile value)? changeProfile,
    TResult Function(DeleteProfile value)? deleteProfile,
    required TResult orElse(),
  }) {
    if (endRegistration != null) {
      return endRegistration(this);
    }
    return orElse();
  }
}

abstract class EndRegistration implements ProfileEvent {
  const factory EndRegistration(final ProfileEntity profile) =
      _$EndRegistrationImpl;

  ProfileEntity get profile;
  @JsonKey(ignore: true)
  _$$EndRegistrationImplCopyWith<_$EndRegistrationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogOutImplCopyWith<$Res> {
  factory _$$LogOutImplCopyWith(
          _$LogOutImpl value, $Res Function(_$LogOutImpl) then) =
      __$$LogOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogOutImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$LogOutImpl>
    implements _$$LogOutImplCopyWith<$Res> {
  __$$LogOutImplCopyWithImpl(
      _$LogOutImpl _value, $Res Function(_$LogOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogOutImpl implements LogOut {
  const _$LogOutImpl();

  @override
  String toString() {
    return 'ProfileEvent.logOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id) load,
    required TResult Function(int? id) select,
    required TResult Function(ProfileEntity profile) endRegistration,
    required TResult Function() logOut,
    required TResult Function(ProfileEntity newProfile) changeProfile,
    required TResult Function(int id) deleteProfile,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? id)? load,
    TResult? Function(int? id)? select,
    TResult? Function(ProfileEntity profile)? endRegistration,
    TResult? Function()? logOut,
    TResult? Function(ProfileEntity newProfile)? changeProfile,
    TResult? Function(int id)? deleteProfile,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id)? load,
    TResult Function(int? id)? select,
    TResult Function(ProfileEntity profile)? endRegistration,
    TResult Function()? logOut,
    TResult Function(ProfileEntity newProfile)? changeProfile,
    TResult Function(int id)? deleteProfile,
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
    required TResult Function(LoadProfile value) load,
    required TResult Function(SelectProfile value) select,
    required TResult Function(EndRegistration value) endRegistration,
    required TResult Function(LogOut value) logOut,
    required TResult Function(ChangeProfile value) changeProfile,
    required TResult Function(DeleteProfile value) deleteProfile,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProfile value)? load,
    TResult? Function(SelectProfile value)? select,
    TResult? Function(EndRegistration value)? endRegistration,
    TResult? Function(LogOut value)? logOut,
    TResult? Function(ChangeProfile value)? changeProfile,
    TResult? Function(DeleteProfile value)? deleteProfile,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProfile value)? load,
    TResult Function(SelectProfile value)? select,
    TResult Function(EndRegistration value)? endRegistration,
    TResult Function(LogOut value)? logOut,
    TResult Function(ChangeProfile value)? changeProfile,
    TResult Function(DeleteProfile value)? deleteProfile,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class LogOut implements ProfileEvent {
  const factory LogOut() = _$LogOutImpl;
}

/// @nodoc
abstract class _$$ChangeProfileImplCopyWith<$Res> {
  factory _$$ChangeProfileImplCopyWith(
          _$ChangeProfileImpl value, $Res Function(_$ChangeProfileImpl) then) =
      __$$ChangeProfileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProfileEntity newProfile});

  $ProfileEntityCopyWith<$Res> get newProfile;
}

/// @nodoc
class __$$ChangeProfileImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$ChangeProfileImpl>
    implements _$$ChangeProfileImplCopyWith<$Res> {
  __$$ChangeProfileImplCopyWithImpl(
      _$ChangeProfileImpl _value, $Res Function(_$ChangeProfileImpl) _then)
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

class _$ChangeProfileImpl implements ChangeProfile {
  const _$ChangeProfileImpl(this.newProfile);

  @override
  final ProfileEntity newProfile;

  @override
  String toString() {
    return 'ProfileEvent.changeProfile(newProfile: $newProfile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeProfileImpl &&
            (identical(other.newProfile, newProfile) ||
                other.newProfile == newProfile));
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
    required TResult Function(int? id) load,
    required TResult Function(int? id) select,
    required TResult Function(ProfileEntity profile) endRegistration,
    required TResult Function() logOut,
    required TResult Function(ProfileEntity newProfile) changeProfile,
    required TResult Function(int id) deleteProfile,
  }) {
    return changeProfile(newProfile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? id)? load,
    TResult? Function(int? id)? select,
    TResult? Function(ProfileEntity profile)? endRegistration,
    TResult? Function()? logOut,
    TResult? Function(ProfileEntity newProfile)? changeProfile,
    TResult? Function(int id)? deleteProfile,
  }) {
    return changeProfile?.call(newProfile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id)? load,
    TResult Function(int? id)? select,
    TResult Function(ProfileEntity profile)? endRegistration,
    TResult Function()? logOut,
    TResult Function(ProfileEntity newProfile)? changeProfile,
    TResult Function(int id)? deleteProfile,
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
    required TResult Function(LoadProfile value) load,
    required TResult Function(SelectProfile value) select,
    required TResult Function(EndRegistration value) endRegistration,
    required TResult Function(LogOut value) logOut,
    required TResult Function(ChangeProfile value) changeProfile,
    required TResult Function(DeleteProfile value) deleteProfile,
  }) {
    return changeProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProfile value)? load,
    TResult? Function(SelectProfile value)? select,
    TResult? Function(EndRegistration value)? endRegistration,
    TResult? Function(LogOut value)? logOut,
    TResult? Function(ChangeProfile value)? changeProfile,
    TResult? Function(DeleteProfile value)? deleteProfile,
  }) {
    return changeProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProfile value)? load,
    TResult Function(SelectProfile value)? select,
    TResult Function(EndRegistration value)? endRegistration,
    TResult Function(LogOut value)? logOut,
    TResult Function(ChangeProfile value)? changeProfile,
    TResult Function(DeleteProfile value)? deleteProfile,
    required TResult orElse(),
  }) {
    if (changeProfile != null) {
      return changeProfile(this);
    }
    return orElse();
  }
}

abstract class ChangeProfile implements ProfileEvent {
  const factory ChangeProfile(final ProfileEntity newProfile) =
      _$ChangeProfileImpl;

  ProfileEntity get newProfile;
  @JsonKey(ignore: true)
  _$$ChangeProfileImplCopyWith<_$ChangeProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteProfileImplCopyWith<$Res> {
  factory _$$DeleteProfileImplCopyWith(
          _$DeleteProfileImpl value, $Res Function(_$DeleteProfileImpl) then) =
      __$$DeleteProfileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteProfileImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$DeleteProfileImpl>
    implements _$$DeleteProfileImplCopyWith<$Res> {
  __$$DeleteProfileImplCopyWithImpl(
      _$DeleteProfileImpl _value, $Res Function(_$DeleteProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteProfileImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteProfileImpl implements DeleteProfile {
  const _$DeleteProfileImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'ProfileEvent.deleteProfile(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteProfileImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteProfileImplCopyWith<_$DeleteProfileImpl> get copyWith =>
      __$$DeleteProfileImplCopyWithImpl<_$DeleteProfileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id) load,
    required TResult Function(int? id) select,
    required TResult Function(ProfileEntity profile) endRegistration,
    required TResult Function() logOut,
    required TResult Function(ProfileEntity newProfile) changeProfile,
    required TResult Function(int id) deleteProfile,
  }) {
    return deleteProfile(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? id)? load,
    TResult? Function(int? id)? select,
    TResult? Function(ProfileEntity profile)? endRegistration,
    TResult? Function()? logOut,
    TResult? Function(ProfileEntity newProfile)? changeProfile,
    TResult? Function(int id)? deleteProfile,
  }) {
    return deleteProfile?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id)? load,
    TResult Function(int? id)? select,
    TResult Function(ProfileEntity profile)? endRegistration,
    TResult Function()? logOut,
    TResult Function(ProfileEntity newProfile)? changeProfile,
    TResult Function(int id)? deleteProfile,
    required TResult orElse(),
  }) {
    if (deleteProfile != null) {
      return deleteProfile(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProfile value) load,
    required TResult Function(SelectProfile value) select,
    required TResult Function(EndRegistration value) endRegistration,
    required TResult Function(LogOut value) logOut,
    required TResult Function(ChangeProfile value) changeProfile,
    required TResult Function(DeleteProfile value) deleteProfile,
  }) {
    return deleteProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProfile value)? load,
    TResult? Function(SelectProfile value)? select,
    TResult? Function(EndRegistration value)? endRegistration,
    TResult? Function(LogOut value)? logOut,
    TResult? Function(ChangeProfile value)? changeProfile,
    TResult? Function(DeleteProfile value)? deleteProfile,
  }) {
    return deleteProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProfile value)? load,
    TResult Function(SelectProfile value)? select,
    TResult Function(EndRegistration value)? endRegistration,
    TResult Function(LogOut value)? logOut,
    TResult Function(ChangeProfile value)? changeProfile,
    TResult Function(DeleteProfile value)? deleteProfile,
    required TResult orElse(),
  }) {
    if (deleteProfile != null) {
      return deleteProfile(this);
    }
    return orElse();
  }
}

abstract class DeleteProfile implements ProfileEvent {
  const factory DeleteProfile({required final int id}) = _$DeleteProfileImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$DeleteProfileImplCopyWith<_$DeleteProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ProfileEntity> profiles) noProfile,
    required TResult Function() registration,
    required TResult Function(ProfileEntity profile) inProfile,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ProfileEntity> profiles)? noProfile,
    TResult? Function()? registration,
    TResult? Function(ProfileEntity profile)? inProfile,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ProfileEntity> profiles)? noProfile,
    TResult Function()? registration,
    TResult Function(ProfileEntity profile)? inProfile,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingProfileState value) loading,
    required TResult Function(NoProfileState value) noProfile,
    required TResult Function(ProfileStateRegistaration value) registration,
    required TResult Function(InProfileState value) inProfile,
    required TResult Function(ErrorProfileState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingProfileState value)? loading,
    TResult? Function(NoProfileState value)? noProfile,
    TResult? Function(ProfileStateRegistaration value)? registration,
    TResult? Function(InProfileState value)? inProfile,
    TResult? Function(ErrorProfileState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingProfileState value)? loading,
    TResult Function(NoProfileState value)? noProfile,
    TResult Function(ProfileStateRegistaration value)? registration,
    TResult Function(InProfileState value)? inProfile,
    TResult Function(ErrorProfileState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingProfileStateImplCopyWith<$Res> {
  factory _$$LoadingProfileStateImplCopyWith(_$LoadingProfileStateImpl value,
          $Res Function(_$LoadingProfileStateImpl) then) =
      __$$LoadingProfileStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingProfileStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$LoadingProfileStateImpl>
    implements _$$LoadingProfileStateImplCopyWith<$Res> {
  __$$LoadingProfileStateImplCopyWithImpl(_$LoadingProfileStateImpl _value,
      $Res Function(_$LoadingProfileStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingProfileStateImpl implements LoadingProfileState {
  const _$LoadingProfileStateImpl();

  @override
  String toString() {
    return 'ProfileState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingProfileStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ProfileEntity> profiles) noProfile,
    required TResult Function() registration,
    required TResult Function(ProfileEntity profile) inProfile,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ProfileEntity> profiles)? noProfile,
    TResult? Function()? registration,
    TResult? Function(ProfileEntity profile)? inProfile,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ProfileEntity> profiles)? noProfile,
    TResult Function()? registration,
    TResult Function(ProfileEntity profile)? inProfile,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingProfileState value) loading,
    required TResult Function(NoProfileState value) noProfile,
    required TResult Function(ProfileStateRegistaration value) registration,
    required TResult Function(InProfileState value) inProfile,
    required TResult Function(ErrorProfileState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingProfileState value)? loading,
    TResult? Function(NoProfileState value)? noProfile,
    TResult? Function(ProfileStateRegistaration value)? registration,
    TResult? Function(InProfileState value)? inProfile,
    TResult? Function(ErrorProfileState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingProfileState value)? loading,
    TResult Function(NoProfileState value)? noProfile,
    TResult Function(ProfileStateRegistaration value)? registration,
    TResult Function(InProfileState value)? inProfile,
    TResult Function(ErrorProfileState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingProfileState implements ProfileState {
  const factory LoadingProfileState() = _$LoadingProfileStateImpl;
}

/// @nodoc
abstract class _$$NoProfileStateImplCopyWith<$Res> {
  factory _$$NoProfileStateImplCopyWith(_$NoProfileStateImpl value,
          $Res Function(_$NoProfileStateImpl) then) =
      __$$NoProfileStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProfileEntity> profiles});
}

/// @nodoc
class __$$NoProfileStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$NoProfileStateImpl>
    implements _$$NoProfileStateImplCopyWith<$Res> {
  __$$NoProfileStateImplCopyWithImpl(
      _$NoProfileStateImpl _value, $Res Function(_$NoProfileStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profiles = null,
  }) {
    return _then(_$NoProfileStateImpl(
      null == profiles
          ? _value._profiles
          : profiles // ignore: cast_nullable_to_non_nullable
              as List<ProfileEntity>,
    ));
  }
}

/// @nodoc

class _$NoProfileStateImpl implements NoProfileState {
  const _$NoProfileStateImpl(final List<ProfileEntity> profiles)
      : _profiles = profiles;

  final List<ProfileEntity> _profiles;
  @override
  List<ProfileEntity> get profiles {
    if (_profiles is EqualUnmodifiableListView) return _profiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_profiles);
  }

  @override
  String toString() {
    return 'ProfileState.noProfile(profiles: $profiles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoProfileStateImpl &&
            const DeepCollectionEquality().equals(other._profiles, _profiles));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_profiles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoProfileStateImplCopyWith<_$NoProfileStateImpl> get copyWith =>
      __$$NoProfileStateImplCopyWithImpl<_$NoProfileStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ProfileEntity> profiles) noProfile,
    required TResult Function() registration,
    required TResult Function(ProfileEntity profile) inProfile,
    required TResult Function() error,
  }) {
    return noProfile(profiles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ProfileEntity> profiles)? noProfile,
    TResult? Function()? registration,
    TResult? Function(ProfileEntity profile)? inProfile,
    TResult? Function()? error,
  }) {
    return noProfile?.call(profiles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ProfileEntity> profiles)? noProfile,
    TResult Function()? registration,
    TResult Function(ProfileEntity profile)? inProfile,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (noProfile != null) {
      return noProfile(profiles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingProfileState value) loading,
    required TResult Function(NoProfileState value) noProfile,
    required TResult Function(ProfileStateRegistaration value) registration,
    required TResult Function(InProfileState value) inProfile,
    required TResult Function(ErrorProfileState value) error,
  }) {
    return noProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingProfileState value)? loading,
    TResult? Function(NoProfileState value)? noProfile,
    TResult? Function(ProfileStateRegistaration value)? registration,
    TResult? Function(InProfileState value)? inProfile,
    TResult? Function(ErrorProfileState value)? error,
  }) {
    return noProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingProfileState value)? loading,
    TResult Function(NoProfileState value)? noProfile,
    TResult Function(ProfileStateRegistaration value)? registration,
    TResult Function(InProfileState value)? inProfile,
    TResult Function(ErrorProfileState value)? error,
    required TResult orElse(),
  }) {
    if (noProfile != null) {
      return noProfile(this);
    }
    return orElse();
  }
}

abstract class NoProfileState implements ProfileState {
  const factory NoProfileState(final List<ProfileEntity> profiles) =
      _$NoProfileStateImpl;

  List<ProfileEntity> get profiles;
  @JsonKey(ignore: true)
  _$$NoProfileStateImplCopyWith<_$NoProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileStateRegistarationImplCopyWith<$Res> {
  factory _$$ProfileStateRegistarationImplCopyWith(
          _$ProfileStateRegistarationImpl value,
          $Res Function(_$ProfileStateRegistarationImpl) then) =
      __$$ProfileStateRegistarationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileStateRegistarationImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileStateRegistarationImpl>
    implements _$$ProfileStateRegistarationImplCopyWith<$Res> {
  __$$ProfileStateRegistarationImplCopyWithImpl(
      _$ProfileStateRegistarationImpl _value,
      $Res Function(_$ProfileStateRegistarationImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProfileStateRegistarationImpl implements ProfileStateRegistaration {
  const _$ProfileStateRegistarationImpl();

  @override
  String toString() {
    return 'ProfileState.registration()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStateRegistarationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ProfileEntity> profiles) noProfile,
    required TResult Function() registration,
    required TResult Function(ProfileEntity profile) inProfile,
    required TResult Function() error,
  }) {
    return registration();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ProfileEntity> profiles)? noProfile,
    TResult? Function()? registration,
    TResult? Function(ProfileEntity profile)? inProfile,
    TResult? Function()? error,
  }) {
    return registration?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ProfileEntity> profiles)? noProfile,
    TResult Function()? registration,
    TResult Function(ProfileEntity profile)? inProfile,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (registration != null) {
      return registration();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingProfileState value) loading,
    required TResult Function(NoProfileState value) noProfile,
    required TResult Function(ProfileStateRegistaration value) registration,
    required TResult Function(InProfileState value) inProfile,
    required TResult Function(ErrorProfileState value) error,
  }) {
    return registration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingProfileState value)? loading,
    TResult? Function(NoProfileState value)? noProfile,
    TResult? Function(ProfileStateRegistaration value)? registration,
    TResult? Function(InProfileState value)? inProfile,
    TResult? Function(ErrorProfileState value)? error,
  }) {
    return registration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingProfileState value)? loading,
    TResult Function(NoProfileState value)? noProfile,
    TResult Function(ProfileStateRegistaration value)? registration,
    TResult Function(InProfileState value)? inProfile,
    TResult Function(ErrorProfileState value)? error,
    required TResult orElse(),
  }) {
    if (registration != null) {
      return registration(this);
    }
    return orElse();
  }
}

abstract class ProfileStateRegistaration implements ProfileState {
  const factory ProfileStateRegistaration() = _$ProfileStateRegistarationImpl;
}

/// @nodoc
abstract class _$$InProfileStateImplCopyWith<$Res> {
  factory _$$InProfileStateImplCopyWith(_$InProfileStateImpl value,
          $Res Function(_$InProfileStateImpl) then) =
      __$$InProfileStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProfileEntity profile});

  $ProfileEntityCopyWith<$Res> get profile;
}

/// @nodoc
class __$$InProfileStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$InProfileStateImpl>
    implements _$$InProfileStateImplCopyWith<$Res> {
  __$$InProfileStateImplCopyWithImpl(
      _$InProfileStateImpl _value, $Res Function(_$InProfileStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
  }) {
    return _then(_$InProfileStateImpl(
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

class _$InProfileStateImpl implements InProfileState {
  const _$InProfileStateImpl(this.profile);

  @override
  final ProfileEntity profile;

  @override
  String toString() {
    return 'ProfileState.inProfile(profile: $profile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InProfileStateImpl &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InProfileStateImplCopyWith<_$InProfileStateImpl> get copyWith =>
      __$$InProfileStateImplCopyWithImpl<_$InProfileStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ProfileEntity> profiles) noProfile,
    required TResult Function() registration,
    required TResult Function(ProfileEntity profile) inProfile,
    required TResult Function() error,
  }) {
    return inProfile(profile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ProfileEntity> profiles)? noProfile,
    TResult? Function()? registration,
    TResult? Function(ProfileEntity profile)? inProfile,
    TResult? Function()? error,
  }) {
    return inProfile?.call(profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ProfileEntity> profiles)? noProfile,
    TResult Function()? registration,
    TResult Function(ProfileEntity profile)? inProfile,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (inProfile != null) {
      return inProfile(profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingProfileState value) loading,
    required TResult Function(NoProfileState value) noProfile,
    required TResult Function(ProfileStateRegistaration value) registration,
    required TResult Function(InProfileState value) inProfile,
    required TResult Function(ErrorProfileState value) error,
  }) {
    return inProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingProfileState value)? loading,
    TResult? Function(NoProfileState value)? noProfile,
    TResult? Function(ProfileStateRegistaration value)? registration,
    TResult? Function(InProfileState value)? inProfile,
    TResult? Function(ErrorProfileState value)? error,
  }) {
    return inProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingProfileState value)? loading,
    TResult Function(NoProfileState value)? noProfile,
    TResult Function(ProfileStateRegistaration value)? registration,
    TResult Function(InProfileState value)? inProfile,
    TResult Function(ErrorProfileState value)? error,
    required TResult orElse(),
  }) {
    if (inProfile != null) {
      return inProfile(this);
    }
    return orElse();
  }
}

abstract class InProfileState implements ProfileState {
  const factory InProfileState(final ProfileEntity profile) =
      _$InProfileStateImpl;

  ProfileEntity get profile;
  @JsonKey(ignore: true)
  _$$InProfileStateImplCopyWith<_$InProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorProfileStateImplCopyWith<$Res> {
  factory _$$ErrorProfileStateImplCopyWith(_$ErrorProfileStateImpl value,
          $Res Function(_$ErrorProfileStateImpl) then) =
      __$$ErrorProfileStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorProfileStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ErrorProfileStateImpl>
    implements _$$ErrorProfileStateImplCopyWith<$Res> {
  __$$ErrorProfileStateImplCopyWithImpl(_$ErrorProfileStateImpl _value,
      $Res Function(_$ErrorProfileStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorProfileStateImpl implements ErrorProfileState {
  const _$ErrorProfileStateImpl();

  @override
  String toString() {
    return 'ProfileState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorProfileStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ProfileEntity> profiles) noProfile,
    required TResult Function() registration,
    required TResult Function(ProfileEntity profile) inProfile,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ProfileEntity> profiles)? noProfile,
    TResult? Function()? registration,
    TResult? Function(ProfileEntity profile)? inProfile,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ProfileEntity> profiles)? noProfile,
    TResult Function()? registration,
    TResult Function(ProfileEntity profile)? inProfile,
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
    required TResult Function(LoadingProfileState value) loading,
    required TResult Function(NoProfileState value) noProfile,
    required TResult Function(ProfileStateRegistaration value) registration,
    required TResult Function(InProfileState value) inProfile,
    required TResult Function(ErrorProfileState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingProfileState value)? loading,
    TResult? Function(NoProfileState value)? noProfile,
    TResult? Function(ProfileStateRegistaration value)? registration,
    TResult? Function(InProfileState value)? inProfile,
    TResult? Function(ErrorProfileState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingProfileState value)? loading,
    TResult Function(NoProfileState value)? noProfile,
    TResult Function(ProfileStateRegistaration value)? registration,
    TResult Function(InProfileState value)? inProfile,
    TResult Function(ErrorProfileState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorProfileState implements ProfileState {
  const factory ErrorProfileState() = _$ErrorProfileStateImpl;
}
