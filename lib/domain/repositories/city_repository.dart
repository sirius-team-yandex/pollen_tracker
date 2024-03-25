import 'package:pollen_tracker/domain/models/city_entity.dart';

abstract interface class CitiesRepository {
  Future<List<CityEntity>> getCityEntities();
  Future<CityEntity?> getCityById(int id);
}
