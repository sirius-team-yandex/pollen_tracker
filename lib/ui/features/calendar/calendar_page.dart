import 'package:flutter/material.dart';
import 'package:pollen_tracker/common/localization.dart';
import 'package:pollen_tracker/common/logger.dart';
import 'package:pollen_tracker/ui/widgets/pages_appbar.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  // Example heatmap data source
  final Map<DateTime, int> _heatMapData = {
    DateTime.utc(2024, 3, 26, 0, 0, 0): 5,
    DateTime.utc(2024, 3, 10): 10,
    DateTime.utc(2024, 3, 19): 15,

    // Add more heatmap data here
  };

  // You can use this function to determine the color based on the heatmap value
  Color _heatmapColor(int value) {
    if (value <= 5) {
      return Colors.green[100]!;
    } else if (value <= 10) {
      return Colors.green[300]!;
    } else {
      return Colors.green[900]!;
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
      body: TableCalendar(
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
            // logger.d(_heatMapData.keys.first.toIso8601String());
            if (_heatMapData.containsKey(date)) {
              logger.d('${_heatMapData[date]}');
              return Positioned(
                right: 1,
                bottom: 1,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _heatmapColor(_heatMapData[date]!),
                  ),
                  width: 20.0,
                  height: 20.0,
                  child: Center(
                    child: Text(
                      '${_heatMapData[date]}',
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
      ),
    );
  }
}
