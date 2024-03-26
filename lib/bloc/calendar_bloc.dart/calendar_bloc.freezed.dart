// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CalendarEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(DateTime day) selectDay,
    required TResult Function() showRiscLevel,
    required TResult Function() showMoodLevel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(DateTime day)? selectDay,
    TResult? Function()? showRiscLevel,
    TResult? Function()? showMoodLevel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(DateTime day)? selectDay,
    TResult Function()? showRiscLevel,
    TResult Function()? showMoodLevel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitCalendarEvent value) init,
    required TResult Function(_SelectDayCalendarEvent value) selectDay,
    required TResult Function(_ShowRiscLevelCalendarEvent value) showRiscLevel,
    required TResult Function(_ShowMoodLevelCalendarEvent value) showMoodLevel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitCalendarEvent value)? init,
    TResult? Function(_SelectDayCalendarEvent value)? selectDay,
    TResult? Function(_ShowRiscLevelCalendarEvent value)? showRiscLevel,
    TResult? Function(_ShowMoodLevelCalendarEvent value)? showMoodLevel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitCalendarEvent value)? init,
    TResult Function(_SelectDayCalendarEvent value)? selectDay,
    TResult Function(_ShowRiscLevelCalendarEvent value)? showRiscLevel,
    TResult Function(_ShowMoodLevelCalendarEvent value)? showMoodLevel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarEventCopyWith<$Res> {
  factory $CalendarEventCopyWith(CalendarEvent value, $Res Function(CalendarEvent) then) =
      _$CalendarEventCopyWithImpl<$Res, CalendarEvent>;
}

