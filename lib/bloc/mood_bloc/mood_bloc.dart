import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pollen_tracker/common/logger.dart';
import 'package:pollen_tracker/domain/models/mood_record_entity.dart';
import 'package:pollen_tracker/domain/repositories/mood_record_repository.dart';

part 'mood_bloc.freezed.dart';
part 'mood_events.dart';
part 'mood_states.dart';

extension MoodRecordsBuilder on BuildContext {
  MoodRecordsState? get moodRecordsState => BlocProvider.of<MoodRecordsBloc>(this).state;
  MoodRecordsBloc? get moodRecordsBloc => BlocProvider.of<MoodRecordsBloc>(this);
}

@injectable
class MoodRecordsBloc extends Bloc<MoodRecordsEvent, MoodRecordsState> {
  final MoodRecordsRepository moodRecordsRepository;

  //final SomeOtherBloc someOtherBloc;
  //late StreamSubscription streamSubscription;

  MoodRecordsBloc({required this.moodRecordsRepository}) : super(const MoodRecordsState.loading()) {
    /*
    streamSubscription = editorBloc.stream.listen((state) {
      if (state is SomeOtherBlockState) {
        add(SomeEvent(args));
      }
      if (state is SomeOtherBlockState) {
        add(SomeEvent(args));
      }
    });*/
    on<LoadMoodRecords>(_load);
    on<AddMoodRecord>(_addMoodRecord);
    on<DeleteMoodRecord>(_deleteMoodRecord);
    on<MoodRecordsLogOut>(_moodRecordsLogOut);
    on<UpdateMoodRecord>(_updateMoodRecord);
  }

  void loadMoodRecords({required int profileId, required DateTime month}) {
    add(MoodRecordsEvent.load(profileId: profileId, date: month));
  }

  void moodRecordsLogOut() {
    add(const MoodRecordsEvent.logOut());
  }

  void addMoodRecord(MoodRecordEntity newMoodRecord) {
    add(MoodRecordsEvent.addMoodRecord(newMoodRecord));
  }

  void deleteMoodRecords(MoodRecordEntity moodRecordToDelete) {
    add(MoodRecordsEvent.deleteMoodRecord(moodRecordToDelete));
  }

  Future<void> _load(LoadMoodRecords event, Emitter<MoodRecordsState> emit) async {
    try {
      List<MoodRecordEntity> moodRecords =
          await moodRecordsRepository.fetchAllmoodRecordModels(event.profileId, event.date);
      emit(
        MoodRecordsState.moodRecordsLoaded(moodRecords),
      );
      logger.i('Emit LoadingMoodRecordsState');
    } catch (e) {
      _error(e, emit, 'Error on Loading');
    }
  }

  Future<void> _addMoodRecord(
    AddMoodRecord event,
    Emitter<MoodRecordsState> emit,
  ) async {
    try {
      final bool success = await moodRecordsRepository.addMoodRecordModel(event.mood);
      if (success) {
        add(MoodRecordsEvent.load(profileId: event.mood.profileId, date: event.mood.date));
        logger.i('Call MoodRecordsEvent.load event');
      } else {
        _error(Exception('cant add moodRecords'), emit, 'Error on Adding');
      }
    } catch (e) {
      _error(e, emit, 'Error on Adding');
    }
  }

  Future<void> _updateMoodRecord(
    UpdateMoodRecord event,
    Emitter<MoodRecordsState> emit,
  ) async {
    try {
      final bool success = await moodRecordsRepository.updateMoodRecordModel(event.mood);
      if (success) {
        add(MoodRecordsEvent.load(profileId: event.mood.profileId, date: event.mood.date));
        logger.i('Call MoodRecordsEvent.load event');
      } else {
        _error(Exception('cant add moodRecords'), emit, 'Error on Updating');
      }
    } catch (e) {
      _error(e, emit, 'Error on Updating');
    }
  }

  Future<void> _moodRecordsLogOut(MoodRecordsLogOut event, Emitter<MoodRecordsState> emit) async {
    try {
      emit(
        const MoodRecordsState.loading(),
      );
      logger.i('Emit LoadingMoodRecordsState on LogOut');
    } catch (e) {
      _error(e, emit, 'Error on LogOut');
    }
  }

  Future<void> _deleteMoodRecord(
    DeleteMoodRecord event,
    Emitter<MoodRecordsState> emit,
  ) async {
    try {
      final bool success = await moodRecordsRepository.deleteMoodRecord(event.mood);
      if (success) {
        add(MoodRecordsEvent.load(profileId: event.mood.profileId, date: event.mood.date));
        logger.i('Call MoodRecordsEvent.load event');
      } else {
        _error(Exception('cant delete moodRecords'), emit, 'Error on Deleting');
      }
    } catch (e) {
      _error(e, emit, 'Error on Deleting');
    }
  }

  Future<void> _error(
    Object e,
    Emitter<MoodRecordsState> emit, [
    String message = 'Error',
  ]) async {
    logger.e('$message: $e');
    emit(const MoodRecordsState.error());
  }
}
