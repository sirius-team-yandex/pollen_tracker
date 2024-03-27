import 'package:flutter/material.dart';
import 'package:pollen_tracker/common/localization.dart';
import 'package:pollen_tracker/ui/features/profile/wiidgets/profile_widgets/icon_surround.dart';
import 'package:pollen_tracker/ui/features/profile/wiidgets/profile_widget.dart';
import 'package:pollen_tracker/ui/features/profile/wiidgets/profile_widget.dart' as v2;
import 'package:pollen_tracker/ui/theme/colors/my_colors.dart';
import 'package:pollen_tracker/ui/theme/theme.dart';
import 'package:pollen_tracker/ui/widgets/custom_button.dart';
import 'package:pollen_tracker/ui/widgets/pages_appbar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: PagesAppBar(
          title: context.S.profile,
          icon: Icons.person_outline,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //const ProfileWidget(),
            const v2.ProfileWidget(),
            const SizedBox(
              height: 16,
            ),
            CustomButton(
              onPressed: () {},
              width: double.infinity,
              color: context.myColors.darkGreen,
              child: IconSurround(
                icon: Icons.cached_rounded,
                child: Text('Сменить профиль', style: context.T.headlineMedium),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
