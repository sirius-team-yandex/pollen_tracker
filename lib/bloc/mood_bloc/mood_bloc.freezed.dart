// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mood_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MoodRecordsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int profileId, DateTime date) load,
    required TResult Function() logOut,
    required TResult Function(MoodRecordEntity mood) addMoodRecord,
    required TResult Function(MoodRecordEntity mood) updateMoodRecord,
    required TResult Function(MoodRecordEntity mood) deleteMoodRecord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int profileId, DateTime date)? load,
    TResult? Function()? logOut,
    TResult? Function(MoodRecordEntity mood)? addMoodRecord,
    TResult? Function(MoodRecordEntity mood)? updateMoodRecord,
    TResult? Function(MoodRecordEntity mood)? deleteMoodRecord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int profileId, DateTime date)? load,
    TResult Function()? logOut,
    TResult Function(MoodRecordEntity mood)? addMoodRecord,
    TResult Function(MoodRecordEntity mood)? updateMoodRecord,
    TResult Function(MoodRecordEntity mood)? deleteMoodRecord,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadMoodRecords value) load,
    required TResult Function(MoodRecordsLogOut value) logOut,
    required TResult Function(AddMoodRecord value) addMoodRecord,
    required TResult Function(UpdateMoodRecord value) updateMoodRecord,
    required TResult Function(DeleteMoodRecord value) deleteMoodRecord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadMoodRecords value)? load,
    TResult? Function(MoodRecordsLogOut value)? logOut,
    TResult? Function(AddMoodRecord value)? addMoodRecord,
    TResult? Function(UpdateMoodRecord value)? updateMoodRecord,
    TResult? Function(DeleteMoodRecord value)? deleteMoodRecord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadMoodRecords value)? load,
    TResult Function(MoodRecordsLogOut value)? logOut,
    TResult Function(AddMoodRecord value)? addMoodRecord,
    TResult Function(UpdateMoodRecord value)? updateMoodRecord,
    TResult Function(DeleteMoodRecord value)? deleteMoodRecord,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoodRecordsEventCopyWith<$Res> {
  factory $MoodRecordsEventCopyWith(MoodRecordsEvent value, $Res Function(MoodRecordsEvent) then) =
      _$MoodRecordsEventCopyWithImpl<$Res, MoodRecordsEvent>;
}

/// @nodoc
class _$MoodRecordsEventCopyWithImpl<$Res, $Val extends MoodRecordsEvent> implements $MoodRecordsEventCopyWith<$Res> {
  _$MoodRecordsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadMoodRecordsImplCopyWith<$Res> {
  factory _$$LoadMoodRecordsImplCopyWith(_$LoadMoodRecordsImpl value, $Res Function(_$LoadMoodRecordsImpl) then) =
      __$$LoadMoodRecordsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int profileId, DateTime date});
}

