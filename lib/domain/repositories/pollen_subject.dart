import 'package:pollen_tracker/domain/models/pollen_entity.dart';

// All of the records will be given based on the current lat and lng.
abstract interface class PollenSubject {
  // Return stream of any PollenEntity after the given DateTime, could be empty
  // Result will be given with the maximum available precision(one record per hour in case of AmbeeApi)
  Stream<List<PollenEntity>> observeForecast(DateTime startDate);
  // Result will be given with the maximum available precision(one record per hour in case of AmbeeApi)
  // TODO: Should be packed here?
  Stream<List<PollenEntity>> observeIn(DateTime lowerDate, DateTime upperDate);
}
