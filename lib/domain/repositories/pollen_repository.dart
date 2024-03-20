import 'package:pollen_tracker/data/models/remote/ambee_dto.dart';

abstract class PollenRepository {
    Future<AmbeeDto> getPollenDto(double lat, double lng);
}
