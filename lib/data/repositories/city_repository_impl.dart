import 'package:csv/csv.dart';
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

  @override
  Future<List<CityEntity>> getCityEntities() async {
    final asset = await rootBundle.loadString('assets/worldcities.csv');
    logger.i('Read asset');
    List<List<dynamic>> citiesAsDynamic =
        const CsvToListConverter().convert(asset);

    return listDynamicToCityEntityMapper.map(citiesAsDynamic);
  }
}
