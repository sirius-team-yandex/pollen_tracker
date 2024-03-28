import 'package:pollen_tracker/domain/models/city_entity.dart';

abstract interface class SyncCitiesRepository {
  List<CityEntity> getAllSync();
  CityEntity? getCityByIdSync(int id);
  Future<void> loadCache();
}