/// @nodoc
class __$$LoadMoodRecordsImplCopyWithImpl<$Res> extends _$MoodRecordsEventCopyWithImpl<$Res, _$LoadMoodRecordsImpl>
    implements _$$LoadMoodRecordsImplCopyWith<$Res> {
  __$$LoadMoodRecordsImplCopyWithImpl(_$LoadMoodRecordsImpl _value, $Res Function(_$LoadMoodRecordsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileId = null,
    Object? date = null,
  }) {
    return _then(_$LoadMoodRecordsImpl(
      profileId: null == profileId
          ? _value.profileId
          : profileId // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$LoadMoodRecordsImpl implements LoadMoodRecords {
  const _$LoadMoodRecordsImpl({required this.profileId, required this.date});

  @override
  final int profileId;
  @override
  final DateTime date;

  @override
  String toString() {
    return 'MoodRecordsEvent.load(profileId: $profileId, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadMoodRecordsImpl &&
            (identical(other.profileId, profileId) || other.profileId == profileId) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profileId, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadMoodRecordsImplCopyWith<_$LoadMoodRecordsImpl> get copyWith =>
      __$$LoadMoodRecordsImplCopyWithImpl<_$LoadMoodRecordsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int profileId, DateTime date) load,
    required TResult Function() logOut,
    required TResult Function(MoodRecordEntity mood) addMoodRecord,
    required TResult Function(MoodRecordEntity mood) updateMoodRecord,
    required TResult Function(MoodRecordEntity mood) deleteMoodRecord,
  }) {
    return load(profileId, date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int profileId, DateTime date)? load,
    TResult? Function()? logOut,
    TResult? Function(MoodRecordEntity mood)? addMoodRecord,
    TResult? Function(MoodRecordEntity mood)? updateMoodRecord,
    TResult? Function(MoodRecordEntity mood)? deleteMoodRecord,
  }) {
    return load?.call(profileId, date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int profileId, DateTime date)? load,
    TResult Function()? logOut,
    TResult Function(MoodRecordEntity mood)? addMoodRecord,
    TResult Function(MoodRecordEntity mood)? updateMoodRecord,
    TResult Function(MoodRecordEntity mood)? deleteMoodRecord,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(profileId, date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadMoodRecords value) load,
    required TResult Function(MoodRecordsLogOut value) logOut,
    required TResult Function(AddMoodRecord value) addMoodRecord,
    required TResult Function(UpdateMoodRecord value) updateMoodRecord,
    required TResult Function(DeleteMoodRecord value) deleteMoodRecord,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadMoodRecords value)? load,
    TResult? Function(MoodRecordsLogOut value)? logOut,
    TResult? Function(AddMoodRecord value)? addMoodRecord,
    TResult? Function(UpdateMoodRecord value)? updateMoodRecord,
    TResult? Function(DeleteMoodRecord value)? deleteMoodRecord,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadMoodRecords value)? load,
    TResult Function(MoodRecordsLogOut value)? logOut,
    TResult Function(AddMoodRecord value)? addMoodRecord,
    TResult Function(UpdateMoodRecord value)? updateMoodRecord,
    TResult Function(DeleteMoodRecord value)? deleteMoodRecord,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadMoodRecords implements MoodRecordsEvent {
  const factory LoadMoodRecords({required final int profileId, required final DateTime date}) = _$LoadMoodRecordsImpl;

  int get profileId;
  DateTime get date;
  @JsonKey(ignore: true)
  _$$LoadMoodRecordsImplCopyWith<_$LoadMoodRecordsImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MoodRecordsLogOutImplCopyWith<$Res> {
  factory _$$MoodRecordsLogOutImplCopyWith(_$MoodRecordsLogOutImpl value, $Res Function(_$MoodRecordsLogOutImpl) then) =
      __$$MoodRecordsLogOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MoodRecordsLogOutImplCopyWithImpl<$Res> extends _$MoodRecordsEventCopyWithImpl<$Res, _$MoodRecordsLogOutImpl>
    implements _$$MoodRecordsLogOutImplCopyWith<$Res> {
  __$$MoodRecordsLogOutImplCopyWithImpl(_$MoodRecordsLogOutImpl _value, $Res Function(_$MoodRecordsLogOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MoodRecordsLogOutImpl implements MoodRecordsLogOut {
  const _$MoodRecordsLogOutImpl();

  @override
  String toString() {
    return 'MoodRecordsEvent.logOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$MoodRecordsLogOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int profileId, DateTime date) load,
    required TResult Function() logOut,
    required TResult Function(MoodRecordEntity mood) addMoodRecord,
    required TResult Function(MoodRecordEntity mood) updateMoodRecord,
    required TResult Function(MoodRecordEntity mood) deleteMoodRecord,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int profileId, DateTime date)? load,
    TResult? Function()? logOut,
    TResult? Function(MoodRecordEntity mood)? addMoodRecord,
    TResult? Function(MoodRecordEntity mood)? updateMoodRecord,
    TResult? Function(MoodRecordEntity mood)? deleteMoodRecord,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int profileId, DateTime date)? load,
    TResult Function()? logOut,
    TResult Function(MoodRecordEntity mood)? addMoodRecord,
    TResult Function(MoodRecordEntity mood)? updateMoodRecord,
    TResult Function(MoodRecordEntity mood)? deleteMoodRecord,
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
    required TResult Function(LoadMoodRecords value) load,
    required TResult Function(MoodRecordsLogOut value) logOut,
    required TResult Function(AddMoodRecord value) addMoodRecord,
    required TResult Function(UpdateMoodRecord value) updateMoodRecord,
    required TResult Function(DeleteMoodRecord value) deleteMoodRecord,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadMoodRecords value)? load,
    TResult? Function(MoodRecordsLogOut value)? logOut,
    TResult? Function(AddMoodRecord value)? addMoodRecord,
    TResult? Function(UpdateMoodRecord value)? updateMoodRecord,
    TResult? Function(DeleteMoodRecord value)? deleteMoodRecord,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadMoodRecords value)? load,
    TResult Function(MoodRecordsLogOut value)? logOut,
    TResult Function(AddMoodRecord value)? addMoodRecord,
    TResult Function(UpdateMoodRecord value)? updateMoodRecord,
    TResult Function(DeleteMoodRecord value)? deleteMoodRecord,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class MoodRecordsLogOut implements MoodRecordsEvent {
  const factory MoodRecordsLogOut() = _$MoodRecordsLogOutImpl;
}

/// @nodoc
abstract class _$$AddMoodRecordImplCopyWith<$Res> {
  factory _$$AddMoodRecordImplCopyWith(_$AddMoodRecordImpl value, $Res Function(_$AddMoodRecordImpl) then) =
      __$$AddMoodRecordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MoodRecordEntity mood});
}

/// @nodoc
class __$$AddMoodRecordImplCopyWithImpl<$Res> extends _$MoodRecordsEventCopyWithImpl<$Res, _$AddMoodRecordImpl>
    implements _$$AddMoodRecordImplCopyWith<$Res> {
  __$$AddMoodRecordImplCopyWithImpl(_$AddMoodRecordImpl _value, $Res Function(_$AddMoodRecordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mood = null,
  }) {
    return _then(_$AddMoodRecordImpl(
      null == mood
          ? _value.mood
          : mood // ignore: cast_nullable_to_non_nullable
              as MoodRecordEntity,
    ));
  }
}

/// @nodoc

class _$AddMoodRecordImpl implements AddMoodRecord {
  const _$AddMoodRecordImpl(this.mood);

  @override
  final MoodRecordEntity mood;

  @override
  String toString() {
    return 'MoodRecordsEvent.addMoodRecord(mood: $mood)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddMoodRecordImpl &&
            (identical(other.mood, mood) || other.mood == mood));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mood);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddMoodRecordImplCopyWith<_$AddMoodRecordImpl> get copyWith =>
      __$$AddMoodRecordImplCopyWithImpl<_$AddMoodRecordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int profileId, DateTime date) load,
    required TResult Function() logOut,
    required TResult Function(MoodRecordEntity mood) addMoodRecord,
    required TResult Function(MoodRecordEntity mood) updateMoodRecord,
    required TResult Function(MoodRecordEntity mood) deleteMoodRecord,
  }) {
    return addMoodRecord(mood);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int profileId, DateTime date)? load,
    TResult? Function()? logOut,
    TResult? Function(MoodRecordEntity mood)? addMoodRecord,
    TResult? Function(MoodRecordEntity mood)? updateMoodRecord,
    TResult? Function(MoodRecordEntity mood)? deleteMoodRecord,
  }) {
    return addMoodRecord?.call(mood);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int profileId, DateTime date)? load,
    TResult Function()? logOut,
    TResult Function(MoodRecordEntity mood)? addMoodRecord,
    TResult Function(MoodRecordEntity mood)? updateMoodRecord,
    TResult Function(MoodRecordEntity mood)? deleteMoodRecord,
    required TResult orElse(),
  }) {
    if (addMoodRecord != null) {
      return addMoodRecord(mood);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadMoodRecords value) load,
    required TResult Function(MoodRecordsLogOut value) logOut,
    required TResult Function(AddMoodRecord value) addMoodRecord,
    required TResult Function(UpdateMoodRecord value) updateMoodRecord,
    required TResult Function(DeleteMoodRecord value) deleteMoodRecord,
  }) {
    return addMoodRecord(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadMoodRecords value)? load,
    TResult? Function(MoodRecordsLogOut value)? logOut,
    TResult? Function(AddMoodRecord value)? addMoodRecord,
    TResult? Function(UpdateMoodRecord value)? updateMoodRecord,
    TResult? Function(DeleteMoodRecord value)? deleteMoodRecord,
  }) {
    return addMoodRecord?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadMoodRecords value)? load,
    TResult Function(MoodRecordsLogOut value)? logOut,
    TResult Function(AddMoodRecord value)? addMoodRecord,
    TResult Function(UpdateMoodRecord value)? updateMoodRecord,
    TResult Function(DeleteMoodRecord value)? deleteMoodRecord,
    required TResult orElse(),
  }) {
    if (addMoodRecord != null) {
      return addMoodRecord(this);
    }
    return orElse();
  }
}

