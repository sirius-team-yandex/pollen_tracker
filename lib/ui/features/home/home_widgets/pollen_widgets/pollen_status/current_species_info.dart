import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pollen_tracker/bloc/profile_bloc/profile_bloc.dart';
import 'package:pollen_tracker/ui/theme/colors/my_colors.dart';

class CurrentSpeciesInfo extends StatelessWidget {
  const CurrentSpeciesInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return state.maybeWhen(
          logedIn: (profile) => DecoratedBox(
            decoration: BoxDecoration(
              color: context.myColors.primaryGreen,
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Column(
              children: List.generate(
                3,
                (index) => Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Text(profile.species[index].name, style: Theme.of(context).textTheme.displayMedium),
                ),
              ),
            ),
          ),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
