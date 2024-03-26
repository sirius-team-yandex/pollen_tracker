part of 'calendar_bloc.dart';

@freezed
abstract class CalendarEvent with _$CalendarEvent {
const factory CalendarEvent._init() = _InitCalendarEvent;
  const factory CalendarEvent._selectDay({required DateTime day}) = _SelectDayCalendarEvent;
  const factory CalendarEvent._showRiscLevel() = _ShowRiscLevelCalendarEvent;
  const factory CalendarEvent._showMoodLevel() = _ShowMoodLevelCalendarEvent;
}
