import 'package:flutter/material.dart';
import 'package:pollen_tracker/common/enums/locale_enum.dart';
import 'package:pollen_tracker/common/localization.dart';
import 'package:pollen_tracker/domain/repositories/config_repository.dart';
import 'package:pollen_tracker/injectable_init.dart';
import 'package:pollen_tracker/main.dart';
import 'package:pollen_tracker/ui/theme/colors/my_colors.dart';
import 'package:pollen_tracker/ui/theme/theme.dart';

class LanguageChangingButton extends StatefulWidget {
  const LanguageChangingButton({super.key});

  @override
  State<LanguageChangingButton> createState() => _LanguageChangingButtonState();
}

class _LanguageChangingButtonState extends State<LanguageChangingButton> {
  bool isOpened = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isOpened = !isOpened;
            });
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                context.S.language,
                style: context.T.displayMedium,
              ),
              Icon(isOpened ? Icons.keyboard_double_arrow_up : Icons.keyboard_double_arrow_down),
            ],
          ),
        ),
        Visibility(
          visible: isOpened,
          child: Column(
            children: [
              const SizedBox(
                height: 24,
              ),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  ...List.generate(
                    LocaleEnum.values.length,
                    (index) {
                      bool isSelectedLocale =
                          ConfigInherited.of(context).configEntity?.locale == LocaleEnum.values[index];
                      return GestureDetector(
                        onTap: () {
                          getIt<ConfigRepository>().set(
                            ConfigInherited.of(context).configEntity!.copyWith(locale: LocaleEnum.values[index]),
                          );
                          setState(() {
                            isOpened = false;
                          });
                        },
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: context.myColors.darkGreen,
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              color: isSelectedLocale ? context.myColors.primary : context.myColors.darkGreen,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(LocaleEnum.values[index].name, style: context.T.displayMedium),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
