import 'package:pollen_tracker/data/models/local/pollen_entity.dart';

abstract class PollenRepository {
  Future<List<PollenEntity>> getPollenEntities(double lat, double lng);
}