abstract class AddMoodRecord implements MoodRecordsEvent {
  const factory AddMoodRecord(final MoodRecordEntity mood) = _$AddMoodRecordImpl;

  MoodRecordEntity get mood;
  @JsonKey(ignore: true)
  _$$AddMoodRecordImplCopyWith<_$AddMoodRecordImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateMoodRecordImplCopyWith<$Res> {
  factory _$$UpdateMoodRecordImplCopyWith(_$UpdateMoodRecordImpl value, $Res Function(_$UpdateMoodRecordImpl) then) =
      __$$UpdateMoodRecordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MoodRecordEntity mood});
}

/// @nodoc
class __$$UpdateMoodRecordImplCopyWithImpl<$Res> extends _$MoodRecordsEventCopyWithImpl<$Res, _$UpdateMoodRecordImpl>
    implements _$$UpdateMoodRecordImplCopyWith<$Res> {
  __$$UpdateMoodRecordImplCopyWithImpl(_$UpdateMoodRecordImpl _value, $Res Function(_$UpdateMoodRecordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mood = null,
  }) {
    return _then(_$UpdateMoodRecordImpl(
      null == mood
          ? _value.mood
          : mood // ignore: cast_nullable_to_non_nullable
              as MoodRecordEntity,
    ));
  }
}

