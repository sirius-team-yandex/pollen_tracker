import 'package:flutter/material.dart';
import 'package:pollen_tracker/bloc/calendar_bloc.dart/calendar_bloc.dart';
import 'package:pollen_tracker/common/logger.dart';
import 'package:pollen_tracker/ui/widgets/custom_card.dart';

class CalendarHeatWidget extends StatelessWidget {
  final Color? color;
  final String? text;
  final DateTime date;
  const CalendarHeatWidget({
    super.key,
    required this.color,
    required this.text,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      borderRadius: BorderRadius.circular(36),
      backgroundColor: color ?? Colors.transparent,
      width: 38.0,
      height: 38.0,
      child: GestureDetector(
        onTap: () {
          context.calendarBloc?.selectDay(date);
          logger.i('Selected day: ${date.toString()}');
        },
        child: Center(
          child: Text(
            text ?? '',
            style: Theme.of(context).textTheme.displaySmall,
          ),
        ),
      ),
    );
  }
}
