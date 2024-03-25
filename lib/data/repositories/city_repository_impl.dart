import 'package:csv/csv.dart';
import 'package:collection/collection.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:pollen_tracker/common/logger.dart';
import 'package:pollen_tracker/data/mappers/cities/list_dynamic_to_city_entity_mapper.dart';
import 'package:pollen_tracker/domain/models/city_entity.dart';
import 'package:pollen_tracker/domain/repositories/city_repository.dart';

@Injectable(as: CitiesRepository)
class CityRepositoryImpl implements CitiesRepository {
  CityRepositoryImpl({required this.listDynamicToCityEntityMapper});

  ListDynamicToCityEntityMapper listDynamicToCityEntityMapper;
  final Map<int, CityEntity> _cache = {};

  @override
  Future<List<CityEntity>> getCityEntities() async {
    final asset = await rootBundle.loadString('assets/worldcities.csv');
    List<List<dynamic>> citiesAsDynamic = const CsvToListConverter().convert(asset);

    return listDynamicToCityEntityMapper.map(citiesAsDynamic);
  }

  @override
  Future<CityEntity?> getCityById(int id) async {
    final cached = _cache[id];
    if (cached != null) return cached;

    final cities = await getCityEntities();

    final city = cities.firstWhereOrNull((element) => element.id == id);
    if (city != null) {
      _cache[city.id] = city;
    }

    logger.d('returned city: $city');
    return city;
  }
}
