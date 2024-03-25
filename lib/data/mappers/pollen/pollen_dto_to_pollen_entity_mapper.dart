import 'package:injectable/injectable.dart';
import 'package:pollen_tracker/common/enums/species_enums.dart';
import 'package:pollen_tracker/common/logger.dart';
import 'package:pollen_tracker/data/mappers/string_to_species_mapper.dart';
import 'package:pollen_tracker/data/models/remote/ambee_dto.dart';
import 'package:pollen_tracker/domain/models/pollen_entity.dart';

@injectable
class PollenDtoToPollenEntityMappper {
  PollenDtoToPollenEntityMappper({required this.stringSpeciesMapper});

  final StringSpeciesMapper stringSpeciesMapper;

  List<PollenEntity> map(AmbeeDto dto) {
    final message = dto.message;
    final data = dto.data;
    final lat = dto.lat;
    final lng = dto.lng;

    if (message != 'success' || data == null || lat == null || lng == null) {
      logger.d('Incorrect data: $data');

      return List.empty();
    }

    List<PollenEntity> res = List.empty(growable: true);

    for (var entry in data) {
      final time = entry.time;
      final species = entry.species;
      final tree = species?.tree;

      if (time == null || tree == null) {
        continue;
      }

      Map<Species, int> levels = {};
      for (var species in tree.entries) {
        //TODO add weeds, grass and others! FEAT-72
        Species? type = stringSpeciesMapper.map(species.key);

        levels[type] = species.value ?? 0;
      }

      res.add(
        PollenEntity(
          time: DateTime.fromMillisecondsSinceEpoch(time),
          lat: lat,
          lng: lng,
          levels: levels,
        ),
      );
    }

    return res;
  }
}
