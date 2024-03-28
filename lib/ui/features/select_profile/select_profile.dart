import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pollen_tracker/bloc/profiles_all_bloc/profiles_all_bloc.dart';
import 'package:pollen_tracker/common/localization.dart';
import 'package:pollen_tracker/common/logger.dart';
import 'package:pollen_tracker/common/router_config.dart';
import 'package:pollen_tracker/domain/models/profile_entity.dart';
import 'package:pollen_tracker/domain/repositories/config_repository.dart';
import 'package:pollen_tracker/domain/repositories/profile_repository.dart';
import 'package:pollen_tracker/injectable_init.dart';
import 'package:pollen_tracker/main.dart';
import 'package:pollen_tracker/ui/theme/colors/my_colors.dart';
import 'package:pollen_tracker/ui/theme/theme.dart';
import 'package:pollen_tracker/ui/widgets/input_text_field_widget.dart';

class SelectProfileWrapper extends StatelessWidget {
  const SelectProfileWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<ProfilesAllBloc>(),
      child: const _SelectProfile(),
    );
  }
}

class _SelectProfile extends StatelessWidget {
  const _SelectProfile();

  void _selectProfile(BuildContext context, ProfileEntity profile) {
    final config = ConfigInherited.of(context).configEntity;
    if (config == null) {
      return;
    }
    getIt<ConfigRepository>().set(
      config.copyWith(
        currProfileId: profile.profileId,
      ),
    );
    getIt<ProfileRepository>().insert(profile);
    context.go(RouteName.home);
  }

  void _removeProfile(BuildContext context, ProfileEntity profile) {
    final config = ConfigInherited.of(context).configEntity;
    if (config == null) {
      return;
    }
    getIt<ProfileRepository>().delete(profile.profileId);
  }

  @override
  Widget build(BuildContext context) {
    // TODO!: REMOVE
    List<ProfileEntity> profilesMock = [
      const ProfileEntity(name: 'profile 1', species: [], profileId: 1, cityId: 1),
      const ProfileEntity(name: 'profile 2', species: [], profileId: 2, cityId: 2),
    ];
    return BlocBuilder<ProfilesAllBloc, ProfilesAllState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              context.S.change_profile,
              style: context.T.displayMedium,
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('state $state'),
                BlocBuilder<ProfilesAllBloc, ProfilesAllState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () {
                        return const CircularProgressIndicator(); // TODO: show error
                      },
                      loaded: (profiles) {
                        if (profiles.isEmpty) {
                          profiles = profilesMock; // TODO!: REMOVE
                        }

                        //  Text(profiles[index].name, style: context.T.headlineMedium)
                        return Wrap(
                          spacing: 16,
                          runSpacing: 16,
                          children: [
                            ...List.generate(
                              profiles.length,
                              (index) => ProfilePanelItemWidget(
                                onTap: () => _selectProfile(context, profiles[index]),
                                onLongPress: () => showDialog(
                                  context: context,
                                  builder: (context) => DeleteProfileDialog(
                                    removeProfileCallback: _removeProfile,
                                  ),
                                ),
                                color: context.myColors.darkGreen,
                                child: Text(profiles[index].name, style: context.T.headlineMedium),
                              ),
                            ),
                            ProfilePanelItemWidget(
                              onTap: () => showDialog(
                                context: context,
                                builder: (context) => CreateProfileDialog(
                                  selectProfileCallback: _selectProfile,
                                ),
                              ),
                              color: context.myColors.primaryGreen,
                              onLongPress: () {},
                              child: Text('+', style: context.T.headlineMedium),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class ProfilePanelItemWidget extends StatelessWidget {
  const ProfilePanelItemWidget({
    super.key,
    required this.onTap,
    required this.child,
    required this.onLongPress,
    required this.color,
  });
  final VoidCallback onTap;
  final VoidCallback onLongPress;
  final Widget child;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      onLongPress: onLongPress,
      child: SizedBox(
        width: 150,
        height: 150,
        child: DecoratedBox(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(40), color: color),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(child: child),
          ),
        ),
      ),
    );
  }
}

class CreateProfileDialog extends StatelessWidget {
  const CreateProfileDialog({super.key, required this.selectProfileCallback});
  final Function(BuildContext context, ProfileEntity profile) selectProfileCallback;

  @override
  Widget build(BuildContext context) {
    // String profileName;

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: context.myColors.background,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 20.0,
              offset: Offset(0.0, 5.0),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              context.S.create_profile,
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const SizedBox(height: 24.0),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(
                color: context.myColors.darkGreen,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: InputTextFieldFilledWidget(
                onInputed: (value) {
                  logger.d(value);
                },
                hint: context.S.enter_name,
              ),
            ),
            const SizedBox(height: 30.0),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: context.myColors.darkGreen,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: TextButton(
                onPressed: () {
                  // TODO: impl NOT MOCKING

                  selectProfileCallback(
                    context,
                    const ProfileEntity(name: 'mockProfile 3', species: [], profileId: 3, cityId: 3),
                  );
                  Navigator.of(context).pop();
                },
                child: Text(context.S.save),
              ),
            ),
            const SizedBox(height: 30.0),
          ],
        ),
      ),
    );
  }
}

class DeleteProfileDialog extends StatelessWidget {
  const DeleteProfileDialog({super.key, required this.removeProfileCallback});
  final Function(BuildContext context, ProfileEntity profile) removeProfileCallback;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: context.myColors.background,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 20.0,
              offset: Offset(0.0, 5.0),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Вы уверены что хотите удалить профиль?',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const SizedBox(height: 30.0),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: context.myColors.darkGreen,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: TextButton(
                onPressed: () {
                  // TODO: impl NOT MOCKING
                  removeProfileCallback(
                    context,
                    const ProfileEntity(name: 'mockProfile 3', species: [], profileId: 3, cityId: 3),
                  );
                  Navigator.of(context).pop();
                },
                child: const Text('Удалить'),
              ),
            ),
            const SizedBox(height: 30.0),
          ],
        ),
      ),
    );
  }
}
