import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pollen_tracker/common/enums/mood_type.dart';
import 'package:pollen_tracker/common/enums/risc_enum.dart';
import 'package:pollen_tracker/common/enums/species_enums.dart';
import 'package:pollen_tracker/common/logger.dart';
import 'package:pollen_tracker/domain/models/pollen_entity.dart';
import 'package:pollen_tracker/domain/repositories/mood_record_subject.dart';
import 'package:pollen_tracker/domain/repositories/pollen_subject.dart';
import 'package:pollen_tracker/domain/repositories/profile_subject.dart';
import 'package:pollen_tracker/ui/formatters/risc_formatter.dart';
import 'package:rxdart/rxdart.dart';

part 'calendar_bloc.freezed.dart';
part 'calendar_event.dart';
part 'calendar_state.dart';

enum _EmitType { risc, mood }

extension CalendarBlocBuilder on BuildContext {
  CalendarState? get calendarState => BlocProvider.of<CalendarBloc>(this).state;
  CalendarBloc? get calendarBloc => BlocProvider.of<CalendarBloc>(this);
}


@singleton
class CalendarBloc extends Bloc<CalendarEvent, CalendarState> {
  PollenSubject pollenSubject;
  MoodRecordSubject moodRecordSubject;
  ProfileSubject profileSubject;
  RiscFormatter riscFormatter;
  StreamSubscription<CalendarEvent>? _streamHolder;

  BehaviorSubject dateSubject = BehaviorSubject<DateTime>();
  BehaviorSubject typeSubject = BehaviorSubject<_EmitType>();

  CalendarBloc({
    required this.pollenSubject,
    required this.moodRecordSubject,
    required this.profileSubject,
    required this.riscFormatter,
  }) : super(const CalendarState.init()) {
    typeSubject.add(_EmitType.risc);
    on<_InitCalendarEvent>(_init);
    on<_SelectDayCalendarEvent>((event, _) => dateSubject.add(event.day));
    on<_ShowRiscLevelCalendarEvent>(
      (event, _) => typeSubject.add(_EmitType.risc),
    );
    on<_ShowMoodLevelCalendarEvent>(
      (event, _) => typeSubject.add(_EmitType.mood),
    );

    on<_LoadedRiscCalendarEvent>(
      (event, emit) => emit(
        CalendarState.loadedRisc(
          heatmap: event.heatmap,
          selectedDay: event.selectedDay,
          selectedDayMood: event.selectedDayMood,
          selectedDayRisc: event.selectedDayRisc,
        ),
      ),
    );

    on<_LoadedMoodCalendarEvent>(
      (event, emit) => emit(
        CalendarState.loadedMood(
          heatmap: event.heatmap,
          selectedDay: event.selectedDay,
          selectedDayMood: event.selectedDayMood,
          selectedDayRisc: event.selectedDayRisc,
        ),
      ),
    );

    add(const CalendarEvent.init());
    add(CalendarEvent.selectDay(day: DateTime.now().toUtc()));
  }

  @override
  Future<void> close() async {
    _streamHolder?.cancel();
    dateSubject.close();
    typeSubject.close();
    super.close();
  }

  void selectDay(DateTime date) {
    add(CalendarEvent.selectDay(day: date.toUtc()));
  }

  void showRisc() {
    add(const CalendarEvent.showRiscLevel());
  }

  void showMood() {
    add(const CalendarEvent.showMoodLevel());
  }

  Future<void> _init(
    _InitCalendarEvent event,
    Emitter<CalendarState> emit,
  ) async {
    final Stream<Stream<CalendarEvent>> statesStreams = Rx.combineLatest2(dateSubject, typeSubject, (date, type) {
      logger.d('AAAAAAAAAAAAAAAAAAAAAA');
      if (type == _EmitType.mood) {
        logger.d('LOAD MOOD');
        return _loadMoodStream(date);
      } else {
        logger.d('LOAD RISC');
        return _loadRiscStream(date);
      }
    });

    _streamHolder = statesStreams.switchMap((stream) => stream).listen((event) {
      logger.d('EMIIIIIIIIIIIIIIIIIT: $event');
      try {
        add(event);
      } catch (e) {
        logger.e('EXCEPTION: $e');
      }
      logger.d('EMITED');
    });
  }

  Stream<CalendarEvent> _loadRiscStream(
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
        final Map<DateTime, int> counter = {};
        for (final pollen in monthPollen) {
          final currDay = pollen.time.copyWith(hour: 0, minute: 0, second: 0, microsecond: 0, millisecond: 0);
          final levels = monthLevels[currDay] ?? {};

          counter[currDay] = (counter[currDay] ?? 0) + 1;
          monthLevels[currDay] = _join(levels, pollen.levels, (s1, s2) => (s1 ?? 0) + (s2 ?? 0));
        }

        final monthLevelsAveraged = monthLevels.map(
          (date, value) => MapEntry(
            date,
            value.map(
              (species, level) => MapEntry(species, level ~/ (counter[date] ?? 1)),
            ),
          ),
        );

        final Map<DateTime, RiscLevel> monthRisc = {};

        for (var entry in monthLevelsAveraged.entries) {
          monthRisc[entry.key] = riscFormatter.evaluateType(
            entry.value,
            targets,
            SpeciesType.tree,
          );
        }

        return CalendarEvent.loadedRisc(
          heatmap: monthRisc,
          selectedDay: day.toUtc().copyWith(hour: 0, minute: 0, second: 0, millisecond: 0, microsecond: 0),
          selectedDayMood: moodDay?.moodType,
          selectedDayRisc: _evaluateRisc(dayPollen, targets),
        );
      },
    );
  }

  Stream<CalendarEvent> _loadMoodStream(DateTime day) {
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

        logger.d('MOOD LOADEEEEEED');
        return CalendarEvent.loadedMood(
          heatmap: monthDaysMood,
          selectedDay: day.toUtc().copyWith(hour: 0, minute: 0, second: 0, millisecond: 0, microsecond: 0),
          selectedDayMood: moodDay?.moodType,
          selectedDayRisc: _evaluateRisc(dayPollen, targets),
        );
      },
    );
  }

  RiscLevel _evaluateRisc(List<PollenEntity> dayPollen, List<Species> targets) {
    final RiscLevel dayRisc;

    if (dayPollen.isEmpty) {
      final dayLevel = dayPollen.map((pollenEntity) => pollenEntity.levels).reduce(
            (value, element) => _join(
              value,
              element,
              (s1, s2) => (s1 ?? 0) + (s2 ?? 0),
            ),
          );

      dayRisc = riscFormatter.evaluateType(
        dayLevel,
        targets,
        SpeciesType.tree,
      );
    } else {
      dayRisc = RiscLevel.low;
    }

    logger.d('RISC EVALUATED');
    return dayRisc;
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
