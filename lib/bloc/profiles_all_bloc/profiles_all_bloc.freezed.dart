// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profiles_all_bloc.dart';

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
    required TResult Function(List<ProfileEntity> profiles) load,
    required TResult Function(int id) select,
    required TResult Function(ProfileEntity profile) add,
    required TResult Function(int id) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ProfileEntity> profiles)? load,
    TResult? Function(int id)? select,
    TResult? Function(ProfileEntity profile)? add,
    TResult? Function(int id)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ProfileEntity> profiles)? load,
    TResult Function(int id)? select,
    TResult Function(ProfileEntity profile)? add,
    TResult Function(int id)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadProfiles value) load,
    required TResult Function(_SelectProfile value) select,
    required TResult Function(_AddProfile value) add,
    required TResult Function(_DeleteProfile value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadProfiles value)? load,
    TResult? Function(_SelectProfile value)? select,
    TResult? Function(_AddProfile value)? add,
    TResult? Function(_DeleteProfile value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadProfiles value)? load,
    TResult Function(_SelectProfile value)? select,
    TResult Function(_AddProfile value)? add,
    TResult Function(_DeleteProfile value)? delete,
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
abstract class _$$LoadProfilesImplCopyWith<$Res> {
  factory _$$LoadProfilesImplCopyWith(_$LoadProfilesImpl value, $Res Function(_$LoadProfilesImpl) then) =
      __$$LoadProfilesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProfileEntity> profiles});
}

/// @nodoc
class __$$LoadProfilesImplCopyWithImpl<$Res> extends _$ProfilesAllEventCopyWithImpl<$Res, _$LoadProfilesImpl>
    implements _$$LoadProfilesImplCopyWith<$Res> {
  __$$LoadProfilesImplCopyWithImpl(_$LoadProfilesImpl _value, $Res Function(_$LoadProfilesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profiles = null,
  }) {
    return _then(_$LoadProfilesImpl(
      null == profiles
          ? _value._profiles
          : profiles // ignore: cast_nullable_to_non_nullable
              as List<ProfileEntity>,
    ));
  }
}

/// @nodoc

class _$LoadProfilesImpl implements _LoadProfiles {
  const _$LoadProfilesImpl(final List<ProfileEntity> profiles) : _profiles = profiles;

  final List<ProfileEntity> _profiles;
  @override
  List<ProfileEntity> get profiles {
    if (_profiles is EqualUnmodifiableListView) return _profiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_profiles);
  }

  @override
  String toString() {
    return 'ProfilesAllEvent.load(profiles: $profiles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadProfilesImpl &&
            const DeepCollectionEquality().equals(other._profiles, _profiles));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_profiles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadProfilesImplCopyWith<_$LoadProfilesImpl> get copyWith =>
      __$$LoadProfilesImplCopyWithImpl<_$LoadProfilesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ProfileEntity> profiles) load,
    required TResult Function(int id) select,
    required TResult Function(ProfileEntity profile) add,
    required TResult Function(int id) delete,
  }) {
    return load(profiles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ProfileEntity> profiles)? load,
    TResult? Function(int id)? select,
    TResult? Function(ProfileEntity profile)? add,
    TResult? Function(int id)? delete,
  }) {
    return load?.call(profiles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ProfileEntity> profiles)? load,
    TResult Function(int id)? select,
    TResult Function(ProfileEntity profile)? add,
    TResult Function(int id)? delete,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(profiles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadProfiles value) load,
    required TResult Function(_SelectProfile value) select,
    required TResult Function(_AddProfile value) add,
    required TResult Function(_DeleteProfile value) delete,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadProfiles value)? load,
    TResult? Function(_SelectProfile value)? select,
    TResult? Function(_AddProfile value)? add,
    TResult? Function(_DeleteProfile value)? delete,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadProfiles value)? load,
    TResult Function(_SelectProfile value)? select,
    TResult Function(_AddProfile value)? add,
    TResult Function(_DeleteProfile value)? delete,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _LoadProfiles implements ProfilesAllEvent {
  const factory _LoadProfiles(final List<ProfileEntity> profiles) = _$LoadProfilesImpl;

  List<ProfileEntity> get profiles;
  @JsonKey(ignore: true)
  _$$LoadProfilesImplCopyWith<_$LoadProfilesImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectProfileImplCopyWith<$Res> {
  factory _$$SelectProfileImplCopyWith(_$SelectProfileImpl value, $Res Function(_$SelectProfileImpl) then) =
      __$$SelectProfileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$SelectProfileImplCopyWithImpl<$Res> extends _$ProfilesAllEventCopyWithImpl<$Res, _$SelectProfileImpl>
    implements _$$SelectProfileImplCopyWith<$Res> {
  __$$SelectProfileImplCopyWithImpl(_$SelectProfileImpl _value, $Res Function(_$SelectProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$SelectProfileImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelectProfileImpl implements _SelectProfile {
  const _$SelectProfileImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'ProfilesAllEvent.select(id: $id)';
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
    required TResult Function(List<ProfileEntity> profiles) load,
    required TResult Function(int id) select,
    required TResult Function(ProfileEntity profile) add,
    required TResult Function(int id) delete,
  }) {
    return select(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ProfileEntity> profiles)? load,
    TResult? Function(int id)? select,
    TResult? Function(ProfileEntity profile)? add,
    TResult? Function(int id)? delete,
  }) {
    return select?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ProfileEntity> profiles)? load,
    TResult Function(int id)? select,
    TResult Function(ProfileEntity profile)? add,
    TResult Function(int id)? delete,
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
    required TResult Function(_LoadProfiles value) load,
    required TResult Function(_SelectProfile value) select,
    required TResult Function(_AddProfile value) add,
    required TResult Function(_DeleteProfile value) delete,
  }) {
    return select(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadProfiles value)? load,
    TResult? Function(_SelectProfile value)? select,
    TResult? Function(_AddProfile value)? add,
    TResult? Function(_DeleteProfile value)? delete,
  }) {
    return select?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadProfiles value)? load,
    TResult Function(_SelectProfile value)? select,
    TResult Function(_AddProfile value)? add,
    TResult Function(_DeleteProfile value)? delete,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(this);
    }
    return orElse();
  }
}

