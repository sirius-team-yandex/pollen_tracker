import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pollen_tracker/bloc/calendar_bloc.dart/calendar_bloc.dart';
import 'package:pollen_tracker/common/enums/mood_type.dart';
import 'package:pollen_tracker/common/enums/risc_enum.dart';
import 'package:pollen_tracker/common/localization.dart';
import 'package:pollen_tracker/common/logger.dart';
import 'package:pollen_tracker/injectable_init.dart';
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
        return Colors.red;
      case RiscLevel.moderate:
        return Colors.blue;
      case RiscLevel.high:
        return Colors.black;
      case RiscLevel.veryHigh:
        return Colors.green;
    }
  }

  Color _mapColorMood(MoodType mood) {
    switch (mood) {
      case MoodType.veryBad:
        return Colors.green;
      case MoodType.bad:
        return Colors.red;
      case MoodType.normal:
        return Colors.blue;
      case MoodType.good:
        return Colors.black;
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
          logger.d('state: $state');
          final Map<DateTime, Color> heatmapData = {};
          if (state is LoadedRiscState) {
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

          logger.d(heatmapData);

          return TableCalendar(
            calendarStyle: const CalendarStyle(
              // Use this to customize the day cells
              markerDecoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
            ),
            calendarBuilders: CalendarBuilders(
              // Customize only the markers builder to display the heatmap
              markerBuilder: (context, date, events) {
                // logger.d(date);
                if (heatmapData.containsKey(date)) {
                  logger.d('${heatmapData[date]}');
                  return Positioned(
                    right: 1,
                    bottom: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: heatmapData[date],
                      ),
                      width: 20.0,
                      height: 20.0,
                      child: Center(
                        child: Text(
                          '${heatmapData[date]}',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                    ),
                  );
                } else {
                  return null;
                }
              },
            ),
            focusedDay: DateTime.now(),
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.utc(2030, 3, 14),
          );
        },
      ),
    );
  }
}
