part of 'calendar_bloc.dart';

@freezed
abstract class CalendarEvent with _$CalendarEvent {
  const factory CalendarEvent.init() = _InitCalendarEvent;
  const factory CalendarEvent.selectDay({required DateTime day}) = _SelectDayCalendarEvent;
  const factory CalendarEvent.showRiscLevel() = _ShowRiscLevelCalendarEvent;
  const factory CalendarEvent.showMoodLevel() = _ShowMoodLevelCalendarEvent;
  const factory CalendarEvent.loadedRisc({
    required Map<DateTime, RiscLevel> heatmap,
    required DateTime? selectedDay,
    required MoodType? selectedDayMood,
    required RiscLevel? selectedDayRisc,
  }) = _LoadedRiscCalendarEvent;
  const factory CalendarEvent.loadedMood({
    required Map<DateTime, MoodType> heatmap,
    required DateTime? selectedDay,
    required MoodType? selectedDayMood,
    required RiscLevel? selectedDayRisc,
  }) = _LoadedMoodCalendarEvent;
}
