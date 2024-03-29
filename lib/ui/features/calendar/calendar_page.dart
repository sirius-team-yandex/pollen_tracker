import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pollen_tracker/bloc/calendar_bloc.dart/calendar_bloc.dart';
import 'package:pollen_tracker/common/enums/mood_type.dart';
import 'package:pollen_tracker/common/enums/risc_enum.dart';
import 'package:pollen_tracker/common/localization.dart';
import 'package:pollen_tracker/common/logger.dart';
import 'package:pollen_tracker/injectable_init.dart';
import 'package:pollen_tracker/ui/features/calendar/calendat_widget.dart/calendar_heat_widget.dart';
import 'package:pollen_tracker/ui/features/calendar/today_overview.dart';
import 'package:pollen_tracker/ui/theme/colors/my_colors.dart';
import 'package:pollen_tracker/ui/widgets/custom_button.dart';
import 'package:pollen_tracker/ui/widgets/custom_card.dart';
import 'package:pollen_tracker/ui/widgets/pages_appbar.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarPageWrapper extends StatelessWidget {
  const CalendarPageWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<CalendarBloc>(),
      child: const CalendarPage(),
    );
  }
}

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  Color _mapColorRisc(RiscLevel level) {
    switch (level) {
      case RiscLevel.low:
        return const Color(0xFF7be1ac);
      case RiscLevel.moderate:
        return const Color(0xFFfbdc71);
      case RiscLevel.high:
        return const Color(0xFFefb494);
      case RiscLevel.veryHigh:
        return const Color(0xFFe36d6d);
    }
  }

  Color _mapColorMood(MoodType mood) {
    switch (mood) {
      case MoodType.veryBad:
        return const Color(0xFFe36d6d);
      case MoodType.bad:
        return const Color(0xFFefb494);
      case MoodType.normal:
        return const Color(0xFFfbdc71);
      case MoodType.good:
        return const Color(0xFF7be1ac);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: PagesAppBar(
          title: context.S.history,
          icon: Icons.history,
        ),
      ),
      body: BlocBuilder<CalendarBloc, CalendarState>(
        builder: (context, state) {
          //TODO СУПЕР СОМНИТЕЛЬНО
          MoodType? moodType;
          RiscLevel? riscLevel;
          final Map<DateTime, Color> heatmapData = {};
          DateTime? selectedDay;
          if (state is LoadedRiscState) {
            selectedDay = state.selectedDay;
            moodType = state.selectedDayMood;
            riscLevel = state.selectedDayRisc;
            logger.d('$selectedDay $moodType $riscLevel');
            heatmapData.addAll(
              state.heatmap.map(
                (key, value) => MapEntry(
                  key
                      .copyWith(
                        hour: 0,
                        minute: 0,
                        second: 0,
                        millisecond: 0,
                        microsecond: 0,
                      )
                      .toUtc(),
                  _mapColorRisc(value),
                ),
              ),
            );
          } else if (state is LoadedMoodState) {
            selectedDay = state.selectedDay;
            moodType = state.selectedDayMood;
            riscLevel = state.selectedDayRisc;
            heatmapData.addAll(
              state.heatmap.map(
                (key, value) => MapEntry(
                  key
                      .copyWith(
                        hour: 0,
                        minute: 0,
                        second: 0,
                        millisecond: 0,
                        microsecond: 0,
                      )
                      .toUtc(),
                  _mapColorMood(value),
                ),
              ),
            );
          }

          logger.d('new state: ${heatmapData}');

          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                CustomButton(
                  child:
                      Text(state is LoadedRiscState ? context.S.calendar_mood_turner : context.S.calendar_risk_turner),
                  onPressed: () {
                    if (state is LoadedMoodState) {
                      context.calendarBloc?.showRisc();
                    } else {
                      context.calendarBloc?.showMood();
                    }
                  },
                ),
                const SizedBox(
                  height: 8,
                ),
                CustomCard(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  height: 400,
                  backgroundColor: context.myColors.primaryGreen,
                  child: TableCalendar(
                    daysOfWeekStyle: DaysOfWeekStyle(
                      weekdayStyle: TextStyle(color: context.myColors.onBackground),
                      weekendStyle: TextStyle(color: context.myColors.onBackground),
                    ),
                    headerStyle: HeaderStyle(
                      titleCentered: true,
                      formatButtonVisible: false,
                      titleTextStyle: TextStyle(color: context.myColors.onBackground),
                    ),
                    calendarStyle: CalendarStyle(
                      disabledTextStyle: TextStyle(color: context.myColors.onBackground),
                      weekNumberTextStyle: TextStyle(color: context.myColors.onBackground),
                      weekendTextStyle: TextStyle(color: context.myColors.onBackground),
                      defaultTextStyle: TextStyle(color: context.myColors.onBackground),
                      markerDecoration: const BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                    ),
                    calendarBuilders: CalendarBuilders(
                      // Customize only the markers builder to display the heatmap
                      markerBuilder: (context, date, events) {
                        // logger.d(date);
                        if (heatmapData.containsKey(date)) {
                          return Positioned(
                            top: 7,
                            bottom: 7,
                            child: date.day != DateTime.now().day
                                ? CalendarHeatWidget(
                                    date: date,
                                    color: heatmapData[date],
                                    text: date.day.toString(),
                                  )
                                : const SizedBox(),
                          );
                        }
                        return null;
                      },
                    ),
                    focusedDay: DateTime.now(),
                    firstDay: DateTime.utc(2010, 10, 16),
                    lastDay: DateTime.utc(2030, 3, 14),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                if (moodType != null && riscLevel != null && selectedDay != null)
                  TodayOverview(
                    selectedDay: selectedDay,
                    moodType: moodType,
                    riscLevel: riscLevel,
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