/// @nodoc
class _$CalendarEventCopyWithImpl<$Res, $Val extends CalendarEvent> implements $CalendarEventCopyWith<$Res> {
  _$CalendarEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitCalendarEventImplCopyWith<$Res> {
  factory _$$InitCalendarEventImplCopyWith(_$InitCalendarEventImpl value, $Res Function(_$InitCalendarEventImpl) then) =
      __$$InitCalendarEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitCalendarEventImplCopyWithImpl<$Res> extends _$CalendarEventCopyWithImpl<$Res, _$InitCalendarEventImpl>
    implements _$$InitCalendarEventImplCopyWith<$Res> {
  __$$InitCalendarEventImplCopyWithImpl(_$InitCalendarEventImpl _value, $Res Function(_$InitCalendarEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitCalendarEventImpl implements _InitCalendarEvent {
  const _$InitCalendarEventImpl();

  @override
  String toString() {
    return 'CalendarEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$InitCalendarEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(DateTime day) selectDay,
    required TResult Function() showRiscLevel,
    required TResult Function() showMoodLevel,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(DateTime day)? selectDay,
    TResult? Function()? showRiscLevel,
    TResult? Function()? showMoodLevel,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(DateTime day)? selectDay,
    TResult Function()? showRiscLevel,
    TResult Function()? showMoodLevel,
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
    required TResult Function(_InitCalendarEvent value) init,
    required TResult Function(_SelectDayCalendarEvent value) selectDay,
    required TResult Function(_ShowRiscLevelCalendarEvent value) showRiscLevel,
    required TResult Function(_ShowMoodLevelCalendarEvent value) showMoodLevel,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitCalendarEvent value)? init,
    TResult? Function(_SelectDayCalendarEvent value)? selectDay,
    TResult? Function(_ShowRiscLevelCalendarEvent value)? showRiscLevel,
    TResult? Function(_ShowMoodLevelCalendarEvent value)? showMoodLevel,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitCalendarEvent value)? init,
    TResult Function(_SelectDayCalendarEvent value)? selectDay,
    TResult Function(_ShowRiscLevelCalendarEvent value)? showRiscLevel,
    TResult Function(_ShowMoodLevelCalendarEvent value)? showMoodLevel,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _InitCalendarEvent implements CalendarEvent {
  const factory _InitCalendarEvent() = _$InitCalendarEventImpl;
}

/// @nodoc
abstract class _$$SelectDayCalendarEventImplCopyWith<$Res> {
  factory _$$SelectDayCalendarEventImplCopyWith(
          _$SelectDayCalendarEventImpl value, $Res Function(_$SelectDayCalendarEventImpl) then) =
      __$$SelectDayCalendarEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime day});
}

/// @nodoc
class __$$SelectDayCalendarEventImplCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res, _$SelectDayCalendarEventImpl>
    implements _$$SelectDayCalendarEventImplCopyWith<$Res> {
  __$$SelectDayCalendarEventImplCopyWithImpl(
      _$SelectDayCalendarEventImpl _value, $Res Function(_$SelectDayCalendarEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
  }) {
    return _then(_$SelectDayCalendarEventImpl(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$SelectDayCalendarEventImpl implements _SelectDayCalendarEvent {
  const _$SelectDayCalendarEventImpl({required this.day});

  @override
  final DateTime day;

  @override
  String toString() {
    return 'CalendarEvent.selectDay(day: $day)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectDayCalendarEventImpl &&
            (identical(other.day, day) || other.day == day));
  }

  @override
  int get hashCode => Object.hash(runtimeType, day);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectDayCalendarEventImplCopyWith<_$SelectDayCalendarEventImpl> get copyWith =>
      __$$SelectDayCalendarEventImplCopyWithImpl<_$SelectDayCalendarEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(DateTime day) selectDay,
    required TResult Function() showRiscLevel,
    required TResult Function() showMoodLevel,
  }) {
    return selectDay(day);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(DateTime day)? selectDay,
    TResult? Function()? showRiscLevel,
    TResult? Function()? showMoodLevel,
  }) {
    return selectDay?.call(day);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(DateTime day)? selectDay,
    TResult Function()? showRiscLevel,
    TResult Function()? showMoodLevel,
    required TResult orElse(),
  }) {
    if (selectDay != null) {
      return selectDay(day);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitCalendarEvent value) init,
    required TResult Function(_SelectDayCalendarEvent value) selectDay,
    required TResult Function(_ShowRiscLevelCalendarEvent value) showRiscLevel,
    required TResult Function(_ShowMoodLevelCalendarEvent value) showMoodLevel,
  }) {
    return selectDay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitCalendarEvent value)? init,
    TResult? Function(_SelectDayCalendarEvent value)? selectDay,
    TResult? Function(_ShowRiscLevelCalendarEvent value)? showRiscLevel,
    TResult? Function(_ShowMoodLevelCalendarEvent value)? showMoodLevel,
  }) {
    return selectDay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitCalendarEvent value)? init,
    TResult Function(_SelectDayCalendarEvent value)? selectDay,
    TResult Function(_ShowRiscLevelCalendarEvent value)? showRiscLevel,
    TResult Function(_ShowMoodLevelCalendarEvent value)? showMoodLevel,
    required TResult orElse(),
  }) {
    if (selectDay != null) {
      return selectDay(this);
    }
    return orElse();
  }
}

abstract class _SelectDayCalendarEvent implements CalendarEvent {
  const factory _SelectDayCalendarEvent({required final DateTime day}) = _$SelectDayCalendarEventImpl;

