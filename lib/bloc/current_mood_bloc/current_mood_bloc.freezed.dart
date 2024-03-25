// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_mood_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CurrentMoodEvent {
  MoodRecordEntity? get mood => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MoodRecordEntity? mood) load,
    required TResult Function(MoodRecordEntity mood) write,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MoodRecordEntity? mood)? load,
    TResult? Function(MoodRecordEntity mood)? write,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MoodRecordEntity? mood)? load,
    TResult Function(MoodRecordEntity mood)? write,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadCurrentMood value) load,
    required TResult Function(_WriteCurrentMood value) write,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCurrentMood value)? load,
    TResult? Function(_WriteCurrentMood value)? write,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCurrentMood value)? load,
    TResult Function(_WriteCurrentMood value)? write,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurrentMoodEventCopyWith<CurrentMoodEvent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentMoodEventCopyWith<$Res> {
  factory $CurrentMoodEventCopyWith(CurrentMoodEvent value, $Res Function(CurrentMoodEvent) then) =
      _$CurrentMoodEventCopyWithImpl<$Res, CurrentMoodEvent>;
  @useResult
  $Res call({MoodRecordEntity mood});
}

/// @nodoc
class _$CurrentMoodEventCopyWithImpl<$Res, $Val extends CurrentMoodEvent> implements $CurrentMoodEventCopyWith<$Res> {
  _$CurrentMoodEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mood = null,
  }) {
    return _then(_value.copyWith(
      mood: null == mood
          ? _value.mood!
          : mood // ignore: cast_nullable_to_non_nullable
              as MoodRecordEntity,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadCurrentMoodImplCopyWith<$Res> implements $CurrentMoodEventCopyWith<$Res> {
  factory _$$LoadCurrentMoodImplCopyWith(_$LoadCurrentMoodImpl value, $Res Function(_$LoadCurrentMoodImpl) then) =
      __$$LoadCurrentMoodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MoodRecordEntity? mood});
}

/// @nodoc
class __$$LoadCurrentMoodImplCopyWithImpl<$Res> extends _$CurrentMoodEventCopyWithImpl<$Res, _$LoadCurrentMoodImpl>
    implements _$$LoadCurrentMoodImplCopyWith<$Res> {
  __$$LoadCurrentMoodImplCopyWithImpl(_$LoadCurrentMoodImpl _value, $Res Function(_$LoadCurrentMoodImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mood = freezed,
  }) {
    return _then(_$LoadCurrentMoodImpl(
      freezed == mood
          ? _value.mood
          : mood // ignore: cast_nullable_to_non_nullable
              as MoodRecordEntity?,
    ));
  }
}

/// @nodoc

class _$LoadCurrentMoodImpl implements _LoadCurrentMood {
  const _$LoadCurrentMoodImpl(this.mood);

  @override
  final MoodRecordEntity? mood;

  @override
  String toString() {
    return 'CurrentMoodEvent.load(mood: $mood)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadCurrentMoodImpl &&
            (identical(other.mood, mood) || other.mood == mood));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mood);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadCurrentMoodImplCopyWith<_$LoadCurrentMoodImpl> get copyWith =>
      __$$LoadCurrentMoodImplCopyWithImpl<_$LoadCurrentMoodImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MoodRecordEntity? mood) load,
    required TResult Function(MoodRecordEntity mood) write,
  }) {
    return load(mood);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MoodRecordEntity? mood)? load,
    TResult? Function(MoodRecordEntity mood)? write,
  }) {
    return load?.call(mood);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MoodRecordEntity? mood)? load,
    TResult Function(MoodRecordEntity mood)? write,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(mood);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadCurrentMood value) load,
    required TResult Function(_WriteCurrentMood value) write,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCurrentMood value)? load,
    TResult? Function(_WriteCurrentMood value)? write,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCurrentMood value)? load,
    TResult Function(_WriteCurrentMood value)? write,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _LoadCurrentMood implements CurrentMoodEvent {
  const factory _LoadCurrentMood(final MoodRecordEntity? mood) = _$LoadCurrentMoodImpl;

  @override
  MoodRecordEntity? get mood;
  @override
  @JsonKey(ignore: true)
  _$$LoadCurrentMoodImplCopyWith<_$LoadCurrentMoodImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WriteCurrentMoodImplCopyWith<$Res> implements $CurrentMoodEventCopyWith<$Res> {
  factory _$$WriteCurrentMoodImplCopyWith(_$WriteCurrentMoodImpl value, $Res Function(_$WriteCurrentMoodImpl) then) =
      __$$WriteCurrentMoodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MoodRecordEntity mood});
}