abstract class _SelectProfile implements ProfilesAllEvent {
  const factory _SelectProfile(final int id) = _$SelectProfileImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$SelectProfileImplCopyWith<_$SelectProfileImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddProfileImplCopyWith<$Res> {
  factory _$$AddProfileImplCopyWith(_$AddProfileImpl value, $Res Function(_$AddProfileImpl) then) =
      __$$AddProfileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProfileEntity profile});

  $ProfileEntityCopyWith<$Res> get profile;
}

/// @nodoc
class __$$AddProfileImplCopyWithImpl<$Res> extends _$ProfilesAllEventCopyWithImpl<$Res, _$AddProfileImpl>
    implements _$$AddProfileImplCopyWith<$Res> {
  __$$AddProfileImplCopyWithImpl(_$AddProfileImpl _value, $Res Function(_$AddProfileImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
  }) {
    return _then(_$AddProfileImpl(
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

class _$AddProfileImpl implements _AddProfile {
  const _$AddProfileImpl(this.profile);

  @override
  final ProfileEntity profile;

  @override
  String toString() {
    return 'ProfilesAllEvent.add(profile: $profile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddProfileImpl &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddProfileImplCopyWith<_$AddProfileImpl> get copyWith =>
      __$$AddProfileImplCopyWithImpl<_$AddProfileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ProfileEntity> profiles) load,
    required TResult Function(int id) select,
    required TResult Function(ProfileEntity profile) add,
    required TResult Function(int id) delete,
  }) {
    return add(profile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ProfileEntity> profiles)? load,
    TResult? Function(int id)? select,
    TResult? Function(ProfileEntity profile)? add,
    TResult? Function(int id)? delete,
  }) {
    return add?.call(profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ProfileEntity> profiles)? load,
    TResult Function(int id)? select,
    TResult Function(ProfileEntity profile)? add,
    TResult Function(int id)? delete,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadProfiles value) load,
    required TResult Function(_SelectProfile value) select,
    required TResult Function(_AddProfile value) add,
    required TResult Function(_DeleteProfile value) delete,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadProfiles value)? load,
    TResult? Function(_SelectProfile value)? select,
    TResult? Function(_AddProfile value)? add,
    TResult? Function(_DeleteProfile value)? delete,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadProfiles value)? load,
    TResult Function(_SelectProfile value)? select,
    TResult Function(_AddProfile value)? add,
    TResult Function(_DeleteProfile value)? delete,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _AddProfile implements ProfilesAllEvent {
  const factory _AddProfile(final ProfileEntity profile) = _$AddProfileImpl;

  ProfileEntity get profile;
  @JsonKey(ignore: true)
  _$$AddProfileImplCopyWith<_$AddProfileImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteProfileImplCopyWith<$Res> {
  factory _$$DeleteProfileImplCopyWith(_$DeleteProfileImpl value, $Res Function(_$DeleteProfileImpl) then) =
      __$$DeleteProfileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteProfileImplCopyWithImpl<$Res> extends _$ProfilesAllEventCopyWithImpl<$Res, _$DeleteProfileImpl>
    implements _$$DeleteProfileImplCopyWith<$Res> {
  __$$DeleteProfileImplCopyWithImpl(_$DeleteProfileImpl _value, $Res Function(_$DeleteProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteProfileImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteProfileImpl implements _DeleteProfile {
  const _$DeleteProfileImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'ProfilesAllEvent.delete(id: $id)';
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
    required TResult Function(List<ProfileEntity> profiles) load,
    required TResult Function(int id) select,
    required TResult Function(ProfileEntity profile) add,
    required TResult Function(int id) delete,
  }) {
    return delete(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ProfileEntity> profiles)? load,
    TResult? Function(int id)? select,
    TResult? Function(ProfileEntity profile)? add,
    TResult? Function(int id)? delete,
  }) {
    return delete?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ProfileEntity> profiles)? load,
    TResult Function(int id)? select,
    TResult Function(ProfileEntity profile)? add,
    TResult Function(int id)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadProfiles value) load,
    required TResult Function(_SelectProfile value) select,
    required TResult Function(_AddProfile value) add,
    required TResult Function(_DeleteProfile value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadProfiles value)? load,
    TResult? Function(_SelectProfile value)? select,
    TResult? Function(_AddProfile value)? add,
    TResult? Function(_DeleteProfile value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadProfiles value)? load,
    TResult Function(_SelectProfile value)? select,
    TResult Function(_AddProfile value)? add,
    TResult Function(_DeleteProfile value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _DeleteProfile implements ProfilesAllEvent {
  const factory _DeleteProfile(final int id) = _$DeleteProfileImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$DeleteProfileImplCopyWith<_$DeleteProfileImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfilesAllState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(List<ProfileEntity> profiles) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(List<ProfileEntity> profiles)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<ProfileEntity> profiles)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitProfilesAllState value) init,
    required TResult Function(_LoadedProfilesState value) loaded,
    required TResult Function(_ErrorProfilesState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitProfilesAllState value)? init,
    TResult? Function(_LoadedProfilesState value)? loaded,
    TResult? Function(_ErrorProfilesState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitProfilesAllState value)? init,
    TResult Function(_LoadedProfilesState value)? loaded,
    TResult Function(_ErrorProfilesState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfilesAllStateCopyWith<$Res> {
  factory $ProfilesAllStateCopyWith(ProfilesAllState value, $Res Function(ProfilesAllState) then) =
      _$ProfilesAllStateCopyWithImpl<$Res, ProfilesAllState>;
}

/// @nodoc
class _$ProfilesAllStateCopyWithImpl<$Res, $Val extends ProfilesAllState> implements $ProfilesAllStateCopyWith<$Res> {
  _$ProfilesAllStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitProfilesAllStateImplCopyWith<$Res> {
  factory _$$InitProfilesAllStateImplCopyWith(
          _$InitProfilesAllStateImpl value, $Res Function(_$InitProfilesAllStateImpl) then) =
      __$$InitProfilesAllStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitProfilesAllStateImplCopyWithImpl<$Res>
    extends _$ProfilesAllStateCopyWithImpl<$Res, _$InitProfilesAllStateImpl>
    implements _$$InitProfilesAllStateImplCopyWith<$Res> {
  __$$InitProfilesAllStateImplCopyWithImpl(
      _$InitProfilesAllStateImpl _value, $Res Function(_$InitProfilesAllStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitProfilesAllStateImpl implements _InitProfilesAllState {
  const _$InitProfilesAllStateImpl();

  @override
  String toString() {
    return 'ProfilesAllState.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$InitProfilesAllStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(List<ProfileEntity> profiles) loaded,
    required TResult Function() error,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(List<ProfileEntity> profiles)? loaded,
    TResult? Function()? error,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<ProfileEntity> profiles)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitProfilesAllState value) init,
    required TResult Function(_LoadedProfilesState value) loaded,
    required TResult Function(_ErrorProfilesState value) error,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitProfilesAllState value)? init,
    TResult? Function(_LoadedProfilesState value)? loaded,
    TResult? Function(_ErrorProfilesState value)? error,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitProfilesAllState value)? init,
    TResult Function(_LoadedProfilesState value)? loaded,
    TResult Function(_ErrorProfilesState value)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _InitProfilesAllState implements ProfilesAllState {
  const factory _InitProfilesAllState() = _$InitProfilesAllStateImpl;
}

/// @nodoc
abstract class _$$LoadedProfilesStateImplCopyWith<$Res> {
  factory _$$LoadedProfilesStateImplCopyWith(
          _$LoadedProfilesStateImpl value, $Res Function(_$LoadedProfilesStateImpl) then) =
      __$$LoadedProfilesStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProfileEntity> profiles});
}

/// @nodoc
class __$$LoadedProfilesStateImplCopyWithImpl<$Res>
    extends _$ProfilesAllStateCopyWithImpl<$Res, _$LoadedProfilesStateImpl>
    implements _$$LoadedProfilesStateImplCopyWith<$Res> {
  __$$LoadedProfilesStateImplCopyWithImpl(
      _$LoadedProfilesStateImpl _value, $Res Function(_$LoadedProfilesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profiles = null,
  }) {
    return _then(_$LoadedProfilesStateImpl(
      null == profiles
          ? _value._profiles
          : profiles // ignore: cast_nullable_to_non_nullable
              as List<ProfileEntity>,
    ));
  }
}

/// @nodoc

class _$LoadedProfilesStateImpl implements _LoadedProfilesState {
  const _$LoadedProfilesStateImpl(final List<ProfileEntity> profiles) : _profiles = profiles;

  final List<ProfileEntity> _profiles;
  @override
  List<ProfileEntity> get profiles {
    if (_profiles is EqualUnmodifiableListView) return _profiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_profiles);
  }

  @override
  String toString() {
    return 'ProfilesAllState.loaded(profiles: $profiles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedProfilesStateImpl &&
            const DeepCollectionEquality().equals(other._profiles, _profiles));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_profiles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedProfilesStateImplCopyWith<_$LoadedProfilesStateImpl> get copyWith =>
      __$$LoadedProfilesStateImplCopyWithImpl<_$LoadedProfilesStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(List<ProfileEntity> profiles) loaded,
    required TResult Function() error,
  }) {
    return loaded(profiles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(List<ProfileEntity> profiles)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(profiles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<ProfileEntity> profiles)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(profiles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitProfilesAllState value) init,
    required TResult Function(_LoadedProfilesState value) loaded,
    required TResult Function(_ErrorProfilesState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitProfilesAllState value)? init,
    TResult? Function(_LoadedProfilesState value)? loaded,
    TResult? Function(_ErrorProfilesState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitProfilesAllState value)? init,
    TResult Function(_LoadedProfilesState value)? loaded,
    TResult Function(_ErrorProfilesState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _LoadedProfilesState implements ProfilesAllState {
  const factory _LoadedProfilesState(final List<ProfileEntity> profiles) = _$LoadedProfilesStateImpl;

  List<ProfileEntity> get profiles;
  @JsonKey(ignore: true)
  _$$LoadedProfilesStateImplCopyWith<_$LoadedProfilesStateImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorProfilesStateImplCopyWith<$Res> {
  factory _$$ErrorProfilesStateImplCopyWith(
          _$ErrorProfilesStateImpl value, $Res Function(_$ErrorProfilesStateImpl) then) =
      __$$ErrorProfilesStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorProfilesStateImplCopyWithImpl<$Res>
    extends _$ProfilesAllStateCopyWithImpl<$Res, _$ErrorProfilesStateImpl>
    implements _$$ErrorProfilesStateImplCopyWith<$Res> {
  __$$ErrorProfilesStateImplCopyWithImpl(_$ErrorProfilesStateImpl _value, $Res Function(_$ErrorProfilesStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorProfilesStateImpl implements _ErrorProfilesState {
  const _$ErrorProfilesStateImpl();

  @override
  String toString() {
    return 'ProfilesAllState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$ErrorProfilesStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(List<ProfileEntity> profiles) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(List<ProfileEntity> profiles)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<ProfileEntity> profiles)? loaded,
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
    required TResult Function(_InitProfilesAllState value) init,
    required TResult Function(_LoadedProfilesState value) loaded,
    required TResult Function(_ErrorProfilesState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitProfilesAllState value)? init,
    TResult? Function(_LoadedProfilesState value)? loaded,
    TResult? Function(_ErrorProfilesState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitProfilesAllState value)? init,
    TResult Function(_LoadedProfilesState value)? loaded,
    TResult Function(_ErrorProfilesState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorProfilesState implements ProfilesAllState {
  const factory _ErrorProfilesState() = _$ErrorProfilesStateImpl;
}