  DateTime get day;
  @JsonKey(ignore: true)
  _$$SelectDayCalendarEventImplCopyWith<_$SelectDayCalendarEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowRiscLevelCalendarEventImplCopyWith<$Res> {
  factory _$$ShowRiscLevelCalendarEventImplCopyWith(
          _$ShowRiscLevelCalendarEventImpl value, $Res Function(_$ShowRiscLevelCalendarEventImpl) then) =
      __$$ShowRiscLevelCalendarEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowRiscLevelCalendarEventImplCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res, _$ShowRiscLevelCalendarEventImpl>
    implements _$$ShowRiscLevelCalendarEventImplCopyWith<$Res> {
  __$$ShowRiscLevelCalendarEventImplCopyWithImpl(
      _$ShowRiscLevelCalendarEventImpl _value, $Res Function(_$ShowRiscLevelCalendarEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShowRiscLevelCalendarEventImpl implements _ShowRiscLevelCalendarEvent {
  const _$ShowRiscLevelCalendarEventImpl();

  @override
  String toString() {
    return 'CalendarEvent.showRiscLevel()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$ShowRiscLevelCalendarEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(DateTime day) selectDay,
    required TResult Function() showRiscLevel,
    required TResult Function() showMoodLevel,
  }) {
    return showRiscLevel();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(DateTime day)? selectDay,
    TResult? Function()? showRiscLevel,
    TResult? Function()? showMoodLevel,
  }) {
    return showRiscLevel?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(DateTime day)? selectDay,
    TResult Function()? showRiscLevel,
    TResult Function()? showMoodLevel,
    required TResult orElse(),
  }) {
    if (showRiscLevel != null) {
      return showRiscLevel();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitCalendarEvent value) init,
    required TResult Function(_SelectDayCalendarEvent value) selectDay,
    required TResult Function(_ShowRiscLevelCalendarEvent value) showRiscLevel,
    required TResult Function(_ShowMoodLevelCalendarEvent value) showMoodLevel,
  }) {
    return showRiscLevel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitCalendarEvent value)? init,
    TResult? Function(_SelectDayCalendarEvent value)? selectDay,
    TResult? Function(_ShowRiscLevelCalendarEvent value)? showRiscLevel,
    TResult? Function(_ShowMoodLevelCalendarEvent value)? showMoodLevel,
  }) {
    return showRiscLevel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitCalendarEvent value)? init,
    TResult Function(_SelectDayCalendarEvent value)? selectDay,
    TResult Function(_ShowRiscLevelCalendarEvent value)? showRiscLevel,
    TResult Function(_ShowMoodLevelCalendarEvent value)? showMoodLevel,
    required TResult orElse(),
  }) {
    if (showRiscLevel != null) {
      return showRiscLevel(this);
    }
    return orElse();
  }
}

abstract class _ShowRiscLevelCalendarEvent implements CalendarEvent {
  const factory _ShowRiscLevelCalendarEvent() = _$ShowRiscLevelCalendarEventImpl;
}

/// @nodoc
abstract class _$$ShowMoodLevelCalendarEventImplCopyWith<$Res> {
  factory _$$ShowMoodLevelCalendarEventImplCopyWith(
          _$ShowMoodLevelCalendarEventImpl value, $Res Function(_$ShowMoodLevelCalendarEventImpl) then) =
      __$$ShowMoodLevelCalendarEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowMoodLevelCalendarEventImplCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res, _$ShowMoodLevelCalendarEventImpl>
    implements _$$ShowMoodLevelCalendarEventImplCopyWith<$Res> {
  __$$ShowMoodLevelCalendarEventImplCopyWithImpl(
      _$ShowMoodLevelCalendarEventImpl _value, $Res Function(_$ShowMoodLevelCalendarEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShowMoodLevelCalendarEventImpl implements _ShowMoodLevelCalendarEvent {
  const _$ShowMoodLevelCalendarEventImpl();

  @override
  String toString() {
    return 'CalendarEvent.showMoodLevel()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$ShowMoodLevelCalendarEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(DateTime day) selectDay,
    required TResult Function() showRiscLevel,
    required TResult Function() showMoodLevel,
  }) {
    return showMoodLevel();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(DateTime day)? selectDay,
    TResult? Function()? showRiscLevel,
    TResult? Function()? showMoodLevel,
  }) {
    return showMoodLevel?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(DateTime day)? selectDay,
    TResult Function()? showRiscLevel,
    TResult Function()? showMoodLevel,
    required TResult orElse(),
  }) {
    if (showMoodLevel != null) {
      return showMoodLevel();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitCalendarEvent value) init,
    required TResult Function(_SelectDayCalendarEvent value) selectDay,
    required TResult Function(_ShowRiscLevelCalendarEvent value) showRiscLevel,
    required TResult Function(_ShowMoodLevelCalendarEvent value) showMoodLevel,
  }) {
    return showMoodLevel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitCalendarEvent value)? init,
    TResult? Function(_SelectDayCalendarEvent value)? selectDay,
    TResult? Function(_ShowRiscLevelCalendarEvent value)? showRiscLevel,
    TResult? Function(_ShowMoodLevelCalendarEvent value)? showMoodLevel,
  }) {
    return showMoodLevel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitCalendarEvent value)? init,
    TResult Function(_SelectDayCalendarEvent value)? selectDay,
    TResult Function(_ShowRiscLevelCalendarEvent value)? showRiscLevel,
    TResult Function(_ShowMoodLevelCalendarEvent value)? showMoodLevel,
    required TResult orElse(),
  }) {
    if (showMoodLevel != null) {
      return showMoodLevel(this);
    }
    return orElse();
  }
}