/// @nodoc

class _$UpdateMoodRecordImpl implements UpdateMoodRecord {
  const _$UpdateMoodRecordImpl(this.mood);

  @override
  final MoodRecordEntity mood;

  @override
  String toString() {
    return 'MoodRecordsEvent.updateMoodRecord(mood: $mood)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateMoodRecordImpl &&
            (identical(other.mood, mood) || other.mood == mood));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mood);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateMoodRecordImplCopyWith<_$UpdateMoodRecordImpl> get copyWith =>
      __$$UpdateMoodRecordImplCopyWithImpl<_$UpdateMoodRecordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int profileId, DateTime date) load,
    required TResult Function() logOut,
    required TResult Function(MoodRecordEntity mood) addMoodRecord,
    required TResult Function(MoodRecordEntity mood) updateMoodRecord,
    required TResult Function(MoodRecordEntity mood) deleteMoodRecord,
  }) {
    return updateMoodRecord(mood);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int profileId, DateTime date)? load,
    TResult? Function()? logOut,
    TResult? Function(MoodRecordEntity mood)? addMoodRecord,
    TResult? Function(MoodRecordEntity mood)? updateMoodRecord,
    TResult? Function(MoodRecordEntity mood)? deleteMoodRecord,
  }) {
    return updateMoodRecord?.call(mood);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int profileId, DateTime date)? load,
    TResult Function()? logOut,
    TResult Function(MoodRecordEntity mood)? addMoodRecord,
    TResult Function(MoodRecordEntity mood)? updateMoodRecord,
    TResult Function(MoodRecordEntity mood)? deleteMoodRecord,
    required TResult orElse(),
  }) {
    if (updateMoodRecord != null) {
      return updateMoodRecord(mood);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadMoodRecords value) load,
    required TResult Function(MoodRecordsLogOut value) logOut,
    required TResult Function(AddMoodRecord value) addMoodRecord,
    required TResult Function(UpdateMoodRecord value) updateMoodRecord,
    required TResult Function(DeleteMoodRecord value) deleteMoodRecord,
  }) {
    return updateMoodRecord(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadMoodRecords value)? load,
    TResult? Function(MoodRecordsLogOut value)? logOut,
    TResult? Function(AddMoodRecord value)? addMoodRecord,
    TResult? Function(UpdateMoodRecord value)? updateMoodRecord,
    TResult? Function(DeleteMoodRecord value)? deleteMoodRecord,
  }) {
    return updateMoodRecord?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadMoodRecords value)? load,
    TResult Function(MoodRecordsLogOut value)? logOut,
    TResult Function(AddMoodRecord value)? addMoodRecord,
    TResult Function(UpdateMoodRecord value)? updateMoodRecord,
    TResult Function(DeleteMoodRecord value)? deleteMoodRecord,
    required TResult orElse(),
  }) {
    if (updateMoodRecord != null) {
      return updateMoodRecord(this);
    }
    return orElse();
  }
}

abstract class UpdateMoodRecord implements MoodRecordsEvent {
  const factory UpdateMoodRecord(final MoodRecordEntity mood) = _$UpdateMoodRecordImpl;

