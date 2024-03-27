import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pollen_tracker/bloc/profile_bloc/profile_bloc.dart';
import 'package:pollen_tracker/common/enums/mood_type.dart';
import 'package:pollen_tracker/common/gen/localization/app_localizations.dart';
import 'package:pollen_tracker/ui/features/profile/wiidgets/theme_switching_button.dart';
import 'package:pollen_tracker/ui/theme/colors/my_colors.dart';
import 'package:pollen_tracker/ui/theme/theme.dart';
import 'package:pollen_tracker/ui/widgets/city_location_widget.dart';
import 'package:pollen_tracker/ui/widgets/mood_svg_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context).profile, style: context.theme.textTheme.displayMedium)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: context.myColors.primaryGreen,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const MoodSvgWidget(moodType: MoodType.good),
                  const SizedBox(
                    width: 12,
                  ),
                  Column(
                    children: [
                      Text('Name Surname', style: context.theme.textTheme.displayMedium),
                      const CityLocationWidget(location: 'Санкт-Петербург, Россия'),
                      const ThemeSwitchingButton(),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 66,
            ),
            BlocBuilder<ProfileBloc, ProfileState>(
              builder: (context, state) {
                return Text('state: $state');
              },
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: context.myColors.darkGreen,
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.change_circle),
                  Text('Сменить профиль'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
