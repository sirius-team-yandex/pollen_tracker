import 'package:flutter/material.dart';
import 'package:pollen_tracker/common/localization.dart';
import 'package:pollen_tracker/domain/models/city_entity.dart';
import 'package:pollen_tracker/ui/theme/colors/my_colors.dart';
import 'package:pollen_tracker/ui/widgets/search_text_field_and_result_widget.dart';

class CitySetDialog extends StatelessWidget {
  const CitySetDialog({
    super.key,
    required this.regionName,
    required this.cities,
  });
  final List<CityEntity> cities;
  final String regionName;
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
              context.S.change_city,
              style: Theme.of(context).textTheme.displayMedium,
            ),
            Text(
              regionName,
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const SizedBox(height: 24.0),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(
                color: context.myColors.darkGreen,
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: SearchTextFieldAndResultWidget(cities: cities, onSelectCityCallback: (city) {
                // TODO: check
                Navigator.of(context).pop(city);
              }),
            ),
            const SizedBox(height: 30.0),
          ],
        ),
      ),
    );
  }
}
