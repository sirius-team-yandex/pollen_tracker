import 'package:pollen_tracker/domain/models/pollen_entity.dart';

abstract interface class NetworkPollenRepository {
  Future<List<PollenEntity>> fetchForecast(double lat, double lng);
}