  MoodRecordEntity get mood;
  @JsonKey(ignore: true)
  _$$UpdateMoodRecordImplCopyWith<_$UpdateMoodRecordImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteMoodRecordImplCopyWith<$Res> {
  factory _$$DeleteMoodRecordImplCopyWith(_$DeleteMoodRecordImpl value, $Res Function(_$DeleteMoodRecordImpl) then) =
      __$$DeleteMoodRecordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MoodRecordEntity mood});
}

/// @nodoc
class __$$DeleteMoodRecordImplCopyWithImpl<$Res> extends _$MoodRecordsEventCopyWithImpl<$Res, _$DeleteMoodRecordImpl>
    implements _$$DeleteMoodRecordImplCopyWith<$Res> {
  __$$DeleteMoodRecordImplCopyWithImpl(_$DeleteMoodRecordImpl _value, $Res Function(_$DeleteMoodRecordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mood = null,
  }) {
    return _then(_$DeleteMoodRecordImpl(
      null == mood
          ? _value.mood
          : mood // ignore: cast_nullable_to_non_nullable
              as MoodRecordEntity,
    ));
  }
}

/// @nodoc

class _$DeleteMoodRecordImpl implements DeleteMoodRecord {
  const _$DeleteMoodRecordImpl(this.mood);

  @override
  final MoodRecordEntity mood;

  @override
  String toString() {
    return 'MoodRecordsEvent.deleteMoodRecord(mood: $mood)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteMoodRecordImpl &&
            (identical(other.mood, mood) || other.mood == mood));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mood);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteMoodRecordImplCopyWith<_$DeleteMoodRecordImpl> get copyWith =>
      __$$DeleteMoodRecordImplCopyWithImpl<_$DeleteMoodRecordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int profileId, DateTime date) load,
    required TResult Function() logOut,
    required TResult Function(MoodRecordEntity mood) addMoodRecord,
    required TResult Function(MoodRecordEntity mood) updateMoodRecord,
    required TResult Function(MoodRecordEntity mood) deleteMoodRecord,
  }) {
    return deleteMoodRecord(mood);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int profileId, DateTime date)? load,
    TResult? Function()? logOut,
    TResult? Function(MoodRecordEntity mood)? addMoodRecord,
    TResult? Function(MoodRecordEntity mood)? updateMoodRecord,
    TResult? Function(MoodRecordEntity mood)? deleteMoodRecord,
  }) {
    return deleteMoodRecord?.call(mood);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int profileId, DateTime date)? load,
    TResult Function()? logOut,
    TResult Function(MoodRecordEntity mood)? addMoodRecord,
    TResult Function(MoodRecordEntity mood)? updateMoodRecord,
    TResult Function(MoodRecordEntity mood)? deleteMoodRecord,
    required TResult orElse(),
  }) {
    if (deleteMoodRecord != null) {
      return deleteMoodRecord(mood);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadMoodRecords value) load,
    required TResult Function(MoodRecordsLogOut value) logOut,
    required TResult Function(AddMoodRecord value) addMoodRecord,
    required TResult Function(UpdateMoodRecord value) updateMoodRecord,
    required TResult Function(DeleteMoodRecord value) deleteMoodRecord,
  }) {
    return deleteMoodRecord(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadMoodRecords value)? load,
    TResult? Function(MoodRecordsLogOut value)? logOut,
    TResult? Function(AddMoodRecord value)? addMoodRecord,
    TResult? Function(UpdateMoodRecord value)? updateMoodRecord,
    TResult? Function(DeleteMoodRecord value)? deleteMoodRecord,
  }) {
    return deleteMoodRecord?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadMoodRecords value)? load,
    TResult Function(MoodRecordsLogOut value)? logOut,
    TResult Function(AddMoodRecord value)? addMoodRecord,
    TResult Function(UpdateMoodRecord value)? updateMoodRecord,
    TResult Function(DeleteMoodRecord value)? deleteMoodRecord,
    required TResult orElse(),
  }) {
    if (deleteMoodRecord != null) {
      return deleteMoodRecord(this);
    }
    return orElse();
  }
}

abstract class DeleteMoodRecord implements MoodRecordsEvent {
  const factory DeleteMoodRecord(final MoodRecordEntity mood) = _$DeleteMoodRecordImpl;