abstract class _ShowMoodLevelCalendarEvent implements CalendarEvent {
  const factory _ShowMoodLevelCalendarEvent() = _$ShowMoodLevelCalendarEventImpl;
}

/// @nodoc
mixin _$CalendarState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Map<DateTime, RiscLevel> heatmap, MoodType? selectedDayMood, RiscLevel? selectedDayRisc)
        loadedRisc,
    required TResult Function(Map<DateTime, MoodType> heatmap, MoodType? selectedDayMood, RiscLevel? selectedDayRisc)
        loadedMood,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(Map<DateTime, RiscLevel> heatmap, MoodType? selectedDayMood, RiscLevel? selectedDayRisc)?
        loadedRisc,
    TResult? Function(Map<DateTime, MoodType> heatmap, MoodType? selectedDayMood, RiscLevel? selectedDayRisc)?
        loadedMood,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Map<DateTime, RiscLevel> heatmap, MoodType? selectedDayMood, RiscLevel? selectedDayRisc)?
        loadedRisc,
    TResult Function(Map<DateTime, MoodType> heatmap, MoodType? selectedDayMood, RiscLevel? selectedDayRisc)?
        loadedMood,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitCalendarState value) init,
    required TResult Function(LoadedRiscState value) loadedRisc,
    required TResult Function(LoadedMoodState value) loadedMood,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitCalendarState value)? init,
    TResult? Function(LoadedRiscState value)? loadedRisc,
    TResult? Function(LoadedMoodState value)? loadedMood,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitCalendarState value)? init,
    TResult Function(LoadedRiscState value)? loadedRisc,
    TResult Function(LoadedMoodState value)? loadedMood,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarStateCopyWith<$Res> {
  factory $CalendarStateCopyWith(CalendarState value, $Res Function(CalendarState) then) =
      _$CalendarStateCopyWithImpl<$Res, CalendarState>;
}