/// @nodoc
class __$$WriteCurrentMoodImplCopyWithImpl<$Res> extends _$CurrentMoodEventCopyWithImpl<$Res, _$WriteCurrentMoodImpl>
    implements _$$WriteCurrentMoodImplCopyWith<$Res> {
  __$$WriteCurrentMoodImplCopyWithImpl(_$WriteCurrentMoodImpl _value, $Res Function(_$WriteCurrentMoodImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mood = null,
  }) {
    return _then(_$WriteCurrentMoodImpl(
      null == mood
          ? _value.mood
          : mood // ignore: cast_nullable_to_non_nullable
              as MoodRecordEntity,
    ));
  }
}

/// @nodoc

class _$WriteCurrentMoodImpl implements _WriteCurrentMood {
  const _$WriteCurrentMoodImpl(this.mood);

  @override
  final MoodRecordEntity mood;

  @override
  String toString() {
    return 'CurrentMoodEvent.write(mood: $mood)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WriteCurrentMoodImpl &&
            (identical(other.mood, mood) || other.mood == mood));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mood);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WriteCurrentMoodImplCopyWith<_$WriteCurrentMoodImpl> get copyWith =>
      __$$WriteCurrentMoodImplCopyWithImpl<_$WriteCurrentMoodImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MoodRecordEntity? mood) load,
    required TResult Function(MoodRecordEntity mood) write,
  }) {
    return write(mood);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MoodRecordEntity? mood)? load,
    TResult? Function(MoodRecordEntity mood)? write,
  }) {
    return write?.call(mood);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MoodRecordEntity? mood)? load,
    TResult Function(MoodRecordEntity mood)? write,
    required TResult orElse(),
  }) {
    if (write != null) {
      return write(mood);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadCurrentMood value) load,
    required TResult Function(_WriteCurrentMood value) write,
  }) {
    return write(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCurrentMood value)? load,
    TResult? Function(_WriteCurrentMood value)? write,
  }) {
    return write?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCurrentMood value)? load,
    TResult Function(_WriteCurrentMood value)? write,
    required TResult orElse(),
  }) {
    if (write != null) {
      return write(this);
    }
    return orElse();
  }
}

abstract class _WriteCurrentMood implements CurrentMoodEvent {
  const factory _WriteCurrentMood(final MoodRecordEntity mood) = _$WriteCurrentMoodImpl;