  MoodRecordEntity get mood;
  @JsonKey(ignore: true)
  _$$DeleteMoodRecordImplCopyWith<_$DeleteMoodRecordImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MoodRecordsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<MoodRecordEntity> moodRecords) moodRecordsLoaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<MoodRecordEntity> moodRecords)? moodRecordsLoaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<MoodRecordEntity> moodRecords)? moodRecordsLoaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingMoodRecordsState value) loading,
    required TResult Function(MoodRecordsLoadedState value) moodRecordsLoaded,
    required TResult Function(ErrorMoodRecordsState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingMoodRecordsState value)? loading,
    TResult? Function(MoodRecordsLoadedState value)? moodRecordsLoaded,
    TResult? Function(ErrorMoodRecordsState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingMoodRecordsState value)? loading,
    TResult Function(MoodRecordsLoadedState value)? moodRecordsLoaded,
    TResult Function(ErrorMoodRecordsState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoodRecordsStateCopyWith<$Res> {
  factory $MoodRecordsStateCopyWith(MoodRecordsState value, $Res Function(MoodRecordsState) then) =
      _$MoodRecordsStateCopyWithImpl<$Res, MoodRecordsState>;
}

/// @nodoc
class _$MoodRecordsStateCopyWithImpl<$Res, $Val extends MoodRecordsState> implements $MoodRecordsStateCopyWith<$Res> {
  _$MoodRecordsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingMoodRecordsStateImplCopyWith<$Res> {
  factory _$$LoadingMoodRecordsStateImplCopyWith(
          _$LoadingMoodRecordsStateImpl value, $Res Function(_$LoadingMoodRecordsStateImpl) then) =
      __$$LoadingMoodRecordsStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingMoodRecordsStateImplCopyWithImpl<$Res>
    extends _$MoodRecordsStateCopyWithImpl<$Res, _$LoadingMoodRecordsStateImpl>
    implements _$$LoadingMoodRecordsStateImplCopyWith<$Res> {
  __$$LoadingMoodRecordsStateImplCopyWithImpl(
      _$LoadingMoodRecordsStateImpl _value, $Res Function(_$LoadingMoodRecordsStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingMoodRecordsStateImpl implements LoadingMoodRecordsState {
  const _$LoadingMoodRecordsStateImpl();

  @override
  String toString() {
    return 'MoodRecordsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$LoadingMoodRecordsStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<MoodRecordEntity> moodRecords) moodRecordsLoaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<MoodRecordEntity> moodRecords)? moodRecordsLoaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<MoodRecordEntity> moodRecords)? moodRecordsLoaded,
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
    required TResult Function(LoadingMoodRecordsState value) loading,
    required TResult Function(MoodRecordsLoadedState value) moodRecordsLoaded,
    required TResult Function(ErrorMoodRecordsState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingMoodRecordsState value)? loading,
    TResult? Function(MoodRecordsLoadedState value)? moodRecordsLoaded,
    TResult? Function(ErrorMoodRecordsState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingMoodRecordsState value)? loading,
    TResult Function(MoodRecordsLoadedState value)? moodRecordsLoaded,
    TResult Function(ErrorMoodRecordsState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingMoodRecordsState implements MoodRecordsState {
  const factory LoadingMoodRecordsState() = _$LoadingMoodRecordsStateImpl;
}

/// @nodoc
abstract class _$$MoodRecordsLoadedStateImplCopyWith<$Res> {
  factory _$$MoodRecordsLoadedStateImplCopyWith(
          _$MoodRecordsLoadedStateImpl value, $Res Function(_$MoodRecordsLoadedStateImpl) then) =
      __$$MoodRecordsLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MoodRecordEntity> moodRecords});
}

/// @nodoc
class __$$MoodRecordsLoadedStateImplCopyWithImpl<$Res>
    extends _$MoodRecordsStateCopyWithImpl<$Res, _$MoodRecordsLoadedStateImpl>
    implements _$$MoodRecordsLoadedStateImplCopyWith<$Res> {
  __$$MoodRecordsLoadedStateImplCopyWithImpl(
      _$MoodRecordsLoadedStateImpl _value, $Res Function(_$MoodRecordsLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? moodRecords = null,
  }) {
    return _then(_$MoodRecordsLoadedStateImpl(
      null == moodRecords
          ? _value._moodRecords
          : moodRecords // ignore: cast_nullable_to_non_nullable
              as List<MoodRecordEntity>,
    ));
  }
}

/// @nodoc

class _$MoodRecordsLoadedStateImpl implements MoodRecordsLoadedState {
  const _$MoodRecordsLoadedStateImpl(final List<MoodRecordEntity> moodRecords) : _moodRecords = moodRecords;

  final List<MoodRecordEntity> _moodRecords;
  @override
  List<MoodRecordEntity> get moodRecords {
    if (_moodRecords is EqualUnmodifiableListView) return _moodRecords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_moodRecords);
  }

  @override
  String toString() {
    return 'MoodRecordsState.moodRecordsLoaded(moodRecords: $moodRecords)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoodRecordsLoadedStateImpl &&
            const DeepCollectionEquality().equals(other._moodRecords, _moodRecords));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_moodRecords));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoodRecordsLoadedStateImplCopyWith<_$MoodRecordsLoadedStateImpl> get copyWith =>
      __$$MoodRecordsLoadedStateImplCopyWithImpl<_$MoodRecordsLoadedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<MoodRecordEntity> moodRecords) moodRecordsLoaded,
    required TResult Function() error,
  }) {
    return moodRecordsLoaded(moodRecords);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<MoodRecordEntity> moodRecords)? moodRecordsLoaded,
    TResult? Function()? error,
  }) {
    return moodRecordsLoaded?.call(moodRecords);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<MoodRecordEntity> moodRecords)? moodRecordsLoaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (moodRecordsLoaded != null) {
      return moodRecordsLoaded(moodRecords);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingMoodRecordsState value) loading,
    required TResult Function(MoodRecordsLoadedState value) moodRecordsLoaded,
    required TResult Function(ErrorMoodRecordsState value) error,
  }) {
    return moodRecordsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingMoodRecordsState value)? loading,
    TResult? Function(MoodRecordsLoadedState value)? moodRecordsLoaded,
    TResult? Function(ErrorMoodRecordsState value)? error,
  }) {
    return moodRecordsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingMoodRecordsState value)? loading,
    TResult Function(MoodRecordsLoadedState value)? moodRecordsLoaded,
    TResult Function(ErrorMoodRecordsState value)? error,
    required TResult orElse(),
  }) {
    if (moodRecordsLoaded != null) {
      return moodRecordsLoaded(this);
    }
    return orElse();
  }
}

