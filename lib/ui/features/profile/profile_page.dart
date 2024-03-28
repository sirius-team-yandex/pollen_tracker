import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pollen_tracker/common/localization.dart';
import 'package:pollen_tracker/common/router_config.dart';
import 'package:pollen_tracker/domain/models/city_entity.dart';
import 'package:pollen_tracker/domain/repositories/config_repository.dart';
import 'package:pollen_tracker/injectable_init.dart';
import 'package:pollen_tracker/main.dart';
import 'package:pollen_tracker/ui/features/profile/widgets/profile_widgets/icon_surround.dart';
import 'package:pollen_tracker/ui/features/profile/widgets/profile_widget.dart' as v2;
import 'package:pollen_tracker/ui/theme/colors/my_colors.dart';
import 'package:pollen_tracker/ui/theme/theme.dart';
import 'package:pollen_tracker/ui/widgets/custom_button.dart';
import 'package:pollen_tracker/ui/widgets/pages_appbar.dart';

class ProfilePageWrapper extends StatefulWidget {
  const ProfilePageWrapper({super.key});

  @override
  State<ProfilePageWrapper> createState() => _ProfilePageWrapperState();
}

class _ProfilePageWrapperState extends State<ProfilePageWrapper> {
  List<CityEntity>? cities;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const ProfilePage();
  }
}

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
            // if (kDebugMode)
            //   TextButton(
            //     onPressed: () {
            //       final config = ConfigInherited.of(context).configEntity;
            //       if (config != null) {
            //         getIt<ConfigRepository>().set(
            //           config.copyWith(isFirstLaunch: true, currProfileId: null),
            //         );
            //       }
            //     },
            //     child: Text('${ConfigInherited.of(context).configEntity}', style: context.T.headlineMedium),
            //   ),
            // if (kDebugMode)
            //   BlocBuilder<ProfileBloc, ProfileState>(
            //     builder: (context, state) {
            //       return state.maybeWhen(
            //         logedIn: (value) => Text('$value', style: context.T.headlineMedium),
            //         orElse: () {
            //           return const Text(''); // TODO: (error)
            //         },
            //       );
            //     },
            //   ),
            CustomButton(
              onPressed: () {
                context.go(RouteName.selectProfile);
                final config = ConfigInherited.of(context).configEntity;
                if (config == null) {
                  return;
                }
                getIt<ConfigRepository>().set(
                  config.copyWith(
                    currProfileId: null,
                  ),
                );
              },
              width: double.infinity,
              color: context.myColors.darkGreen,
              child: IconSurround(
                icon: Icons.cached_rounded,
                child: Text(context.S.change_profile, style: context.T.headlineMedium),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