/// @nodoc
class _$CalendarStateCopyWithImpl<$Res, $Val extends CalendarState> implements $CalendarStateCopyWith<$Res> {
  _$CalendarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitCalendarStateImplCopyWith<$Res> {
  factory _$$InitCalendarStateImplCopyWith(_$InitCalendarStateImpl value, $Res Function(_$InitCalendarStateImpl) then) =
      __$$InitCalendarStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitCalendarStateImplCopyWithImpl<$Res> extends _$CalendarStateCopyWithImpl<$Res, _$InitCalendarStateImpl>
    implements _$$InitCalendarStateImplCopyWith<$Res> {
  __$$InitCalendarStateImplCopyWithImpl(_$InitCalendarStateImpl _value, $Res Function(_$InitCalendarStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitCalendarStateImpl implements InitCalendarState {
  const _$InitCalendarStateImpl();

  @override
  String toString() {
    return 'CalendarState.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$InitCalendarStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Map<DateTime, RiscLevel> heatmap, MoodType? selectedDayMood, RiscLevel? selectedDayRisc)
        loadedRisc,
    required TResult Function(Map<DateTime, MoodType> heatmap, MoodType? selectedDayMood, RiscLevel? selectedDayRisc)
        loadedMood,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(Map<DateTime, RiscLevel> heatmap, MoodType? selectedDayMood, RiscLevel? selectedDayRisc)?
        loadedRisc,
    TResult? Function(Map<DateTime, MoodType> heatmap, MoodType? selectedDayMood, RiscLevel? selectedDayRisc)?
        loadedMood,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Map<DateTime, RiscLevel> heatmap, MoodType? selectedDayMood, RiscLevel? selectedDayRisc)?
        loadedRisc,
    TResult Function(Map<DateTime, MoodType> heatmap, MoodType? selectedDayMood, RiscLevel? selectedDayRisc)?
        loadedMood,
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
    required TResult Function(InitCalendarState value) init,
    required TResult Function(LoadedRiscState value) loadedRisc,
    required TResult Function(LoadedMoodState value) loadedMood,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitCalendarState value)? init,
    TResult? Function(LoadedRiscState value)? loadedRisc,
    TResult? Function(LoadedMoodState value)? loadedMood,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitCalendarState value)? init,
    TResult Function(LoadedRiscState value)? loadedRisc,
    TResult Function(LoadedMoodState value)? loadedMood,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitCalendarState implements CalendarState {
  const factory InitCalendarState() = _$InitCalendarStateImpl;
}

/// @nodoc
abstract class _$$LoadedRiscStateImplCopyWith<$Res> {
  factory _$$LoadedRiscStateImplCopyWith(_$LoadedRiscStateImpl value, $Res Function(_$LoadedRiscStateImpl) then) =
      __$$LoadedRiscStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<DateTime, RiscLevel> heatmap, MoodType? selectedDayMood, RiscLevel? selectedDayRisc});
}

/// @nodoc
class __$$LoadedRiscStateImplCopyWithImpl<$Res> extends _$CalendarStateCopyWithImpl<$Res, _$LoadedRiscStateImpl>
    implements _$$LoadedRiscStateImplCopyWith<$Res> {
  __$$LoadedRiscStateImplCopyWithImpl(_$LoadedRiscStateImpl _value, $Res Function(_$LoadedRiscStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? heatmap = null,
    Object? selectedDayMood = freezed,
    Object? selectedDayRisc = freezed,
  }) {
    return _then(_$LoadedRiscStateImpl(
      heatmap: null == heatmap
          ? _value._heatmap
          : heatmap // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, RiscLevel>,
      selectedDayMood: freezed == selectedDayMood
          ? _value.selectedDayMood
          : selectedDayMood // ignore: cast_nullable_to_non_nullable
              as MoodType?,
      selectedDayRisc: freezed == selectedDayRisc
          ? _value.selectedDayRisc
          : selectedDayRisc // ignore: cast_nullable_to_non_nullable
              as RiscLevel?,
    ));
  }
}

/// @nodoc

class _$LoadedRiscStateImpl implements LoadedRiscState {
  const _$LoadedRiscStateImpl(
      {required final Map<DateTime, RiscLevel> heatmap, required this.selectedDayMood, required this.selectedDayRisc})
      : _heatmap = heatmap;

  final Map<DateTime, RiscLevel> _heatmap;
  @override
  Map<DateTime, RiscLevel> get heatmap {
    if (_heatmap is EqualUnmodifiableMapView) return _heatmap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_heatmap);
  }

  @override
  final MoodType? selectedDayMood;
  @override
  final RiscLevel? selectedDayRisc;

  @override
  String toString() {
    return 'CalendarState.loadedRisc(heatmap: $heatmap, selectedDayMood: $selectedDayMood, selectedDayRisc: $selectedDayRisc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedRiscStateImpl &&
            const DeepCollectionEquality().equals(other._heatmap, _heatmap) &&
            (identical(other.selectedDayMood, selectedDayMood) || other.selectedDayMood == selectedDayMood) &&
            (identical(other.selectedDayRisc, selectedDayRisc) || other.selectedDayRisc == selectedDayRisc));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_heatmap), selectedDayMood, selectedDayRisc);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedRiscStateImplCopyWith<_$LoadedRiscStateImpl> get copyWith =>
      __$$LoadedRiscStateImplCopyWithImpl<_$LoadedRiscStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Map<DateTime, RiscLevel> heatmap, MoodType? selectedDayMood, RiscLevel? selectedDayRisc)
        loadedRisc,
    required TResult Function(Map<DateTime, MoodType> heatmap, MoodType? selectedDayMood, RiscLevel? selectedDayRisc)
        loadedMood,
  }) {
    return loadedRisc(heatmap, selectedDayMood, selectedDayRisc);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(Map<DateTime, RiscLevel> heatmap, MoodType? selectedDayMood, RiscLevel? selectedDayRisc)?
        loadedRisc,
    TResult? Function(Map<DateTime, MoodType> heatmap, MoodType? selectedDayMood, RiscLevel? selectedDayRisc)?
        loadedMood,
  }) {
    return loadedRisc?.call(heatmap, selectedDayMood, selectedDayRisc);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Map<DateTime, RiscLevel> heatmap, MoodType? selectedDayMood, RiscLevel? selectedDayRisc)?
        loadedRisc,
    TResult Function(Map<DateTime, MoodType> heatmap, MoodType? selectedDayMood, RiscLevel? selectedDayRisc)?
        loadedMood,
    required TResult orElse(),
  }) {
    if (loadedRisc != null) {
      return loadedRisc(heatmap, selectedDayMood, selectedDayRisc);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitCalendarState value) init,
    required TResult Function(LoadedRiscState value) loadedRisc,
    required TResult Function(LoadedMoodState value) loadedMood,
  }) {
    return loadedRisc(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitCalendarState value)? init,
    TResult? Function(LoadedRiscState value)? loadedRisc,
    TResult? Function(LoadedMoodState value)? loadedMood,
  }) {
    return loadedRisc?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitCalendarState value)? init,
    TResult Function(LoadedRiscState value)? loadedRisc,
    TResult Function(LoadedMoodState value)? loadedMood,
    required TResult orElse(),
  }) {
    if (loadedRisc != null) {
      return loadedRisc(this);
    }
    return orElse();
  }
}

