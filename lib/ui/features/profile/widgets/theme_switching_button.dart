import 'package:flutter/material.dart';
import 'package:pollen_tracker/common/localization.dart';
import 'package:pollen_tracker/domain/repositories/config_repository.dart';
import 'package:pollen_tracker/injectable_init.dart';
import 'package:pollen_tracker/main.dart';
import 'package:pollen_tracker/ui/theme/theme.dart';

class ThemeSwitchingButton extends StatefulWidget {
  const ThemeSwitchingButton({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ThemeSwitchingButtonState createState() => _ThemeSwitchingButtonState();
}

class _ThemeSwitchingButtonState extends State<ThemeSwitchingButton> {
  late bool isDarkModeEnabled;

  @override
  Future<void> didChangeDependencies() async {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          context.theme.brightness == Brightness.dark ? context.S.dark_mode : context.S.light_mode,
          style: context.T.displayMedium,
        ),
        const SizedBox(
          width: 4,
        ),
        Switch(
          // This bool value toggles the switch.
          value: Theme.of(context).brightness == Brightness.dark,
          overlayColor: const MaterialStatePropertyAll<Color>(Colors.black),
          trackColor: const MaterialStatePropertyAll<Color>(Colors.white),
          thumbColor: const MaterialStatePropertyAll<Color>(Colors.black),
          onChanged: (bool value) async {
            final config = ConfigInherited.of(context).configEntity;
            if (config == null) {
              return;
            }
            if (value) {
              getIt<ConfigRepository>().set(
                config.copyWith(
                  darkTheme: ThemeMode.dark,
                ),
              );
            } else {
              getIt<ConfigRepository>().set(
                config.copyWith(
                  darkTheme: ThemeMode.light,
                ),
              );
            }
            setState(
              () {
                isDarkModeEnabled = value;
              },
            );
          },
        ),
      ],
    );
  }
}