  @override
  MoodRecordEntity get mood;
  @override
  @JsonKey(ignore: true)
  _$$WriteCurrentMoodImplCopyWith<_$WriteCurrentMoodImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CurrentMoodState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(MoodRecordEntity mood) loaded,
    required TResult Function() notSet,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(MoodRecordEntity mood)? loaded,
    TResult? Function()? notSet,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(MoodRecordEntity mood)? loaded,
    TResult Function()? notSet,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCurrentMoodState value) init,
    required TResult Function(_CurrentMoodLoadedState value) loaded,
    required TResult Function(_MoodNoSetState value) notSet,
    required TResult Function(_ErrorCurrentMoodState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCurrentMoodState value)? init,
    TResult? Function(_CurrentMoodLoadedState value)? loaded,
    TResult? Function(_MoodNoSetState value)? notSet,
    TResult? Function(_ErrorCurrentMoodState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCurrentMoodState value)? init,
    TResult Function(_CurrentMoodLoadedState value)? loaded,
    TResult Function(_MoodNoSetState value)? notSet,
    TResult Function(_ErrorCurrentMoodState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentMoodStateCopyWith<$Res> {
  factory $CurrentMoodStateCopyWith(CurrentMoodState value, $Res Function(CurrentMoodState) then) =
      _$CurrentMoodStateCopyWithImpl<$Res, CurrentMoodState>;
}

/// @nodoc
class _$CurrentMoodStateCopyWithImpl<$Res, $Val extends CurrentMoodState> implements $CurrentMoodStateCopyWith<$Res> {
  _$CurrentMoodStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialCurrentMoodStateImplCopyWith<$Res> {
  factory _$$InitialCurrentMoodStateImplCopyWith(
          _$InitialCurrentMoodStateImpl value, $Res Function(_$InitialCurrentMoodStateImpl) then) =
      __$$InitialCurrentMoodStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCurrentMoodStateImplCopyWithImpl<$Res>
    extends _$CurrentMoodStateCopyWithImpl<$Res, _$InitialCurrentMoodStateImpl>
    implements _$$InitialCurrentMoodStateImplCopyWith<$Res> {
  __$$InitialCurrentMoodStateImplCopyWithImpl(
      _$InitialCurrentMoodStateImpl _value, $Res Function(_$InitialCurrentMoodStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialCurrentMoodStateImpl implements _InitialCurrentMoodState {
  const _$InitialCurrentMoodStateImpl();

  @override
  String toString() {
    return 'CurrentMoodState.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$InitialCurrentMoodStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(MoodRecordEntity mood) loaded,
    required TResult Function() notSet,
    required TResult Function() error,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(MoodRecordEntity mood)? loaded,
    TResult? Function()? notSet,
    TResult? Function()? error,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(MoodRecordEntity mood)? loaded,
    TResult Function()? notSet,
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
    required TResult Function(_InitialCurrentMoodState value) init,
    required TResult Function(_CurrentMoodLoadedState value) loaded,
    required TResult Function(_MoodNoSetState value) notSet,
    required TResult Function(_ErrorCurrentMoodState value) error,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCurrentMoodState value)? init,
    TResult? Function(_CurrentMoodLoadedState value)? loaded,
    TResult? Function(_MoodNoSetState value)? notSet,
    TResult? Function(_ErrorCurrentMoodState value)? error,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCurrentMoodState value)? init,
    TResult Function(_CurrentMoodLoadedState value)? loaded,
    TResult Function(_MoodNoSetState value)? notSet,
    TResult Function(_ErrorCurrentMoodState value)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _InitialCurrentMoodState implements CurrentMoodState {
  const factory _InitialCurrentMoodState() = _$InitialCurrentMoodStateImpl;
}

/// @nodoc
abstract class _$$CurrentMoodLoadedStateImplCopyWith<$Res> {
  factory _$$CurrentMoodLoadedStateImplCopyWith(
          _$CurrentMoodLoadedStateImpl value, $Res Function(_$CurrentMoodLoadedStateImpl) then) =
      __$$CurrentMoodLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MoodRecordEntity mood});
}

/// @nodoc
class __$$CurrentMoodLoadedStateImplCopyWithImpl<$Res>
    extends _$CurrentMoodStateCopyWithImpl<$Res, _$CurrentMoodLoadedStateImpl>
    implements _$$CurrentMoodLoadedStateImplCopyWith<$Res> {
  __$$CurrentMoodLoadedStateImplCopyWithImpl(
      _$CurrentMoodLoadedStateImpl _value, $Res Function(_$CurrentMoodLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mood = null,
  }) {
    return _then(_$CurrentMoodLoadedStateImpl(
      null == mood
          ? _value.mood
          : mood // ignore: cast_nullable_to_non_nullable
              as MoodRecordEntity,
    ));
  }
}

/// @nodoc

class _$CurrentMoodLoadedStateImpl implements _CurrentMoodLoadedState {
  const _$CurrentMoodLoadedStateImpl(this.mood);

  @override
  final MoodRecordEntity mood;

  @override
  String toString() {
    return 'CurrentMoodState.loaded(mood: $mood)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentMoodLoadedStateImpl &&
            (identical(other.mood, mood) || other.mood == mood));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mood);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentMoodLoadedStateImplCopyWith<_$CurrentMoodLoadedStateImpl> get copyWith =>
      __$$CurrentMoodLoadedStateImplCopyWithImpl<_$CurrentMoodLoadedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(MoodRecordEntity mood) loaded,
    required TResult Function() notSet,
    required TResult Function() error,
  }) {
    return loaded(mood);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(MoodRecordEntity mood)? loaded,
    TResult? Function()? notSet,
    TResult? Function()? error,
  }) {
    return loaded?.call(mood);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(MoodRecordEntity mood)? loaded,
    TResult Function()? notSet,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(mood);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCurrentMoodState value) init,
    required TResult Function(_CurrentMoodLoadedState value) loaded,
    required TResult Function(_MoodNoSetState value) notSet,
    required TResult Function(_ErrorCurrentMoodState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCurrentMoodState value)? init,
    TResult? Function(_CurrentMoodLoadedState value)? loaded,
    TResult? Function(_MoodNoSetState value)? notSet,
    TResult? Function(_ErrorCurrentMoodState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCurrentMoodState value)? init,
    TResult Function(_CurrentMoodLoadedState value)? loaded,
    TResult Function(_MoodNoSetState value)? notSet,
    TResult Function(_ErrorCurrentMoodState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _CurrentMoodLoadedState implements CurrentMoodState {
  const factory _CurrentMoodLoadedState(final MoodRecordEntity mood) = _$CurrentMoodLoadedStateImpl;

  MoodRecordEntity get mood;
  @JsonKey(ignore: true)
  _$$CurrentMoodLoadedStateImplCopyWith<_$CurrentMoodLoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MoodNoSetStateImplCopyWith<$Res> {
  factory _$$MoodNoSetStateImplCopyWith(_$MoodNoSetStateImpl value, $Res Function(_$MoodNoSetStateImpl) then) =
      __$$MoodNoSetStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MoodNoSetStateImplCopyWithImpl<$Res> extends _$CurrentMoodStateCopyWithImpl<$Res, _$MoodNoSetStateImpl>
    implements _$$MoodNoSetStateImplCopyWith<$Res> {
  __$$MoodNoSetStateImplCopyWithImpl(_$MoodNoSetStateImpl _value, $Res Function(_$MoodNoSetStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MoodNoSetStateImpl implements _MoodNoSetState {
  const _$MoodNoSetStateImpl();

  @override
  String toString() {
    return 'CurrentMoodState.notSet()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$MoodNoSetStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(MoodRecordEntity mood) loaded,
    required TResult Function() notSet,
    required TResult Function() error,
  }) {
    return notSet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(MoodRecordEntity mood)? loaded,
    TResult? Function()? notSet,
    TResult? Function()? error,
  }) {
    return notSet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(MoodRecordEntity mood)? loaded,
    TResult Function()? notSet,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (notSet != null) {
      return notSet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCurrentMoodState value) init,
    required TResult Function(_CurrentMoodLoadedState value) loaded,
    required TResult Function(_MoodNoSetState value) notSet,
    required TResult Function(_ErrorCurrentMoodState value) error,
  }) {
    return notSet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCurrentMoodState value)? init,
    TResult? Function(_CurrentMoodLoadedState value)? loaded,
    TResult? Function(_MoodNoSetState value)? notSet,
    TResult? Function(_ErrorCurrentMoodState value)? error,
  }) {
    return notSet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCurrentMoodState value)? init,
    TResult Function(_CurrentMoodLoadedState value)? loaded,
    TResult Function(_MoodNoSetState value)? notSet,
    TResult Function(_ErrorCurrentMoodState value)? error,
    required TResult orElse(),
  }) {
    if (notSet != null) {
      return notSet(this);
    }
    return orElse();
  }
}