abstract class LoadedRiscState implements CalendarState {
  const factory LoadedRiscState(
      {required final Map<DateTime, RiscLevel> heatmap,
      required final MoodType? selectedDayMood,
      required final RiscLevel? selectedDayRisc}) = _$LoadedRiscStateImpl;

  Map<DateTime, RiscLevel> get heatmap;
  MoodType? get selectedDayMood;
  RiscLevel? get selectedDayRisc;
  @JsonKey(ignore: true)
  _$$LoadedRiscStateImplCopyWith<_$LoadedRiscStateImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedMoodStateImplCopyWith<$Res> {
  factory _$$LoadedMoodStateImplCopyWith(_$LoadedMoodStateImpl value, $Res Function(_$LoadedMoodStateImpl) then) =
      __$$LoadedMoodStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<DateTime, MoodType> heatmap, MoodType? selectedDayMood, RiscLevel? selectedDayRisc});
}

/// @nodoc
class __$$LoadedMoodStateImplCopyWithImpl<$Res> extends _$CalendarStateCopyWithImpl<$Res, _$LoadedMoodStateImpl>
    implements _$$LoadedMoodStateImplCopyWith<$Res> {
  __$$LoadedMoodStateImplCopyWithImpl(_$LoadedMoodStateImpl _value, $Res Function(_$LoadedMoodStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? heatmap = null,
    Object? selectedDayMood = freezed,
    Object? selectedDayRisc = freezed,
  }) {
    return _then(_$LoadedMoodStateImpl(
      heatmap: null == heatmap
          ? _value._heatmap
          : heatmap // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, MoodType>,
      selectedDayMood: freezed == selectedDayMood
          ? _value.selectedDayMood
          : selectedDayMood // ignore: cast_nullable_to_non_nullable
              as MoodType?,
      selectedDayRisc: freezed == selectedDayRisc
          ? _value.selectedDayRisc
          : selectedDayRisc // ignore: cast_nullable_to_non_nullable
              as RiscLevel?,
    ));
  }
}

