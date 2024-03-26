import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pollen_tracker/common/enums/mood_type.dart';
import 'package:pollen_tracker/common/enums/risc_enum.dart';
import 'package:pollen_tracker/common/enums/species_enums.dart';
import 'package:pollen_tracker/domain/repositories/mood_record_subject.dart';
import 'package:pollen_tracker/domain/repositories/pollen_subject.dart';
import 'package:pollen_tracker/domain/repositories/profile_subject.dart';
import 'package:pollen_tracker/domain/usecases/risc_evaluator_usecase.dart';
import 'package:rxdart/rxdart.dart';

part 'calendar_bloc.freezed.dart';
part 'calendar_event.dart';
part 'calendar_state.dart';

enum _EmitType { risc, mood }

@injectable
class CalendarBloc extends Bloc<CalendarEvent, CalendarState> {
  PollenSubject pollenSubject;
  MoodRecordSubject moodRecordSubject;
  ProfileSubject profileSubject;
  RiscEvaluatorUseCase riscEvaluatorUseCase;
  StreamSubscription<CalendarState>? _streamHolder;

  BehaviorSubject dateSubject = BehaviorSubject<DateTime>();
  BehaviorSubject typeSubject = BehaviorSubject<_EmitType>();

  CalendarBloc({
    required this.pollenSubject,
    required this.moodRecordSubject,
    required this.profileSubject,
    required this.riscEvaluatorUseCase,
  }) : super(const CalendarState.init()) {
    on<_InitCalendarEvent>(_init);
    on<_SelectDayCalendarEvent>((event, _) => dateSubject.add(event.day));
    on<_ShowRiscLevelCalendarEvent>(
      (event, _) => typeSubject.add(_EmitType.risc),
    );
    on<_ShowMoodLevelCalendarEvent>(
      (event, _) => typeSubject.add(_EmitType.mood),
    );
    add(const CalendarEvent._init());
    add(CalendarEvent._selectDay(day: DateTime.now().toUtc()));
  }

  @override
  Future<void> close() async {
    _streamHolder?.cancel();
    dateSubject.close();
    typeSubject.close();
    super.close();
  }

  void selectDay(DateTime date) {
    add(CalendarEvent._selectDay(day: date.toUtc()));
  }

  void showRisc() {
    add(const CalendarEvent._showRiscLevel());
  }

  void showMood() {
    add(const CalendarEvent._showMoodLevel());
  }

  Future<void> _init(
    _InitCalendarEvent event,
    Emitter<CalendarState> emit,
  ) async {
    final Stream<Stream<CalendarState>> statesStreams =
        Rx.combineLatest2(dateSubject, typeSubject, (date, type) {
      if (type == _EmitType.mood) {
        return _loadMoodStream(date);
      } else {
        return _loadRiscStream(date);
      }
    });

    _streamHolder =
        statesStreams.switchMap((streams) => streams).listen((state) {
      emit(state);
    });
  }

  Stream<CalendarState> _loadRiscStream(
    DateTime day,
  ) {
    final lowerDate = day.copyWith(day: 1);
    final upperDate = day.copyWith(month: day.month + 1, day: 0);

    return Rx.combineLatest4(
      pollenSubject.observeIn(lowerDate, upperDate),
      pollenSubject.observeIn(
        day.copyWith(hour: 0, minute: 0, second: 0),
        day.copyWith(hour: 23, minute: 59, second: 59),
      ),
      moodRecordSubject.observeDay(day),
      profileSubject.observeCurrent().mapNotNull((profile) => profile?.species),
      (monthPollen, dayPollen, moodDay, targets) {
        final Map<DateTime, Map<Species, int>> monthLevels = {};
        for (final pollen in monthPollen) {
          final currDay = pollen.time.copyWith(hour: 0, minute: 0, second: 0);
          final levels = monthLevels[currDay] ?? {};

          monthLevels[currDay] =
              _join(levels, pollen.levels, (s1, s2) => (s1 ?? 0) + (s2 ?? 0));
        }

        final Map<DateTime, RiscLevel> monthRisc = {};

        for (var entry in monthLevels.entries) {
          monthRisc[entry.key] = riscEvaluatorUseCase.evaluateType(
            entry.value,
            targets,
            SpeciesType.tree,
          );
        }
        final RiscLevel dayRisc;

        if (dayPollen.isEmpty) {
          final dayLevel =
              dayPollen.map((pollenEntity) => pollenEntity.levels).reduce(
                    (value, element) => _join(
                      value,
                      element,
                      (s1, s2) => (s1 ?? 0) + (s2 ?? 0),
                    ),
                  );

          dayRisc = riscEvaluatorUseCase.evaluateType(
            dayLevel,
            targets,
            SpeciesType.tree,
          );
        } else {
          dayRisc = RiscLevel.low;
        }

        return CalendarState.loadedRisc(
          heatmap: monthRisc,
          selectedDayMood: moodDay?.moodType,
          selectedDayRisc: dayRisc,
        );
      },
    );
  }

  Stream<CalendarState> _loadMoodStream(DateTime day) {
    final lowerDate = day.copyWith(day: 1);
    final upperDate = day.copyWith(month: day.month + 1, day: 0);

    return Rx.combineLatest4(
      moodRecordSubject.observeIn(lowerDate, upperDate),
      pollenSubject.observeIn(
        day.copyWith(hour: 0, minute: 0, second: 0),
        day.copyWith(hour: 23, minute: 59, second: 59),
      ),
      moodRecordSubject.observeDay(day),
      profileSubject.observeCurrent().mapNotNull((profile) => profile?.species),
      (monthMood, dayPollen, moodDay, targets) {
        final Map<DateTime, MoodType> monthDaysMood = {};
        for (final mood in monthMood) {
          // This would work because we can have only one mood record per day
          monthDaysMood[mood.date.toUtc().copyWith(
                hour: 0,
                minute: 0,
                second: 0,
                millisecond: 0,
                microsecond: 0,
              )] = mood.moodType;
        }

        final RiscLevel dayRisc;

        if (dayPollen.isEmpty) {
          final dayLevel =
              dayPollen.map((pollenEntity) => pollenEntity.levels).reduce(
                    (value, element) => _join(
                      value,
                      element,
                      (s1, s2) => (s1 ?? 0) + (s2 ?? 0),
                    ),
                  );

          dayRisc = riscEvaluatorUseCase.evaluateType(
            dayLevel,
            targets,
            SpeciesType.tree,
          );
        } else {
          dayRisc = RiscLevel.low;
        }

        return CalendarState.loadedMood(
          heatmap: monthDaysMood,
          selectedDayMood: moodDay?.moodType,
          selectedDayRisc: dayRisc,
        );
      },
    );
  }

  Map<K, V> _join<K, V>(
    Map<K, V> m1,
    Map<K, V> m2,
    V Function(V? v1, V? v2) joiner,
  ) {
    final Set<K> keys = m1.keys.toSet()..addAll(m2.keys);
    final Map<K, V> resultMap = {};

    for (var key in keys) {
      resultMap[key] = joiner(m1[key], m2[key]);
    }

    return resultMap;
  }
}
