part of 'calendar_bloc.dart';

@freezed
class CalendarState with _$CalendarState {
  const factory CalendarState.init() = InitCalendarState;

  const factory CalendarState.loadedRisc({
    required Map<DateTime, RiscLevel> heatmap,
    required MoodType? selectedDayMood,
    required RiscLevel? selectedDayRisc,
  }) = LoadedRiscState;

  const factory CalendarState.loadedMood({
    required Map<DateTime, MoodType> heatmap,
    required MoodType? selectedDayMood,
    required RiscLevel? selectedDayRisc,
  }) = LoadedMoodState;
}
