import 'package:flutter/material.dart';
import 'package:pollen_tracker/bloc/profile_bloc/profile_bloc.dart';
import 'package:pollen_tracker/common/logger.dart';
import 'package:pollen_tracker/domain/models/city_entity.dart';
import 'package:pollen_tracker/injectable_init.dart';

class SearchTextFieldAndResultWidget extends StatefulWidget {
  const SearchTextFieldAndResultWidget({super.key, required this.cities, required this.onSelectCityCallback});
  final void Function(CityEntity) onSelectCityCallback;

  final List<CityEntity> cities;

  @override
  State<SearchTextFieldAndResultWidget> createState() => _SearchTextFieldAndResultWidgetState();
}

class _SearchTextFieldAndResultWidgetState extends State<SearchTextFieldAndResultWidget> {
  final TextEditingController _searchController = TextEditingController();
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
            widget.cities.where((element) => element.name.toLowerCase().startsWith(searchValue.toLowerCase())).toList();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: _searchController,
          decoration: const InputDecoration(
            labelText: 'Select city',
          ),
        ),
        const SizedBox(height: 16.0),
        ListView.builder(
          shrinkWrap: true,
          itemCount: searchedCities.length >= 4 ? 4 : searchedCities.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                getIt<ProfileBloc>().changeCity(searchedCities[index]);
                widget.onSelectCityCallback(searchedCities[index]);
                _searchController.text = '${searchedCities[index].name}, ${searchedCities[index].country}';
              },
              child: ListTile(
                title: Text(
                  '${searchedCities[index].name}, ${searchedCities[index].country} ',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                // subtitle: Text('Stars: ${star.stars}'),
              ),
            );
          },
        ),
      ],
    );
  }
}
