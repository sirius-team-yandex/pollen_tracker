import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:pollen_tracker/common/logger.dart';
import 'package:pollen_tracker/domain/models/city_entity.dart';
import 'package:pollen_tracker/domain/repositories/city_repository.dart';

@Injectable(as: CityRepository)
class CityRepositoryImpl implements CityRepository {
  CityRepositoryImpl();

  @override
  Future<List<CityEntity>> getCityEntities() async {
    final asset = await rootBundle.loadString('assets/worldcities.csv');

    logger.i(asset);

    return List.empty();
  }
}
