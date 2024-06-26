import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:pollen_tracker/bloc/profiles_all_bloc/profiles_all_bloc.dart';
import 'package:pollen_tracker/common/enums/species_enums.dart';
import 'package:pollen_tracker/common/localization.dart';
import 'package:pollen_tracker/common/logger.dart';
import 'package:pollen_tracker/common/router_config.dart';
import 'package:pollen_tracker/domain/models/city_entity.dart';
import 'package:pollen_tracker/domain/models/profile_entity.dart';
import 'package:pollen_tracker/domain/repositories/config_repository.dart';
import 'package:pollen_tracker/domain/repositories/profile_repository.dart';
import 'package:pollen_tracker/injectable_init.dart';
import 'package:pollen_tracker/main.dart';
import 'package:pollen_tracker/ui/widgets/species/species_controller.dart';
import 'package:pollen_tracker/ui/theme/colors/my_colors.dart';
import 'package:pollen_tracker/ui/theme/theme.dart';
import 'package:pollen_tracker/ui/widgets/input_text_field_widget.dart';
import 'package:pollen_tracker/ui/widgets/notification_toast.dart';
import 'package:pollen_tracker/ui/widgets/search_text_field_and_result_widget.dart';

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
      logger.i('Config is null, deletion aborted!');
      return;
    }

    logger.i('Config is $config, perform deletion of $profile!');
    getIt<ProfileRepository>().delete(profile.profileId);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfilesAllBloc, ProfilesAllState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            scrolledUnderElevation: 0,
            title: Text(
              context.S.change_profile,
              style: context.T.displayMedium,
            ),
          ),
          body: Center(
            child: BlocBuilder<ProfilesAllBloc, ProfilesAllState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () {
                    return const CircularProgressIndicator(); // TODO: show error
                  },
                  loaded: (profiles) {
                    return ListView.separated(
                      padding: const EdgeInsets.all(32),
                      itemCount: profiles.length + 1,
                      itemBuilder: (context, index) {
                        if (index == 0) {
                          return ProfilePanelItemWidget(
                            onTap: () => showDialog(
                              context: context,
                              builder: (context) => CreateProfileDialog(
                                selectProfileCallback: _selectProfile,
                                cities: CitiesInherited.of(context).cities,
                              ),
                            ),
                            color: context.myColors.primaryGreen,
                            onLongPress: () {},
                            child: Icon(Icons.add_circle_outline_rounded, color: context.myColors.primary, size: 60),
                          );
                        }
                        return Dismissible(
                          key: UniqueKey(),
                          confirmDismiss: (_) {
                            return showDialog(
                              context: context,
                              builder: (context) => DeleteProfileDialog(
                                removeProfileCallback: _removeProfile,
                                profile: profiles[index - 1],
                              ),
                            );
                          },
                          child: ProfilePanelItemWidget(
                            onTap: () => _selectProfile(context, profiles[index - 1]),
                            onLongPress: () => showDialog(
                              context: context,
                              builder: (context) => DeleteProfileDialog(
                                removeProfileCallback: _removeProfile,
                                profile: profiles[index - 1],
                              ),
                            ),
                            color: context.myColors.darkGreen,
                            child: Text(profiles[index - 1].name, style: context.T.headlineMedium),
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 32),
                    );
                  },
                );
              },
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

class CreateProfileDialog extends StatefulWidget {
  const CreateProfileDialog({super.key, required this.selectProfileCallback, required this.cities});
  final Function(BuildContext context, ProfileEntity profile) selectProfileCallback;
  final List<CityEntity> cities;
  @override
  State<CreateProfileDialog> createState() => _CreateProfileDialogState();
}

class _CreateProfileDialogState extends State<CreateProfileDialog> {
  String profileName = '';
  late CityEntity selectedCity;
  List<Species> selectedSpecies = [];
  void _setCity(CityEntity city) => setState(() => selectedCity = city);
  void _setName(String name) => setState(() {
        profileName = name;
        logger.i(name);
      });

  int _getUniqueId() {
    return Random().nextInt(10000);
  }

  void _addToSelectedSpecies(Species species) {
    setState(() {
      if (!selectedSpecies.contains(species)) {
        selectedSpecies.add(species);
      }
    });
  }

  void _removeFromSelectedSpecies(Species species) {
    setState(() {
      if (selectedSpecies.contains(species)) {
        selectedSpecies.remove(species);
      }
    });
  }

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
                onInputed: _setName,
                hint: context.S.enter_name,
              ),
            ),
            SearchTextFieldAndResultWidget(
              cities: widget.cities,
              onSelectCityCallback: _setCity,
            ),
            const SizedBox(height: 16.0),
            Text(
              context.S.select_species,
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const SizedBox(height: 16.0),
            SpeciesController(
              userSpecies: selectedSpecies,
              callback: _addToSelectedSpecies,
              removeCallback: _removeFromSelectedSpecies,
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
                  widget.selectProfileCallback(
                    context,
                    ProfileEntity(
                      name: profileName.trim() != '' ? profileName : 'UserName_${DateTime.now().microsecond}',
                      species: selectedSpecies,
                      profileId: _getUniqueId(),
                      cityId: selectedCity.id,
                    ),
                  );
                  Navigator.of(context).pop();
                },
                child: Text(context.S.save, style: context.T.headlineMedium),
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
  const DeleteProfileDialog({super.key, required this.removeProfileCallback, required this.profile});
  final Function(BuildContext context, ProfileEntity profile) removeProfileCallback;
  final ProfileEntity profile;

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
              '${context.S.did_you_sure_for_deleting_profile} ${profile.name} ?',
              textAlign: TextAlign.center,
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
                  removeProfileCallback(context, profile);
                  showOverlayNotification(
                    duration: const Duration(seconds: 5),
                    (context) {
                      return NotificationToast(
                        message: context.S.your_profile_deleted,
                      );
                    },
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
