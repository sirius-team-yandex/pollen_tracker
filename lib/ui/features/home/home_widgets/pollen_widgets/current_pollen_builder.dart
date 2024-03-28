import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pollen_tracker/bloc/current_pollen_bloc/current_pollen_bloc.dart';
import 'package:pollen_tracker/ui/features/home/home_widgets/pollen_widgets/current_pollen_shimer.dart';
import 'package:pollen_tracker/ui/features/home/home_widgets/pollen_widgets/current_pollen_widget.dart';

class CurrentPollenWidgetBuilder extends StatelessWidget {
  const CurrentPollenWidgetBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrentPollenBloc, CurrentPollenState>(
      builder: (context, state) {
        return state.maybeWhen(
          loaded: (value) => value.isEmpty
              ? const SizedBox()
              : CurrentPollenWidget(
                  pollenForecasts: value,
                ),
          init: () => const CurrentPollenShimer(),
          orElse: () => const SizedBox(),
        );
      },
    );
  }
}
