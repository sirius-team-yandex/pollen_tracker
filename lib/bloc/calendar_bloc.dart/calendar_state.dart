part of 'calendar_bloc.dart';

@freezed
class CalendarState with _$CalendarState {
  const factory CalendarState.init() = InitCalendarState;

  const factory CalendarState.loadedRisc({
    required Map<DateTime, RiscLevel> heatmap,
    required DateTime? selectedDay,
    required MoodType? selectedDayMood,
    required RiscLevel? selectedDayRisc,
    required String? selectedDayComment,
  }) = LoadedRiscState;

  const factory CalendarState.loadedMood({
    required Map<DateTime, MoodType> heatmap,
    required DateTime? selectedDay,
    required MoodType? selectedDayMood,
    required RiscLevel? selectedDayRisc,
    required String? selectedDayComment,
  }) = LoadedMoodState;
}
