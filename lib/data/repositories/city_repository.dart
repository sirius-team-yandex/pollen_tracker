import 'package:pollen_tracker/domain/models/city_entity.dart';

abstract interface class CityRepository {
  Future<List<CityEntity>> getCityEntities();
}
