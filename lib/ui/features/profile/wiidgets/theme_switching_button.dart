import 'package:flutter/material.dart';
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
  void didChangeDependencies() {
    super.didChangeDependencies();
    isDarkModeEnabled = Theme.of(context).brightness == Brightness.dark;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(isDarkModeEnabled ? 'Dark mode' : 'Light mode', style: context.theme.textTheme.displayMedium),
        Switch(
          // This bool value toggles the switch.
          value: isDarkModeEnabled,
          overlayColor: const MaterialStatePropertyAll<Color>(Colors.black),
          trackColor: const MaterialStatePropertyAll<Color>(Colors.white),
          thumbColor: const MaterialStatePropertyAll<Color>(Colors.black),
          onChanged: (bool value) {
            // This is called when the user toggles the switch.
            if (value) {
              (context.findAncestorStateOfType<PollenAppState>())?.updateThemeMode(ThemeMode.dark);
            } else {
              (context.findAncestorStateOfType<PollenAppState>())?.updateThemeMode(ThemeMode.light);
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
