import 'package:flutter/material.dart';
import 'package:pollen_tracker/common/enums/mood_type.dart';
import 'package:pollen_tracker/ui/features/profile/wiidgets/profile_widgets/icon_surround.dart';
import 'package:pollen_tracker/ui/features/profile/wiidgets/profile_widgets/name_textfield.dart';
import 'package:pollen_tracker/ui/features/profile/wiidgets/profile_widgets/region_switching.dart';
import 'package:pollen_tracker/ui/features/profile/wiidgets/species/species_controller.dart';
import 'package:pollen_tracker/ui/features/profile/wiidgets/theme_switching_button.dart';
import 'package:pollen_tracker/ui/widgets/custom_card.dart';
import 'package:pollen_tracker/ui/widgets/mood_svg_widget.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomCard(
      width: double.infinity,
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MoodSvgWidget(
            size: 90,
            moodType: MoodType.good,
          ),
          SizedBox(
            height: 16,
          ),
          SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NameTextField(
                  //TODO ПРОКИНУТЬ ИМЯ ПОЛЬЗОВАТЕЛЯ
                  name: 'Default value',
                ),
                IconSurround(
                  icon: Icons.location_on_outlined,
                  iconPosition: IconPosition.center,
                  padding: EdgeInsets.only(bottom: 8),
                  child: RegionSwitcher(
                    regionName: 'Санкт-Петербург, Россия',
                  ),
                ),
                IconSurround(
                  icon: Icons.bookmark_border,
                  padding: EdgeInsets.only(bottom: 8),
                  child: SpeciesController(
                    userSpecies: ['Бибааааааа', 'Бобаааааа', 'Ваня', 'Руслан'],
                  ),
                ),
                IconSurround(
                  iconPosition: IconPosition.center,
                  icon: Icons.dark_mode_outlined,
                  padding: EdgeInsets.only(bottom: 8),
                  child: ThemeSwitchingButton(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
