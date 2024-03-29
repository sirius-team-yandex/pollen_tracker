import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pollen_tracker/bloc/current_mood_bloc/current_mood_bloc.dart';
import 'package:pollen_tracker/ui/features/home/home_widgets/current_mood_widgets/loaded_mood/loaded_mood_widget.dart';
import 'package:pollen_tracker/ui/features/home/home_widgets/current_mood_widgets/not_loaded_mood/new_mood_widget.dart';

class CurrentMoodWidget extends StatelessWidget {
  const CurrentMoodWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: BlocBuilder<CurrentMoodBloc, CurrentMoodState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () {
              return const Center(child: CircularProgressIndicator()); // TODO: show error
            },
            loaded: (mood) {
              return LoadedMoodWidget(record: mood);
            },
            notSet: () {
              return const NewMoodWidget();
            },
          );
        },
      ),
    );
  }
}