abstract class MoodRecordsLoadedState implements MoodRecordsState {
  const factory MoodRecordsLoadedState(final List<MoodRecordEntity> moodRecords) = _$MoodRecordsLoadedStateImpl;

  List<MoodRecordEntity> get moodRecords;
  @JsonKey(ignore: true)
  _$$MoodRecordsLoadedStateImplCopyWith<_$MoodRecordsLoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorMoodRecordsStateImplCopyWith<$Res> {
  factory _$$ErrorMoodRecordsStateImplCopyWith(
          _$ErrorMoodRecordsStateImpl value, $Res Function(_$ErrorMoodRecordsStateImpl) then) =
      __$$ErrorMoodRecordsStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorMoodRecordsStateImplCopyWithImpl<$Res>
    extends _$MoodRecordsStateCopyWithImpl<$Res, _$ErrorMoodRecordsStateImpl>
    implements _$$ErrorMoodRecordsStateImplCopyWith<$Res> {
  __$$ErrorMoodRecordsStateImplCopyWithImpl(
      _$ErrorMoodRecordsStateImpl _value, $Res Function(_$ErrorMoodRecordsStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorMoodRecordsStateImpl implements ErrorMoodRecordsState {
  const _$ErrorMoodRecordsStateImpl();

  @override
  String toString() {
    return 'MoodRecordsState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$ErrorMoodRecordsStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<MoodRecordEntity> moodRecords) moodRecordsLoaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<MoodRecordEntity> moodRecords)? moodRecordsLoaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<MoodRecordEntity> moodRecords)? moodRecordsLoaded,
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
    required TResult Function(LoadingMoodRecordsState value) loading,
    required TResult Function(MoodRecordsLoadedState value) moodRecordsLoaded,
    required TResult Function(ErrorMoodRecordsState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingMoodRecordsState value)? loading,
    TResult? Function(MoodRecordsLoadedState value)? moodRecordsLoaded,
    TResult? Function(ErrorMoodRecordsState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingMoodRecordsState value)? loading,
    TResult Function(MoodRecordsLoadedState value)? moodRecordsLoaded,
    TResult Function(ErrorMoodRecordsState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorMoodRecordsState implements MoodRecordsState {
  const factory ErrorMoodRecordsState() = _$ErrorMoodRecordsStateImpl;
}