/// @nodoc

class _$LoadedMoodStateImpl implements LoadedMoodState {
  const _$LoadedMoodStateImpl(
      {required final Map<DateTime, MoodType> heatmap, required this.selectedDayMood, required this.selectedDayRisc})
      : _heatmap = heatmap;

  final Map<DateTime, MoodType> _heatmap;
  @override
  Map<DateTime, MoodType> get heatmap {
    if (_heatmap is EqualUnmodifiableMapView) return _heatmap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_heatmap);
  }

  @override
  final MoodType? selectedDayMood;
  @override
  final RiscLevel? selectedDayRisc;

  @override
  String toString() {
    return 'CalendarState.loadedMood(heatmap: $heatmap, selectedDayMood: $selectedDayMood, selectedDayRisc: $selectedDayRisc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedMoodStateImpl &&
            const DeepCollectionEquality().equals(other._heatmap, _heatmap) &&
            (identical(other.selectedDayMood, selectedDayMood) || other.selectedDayMood == selectedDayMood) &&
            (identical(other.selectedDayRisc, selectedDayRisc) || other.selectedDayRisc == selectedDayRisc));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_heatmap), selectedDayMood, selectedDayRisc);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedMoodStateImplCopyWith<_$LoadedMoodStateImpl> get copyWith =>
      __$$LoadedMoodStateImplCopyWithImpl<_$LoadedMoodStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Map<DateTime, RiscLevel> heatmap, MoodType? selectedDayMood, RiscLevel? selectedDayRisc)
        loadedRisc,
    required TResult Function(Map<DateTime, MoodType> heatmap, MoodType? selectedDayMood, RiscLevel? selectedDayRisc)
        loadedMood,
  }) {
    return loadedMood(heatmap, selectedDayMood, selectedDayRisc);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(Map<DateTime, RiscLevel> heatmap, MoodType? selectedDayMood, RiscLevel? selectedDayRisc)?
        loadedRisc,
    TResult? Function(Map<DateTime, MoodType> heatmap, MoodType? selectedDayMood, RiscLevel? selectedDayRisc)?
        loadedMood,
  }) {
    return loadedMood?.call(heatmap, selectedDayMood, selectedDayRisc);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Map<DateTime, RiscLevel> heatmap, MoodType? selectedDayMood, RiscLevel? selectedDayRisc)?
        loadedRisc,
    TResult Function(Map<DateTime, MoodType> heatmap, MoodType? selectedDayMood, RiscLevel? selectedDayRisc)?
        loadedMood,
    required TResult orElse(),
  }) {
    if (loadedMood != null) {
      return loadedMood(heatmap, selectedDayMood, selectedDayRisc);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitCalendarState value) init,
    required TResult Function(LoadedRiscState value) loadedRisc,
    required TResult Function(LoadedMoodState value) loadedMood,
  }) {
    return loadedMood(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitCalendarState value)? init,
    TResult? Function(LoadedRiscState value)? loadedRisc,
    TResult? Function(LoadedMoodState value)? loadedMood,
  }) {
    return loadedMood?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitCalendarState value)? init,
    TResult Function(LoadedRiscState value)? loadedRisc,
    TResult Function(LoadedMoodState value)? loadedMood,
    required TResult orElse(),
  }) {
    if (loadedMood != null) {
      return loadedMood(this);
    }
    return orElse();
  }
}

abstract class LoadedMoodState implements CalendarState {
  const factory LoadedMoodState(
      {required final Map<DateTime, MoodType> heatmap,
      required final MoodType? selectedDayMood,
      required final RiscLevel? selectedDayRisc}) = _$LoadedMoodStateImpl;

  Map<DateTime, MoodType> get heatmap;
  MoodType? get selectedDayMood;
  RiscLevel? get selectedDayRisc;
  @JsonKey(ignore: true)
  _$$LoadedMoodStateImplCopyWith<_$LoadedMoodStateImpl> get copyWith => throw _privateConstructorUsedError;
}
