import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pollen_tracker/bloc/profile_bloc/profile_bloc.dart';
import 'package:pollen_tracker/injectable_init.dart';
import 'package:pollen_tracker/main.dart';
import 'package:pollen_tracker/ui/features/profile/widgets/language_changing_button.dart';
import 'package:pollen_tracker/ui/features/profile/widgets/profile_widgets/icon_surround.dart';
import 'package:pollen_tracker/ui/features/profile/widgets/profile_widgets/name_textfield.dart';
import 'package:pollen_tracker/ui/features/profile/widgets/profile_widgets/profile_icon.dart';
import 'package:pollen_tracker/ui/features/profile/widgets/profile_widgets/region_switching.dart';
import 'package:pollen_tracker/ui/widgets/species/species_controller.dart';
import 'package:pollen_tracker/ui/features/profile/widgets/theme_switching_button.dart';
import 'package:pollen_tracker/ui/widgets/custom_card.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const ProfileIcon(),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BlocBuilder<ProfileBloc, ProfileState>(
                  builder: (context, state) {
                    return state.map(
                      error: (value) => const Text(''), // TODO:
                      logedOut: (value) => const Text(''), // TODO:
                      logedIn: (value) {
                        final cityEntity = CitiesInherited.of(context)
                            .cities
                            .firstWhereOrNull((element) => element.id == value.profile.cityId);
                        final regionText =
                            cityEntity == null ? 'Не указан' : '${cityEntity.name}, ${cityEntity.country}';
                        return Column(
                          children: [
                            NameTextField(
                              profile: value.profile,
                            ),
                            IconSurround(
                              icon: Icons.location_on_outlined,
                              iconPosition: IconPosition.center,
                              padding: const EdgeInsets.only(bottom: 8),
                              child: RegionSwitcher(
                                regionName: regionText,
                              ),
                            ),
                            IconSurround(
                              icon: Icons.bookmark_border,
                              padding: const EdgeInsets.only(bottom: 8),
                              child: SpeciesController(
                                userSpecies: value.profile.species,
                                removeCallback: getIt<ProfileBloc>().removeSpecies,
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
                const IconSurround(
                  iconPosition: IconPosition.center,
                  icon: Icons.dark_mode_outlined,
                  padding: EdgeInsets.only(bottom: 8),
                  child: ThemeSwitchingButton(),
                ),
                const IconSurround(
                  iconPosition: IconPosition.center,
                  icon: Icons.language,
                  padding: EdgeInsets.only(bottom: 8),
                  child: LanguageChangingButton(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
