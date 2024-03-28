import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pollen_tracker/bloc/profile_bloc/profile_bloc.dart';
import 'package:pollen_tracker/common/localization.dart';
import 'package:pollen_tracker/common/logger.dart';
import 'package:pollen_tracker/domain/models/city_entity.dart';
import 'package:pollen_tracker/injectable_init.dart';
import 'package:pollen_tracker/ui/theme/colors/my_colors.dart';

class CitySetDialog extends StatelessWidget {
  const CitySetDialog({super.key, required this.regionName,required this.cities, });
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
              child: _SearchTextFieldAndResultWidget( cities: cities),
            ),
            const SizedBox(height: 30.0),
          ],
        ),
      ),
    );
  }
}

class _SearchTextFieldAndResultWidget extends StatefulWidget {
  const _SearchTextFieldAndResultWidget( {required this.cities});

  final List<CityEntity> cities;

  @override
  State<_SearchTextFieldAndResultWidget> createState() => __SearchTextFieldAndResultWidgetState();
}

class __SearchTextFieldAndResultWidgetState extends State<_SearchTextFieldAndResultWidget> {
  TextEditingController _searchController = TextEditingController();
  List<CityEntity> searchedCities = [];
  @override
  void initState() {
    super.initState();
    _searchController.addListener(_search);

  }
  @override
  void dispose() {
    _searchController.removeListener(_search);
    _searchController.dispose();
    super.dispose();
  }

  void _search() async {
    String searchValue = _searchController.text;
    if (searchValue.isEmpty) {
      setState(() {
        searchedCities = [];
      });
      return;
    }
    logger.d(searchValue);

    // TODO: inherited cities

    setState(
      () {
        searchedCities =
            widget.cities.where((element) => element.name.startsWith(searchValue)).toList();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: _searchController,
          decoration: InputDecoration(
            labelText: 'Search',
          ),
        ),
        SizedBox(height: 16.0),
        ListView.builder(
          shrinkWrap: true,
          itemCount: searchedCities.length >= 4 ? 4 : searchedCities.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){
                getIt<ProfileBloc>().changeCity(searchedCities[index]);
                context.pop();
              },
              child: ListTile(
                title: Text('${searchedCities[index].name}, ${searchedCities[index].country} ', style: Theme.of(context).textTheme.titleMedium,),
                // subtitle: Text('Stars: ${star.stars}'),
              ),
            );
          },
        ),
      ],
    );
  }
}