abstract class _MoodNoSetState implements CurrentMoodState {
  const factory _MoodNoSetState() = _$MoodNoSetStateImpl;
}

/// @nodoc
abstract class _$$ErrorCurrentMoodStateImplCopyWith<$Res> {
  factory _$$ErrorCurrentMoodStateImplCopyWith(
          _$ErrorCurrentMoodStateImpl value, $Res Function(_$ErrorCurrentMoodStateImpl) then) =
      __$$ErrorCurrentMoodStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorCurrentMoodStateImplCopyWithImpl<$Res>
    extends _$CurrentMoodStateCopyWithImpl<$Res, _$ErrorCurrentMoodStateImpl>
    implements _$$ErrorCurrentMoodStateImplCopyWith<$Res> {
  __$$ErrorCurrentMoodStateImplCopyWithImpl(
      _$ErrorCurrentMoodStateImpl _value, $Res Function(_$ErrorCurrentMoodStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorCurrentMoodStateImpl implements _ErrorCurrentMoodState {
  const _$ErrorCurrentMoodStateImpl();

  @override
  String toString() {
    return 'CurrentMoodState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$ErrorCurrentMoodStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(MoodRecordEntity mood) loaded,
    required TResult Function() notSet,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(MoodRecordEntity mood)? loaded,
    TResult? Function()? notSet,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(MoodRecordEntity mood)? loaded,
    TResult Function()? notSet,
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
    required TResult Function(_InitialCurrentMoodState value) init,
    required TResult Function(_CurrentMoodLoadedState value) loaded,
    required TResult Function(_MoodNoSetState value) notSet,
    required TResult Function(_ErrorCurrentMoodState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCurrentMoodState value)? init,
    TResult? Function(_CurrentMoodLoadedState value)? loaded,
    TResult? Function(_MoodNoSetState value)? notSet,
    TResult? Function(_ErrorCurrentMoodState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCurrentMoodState value)? init,
    TResult Function(_CurrentMoodLoadedState value)? loaded,
    TResult Function(_MoodNoSetState value)? notSet,
    TResult Function(_ErrorCurrentMoodState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorCurrentMoodState implements CurrentMoodState {
  const factory _ErrorCurrentMoodState() = _$ErrorCurrentMoodStateImpl;
}
