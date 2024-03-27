import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pollen_tracker/common/enums/locale_enum.dart';
import 'package:pollen_tracker/domain/models/config_entity.dart';
import 'package:pollen_tracker/domain/repositories/config_repository.dart';
import 'package:pollen_tracker/injectable_init.dart';
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
      children: [
        Text(Theme.of(context).brightness == Brightness.dark ? 'Dark mode' : 'Light mode', style: context.theme.textTheme.displayMedium),
        Switch(
          // This bool value toggles the switch.
          value: Theme.of(context).brightness == Brightness.dark,
          overlayColor: const MaterialStatePropertyAll<Color>(Colors.black),
          trackColor: const MaterialStatePropertyAll<Color>(Colors.white),
          thumbColor: const MaterialStatePropertyAll<Color>(Colors.black),
          onChanged: (bool value) async {
            // This is called when the user toggles the switch.
            if (value) {
              getIt<ConfigRepository>().set(
                ConfigEntity(
                  locale: Localizations.localeOf(context).languageCode == 'en' ? LocaleEnum.en : LocaleEnum.ru,
                  darkTheme: ThemeMode.dark,
                ),
              );
             
            } else {
              getIt<ConfigRepository>().set(
                ConfigEntity(
                  locale: Localizations.localeOf(context).languageCode == 'en' ? LocaleEnum.en : LocaleEnum.ru,
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
