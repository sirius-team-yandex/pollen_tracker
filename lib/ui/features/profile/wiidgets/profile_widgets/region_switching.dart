import 'package:flutter/material.dart';
import 'package:pollen_tracker/common/logger.dart';
import 'package:pollen_tracker/ui/dialogs/city_set_dialog.dart';
import 'package:pollen_tracker/ui/features/profile/profile_page.dart';
import 'package:pollen_tracker/ui/theme/theme.dart';

class RegionSwitcher extends StatelessWidget {
  final String regionName;
  const RegionSwitcher({super.key, required this.regionName});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      //TODO Настроить сплеш
      style: TextButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(6),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        padding: EdgeInsets.zero,
        splashFactory: NoSplash.splashFactory,
      ),
      onPressed: () {
        //TODO ивент на смену города
        showDialog(
          context: context,
          builder: (contextInner) => CitySetDialog(
            cities: CitiesInherited.of(context).cities,
            regionName: regionName,
          ),
        );
        logger.i('ГОРОД');
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Text(
              regionName,
              style: context.T.displayMedium,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 2),
            child: Icon(
              Icons.arrow_forward_ios,
              size: 16,
            ),
          ),
        ],
      ),
    );
  }
}
