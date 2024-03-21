import 'package:pollen_tracker/domain/models/pollen_entity.dart';

abstract class PollenRepository {
  Future<List<PollenEntity>> getPollenEntities(double lat, double lng);
}
