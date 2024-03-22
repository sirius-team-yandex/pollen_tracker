import 'package:pollen_tracker/common/enums/species_enums.dart';
import 'package:pollen_tracker/data/mappers/string_to_species_mapper.dart';
import 'package:pollen_tracker/data/models/remote/ambee_dto.dart';
import 'package:pollen_tracker/domain/models/pollen_entity.dart';

class PollenDtoToPollenEntityMappper {
  List<PollenEntity> map(AmbeeDto dto) {
    if (dto.message != 'success' || dto.data == null) {
      return List.empty();
    }

    List<PollenEntity> res = List.empty(growable: true);

    for (var entry in dto.data!) {
      if (entry.time == null || entry.Species?.Tree == null) {
        continue;
      }

      Map<Species, int> levels = {};
      for (var species in entry.Species!.Tree!.entries) {
        //TODO add weeds, grass and others!
        Species? type = stringSpeciesMapper[species.key];

        if (type != null) {
          levels[type] = species.value ?? 0;
        }
      }

      res.add(
        PollenEntity(
          time: DateTime.fromMillisecondsSinceEpoch(entry.time!),
          lat: dto.lat ?? -1,
          lng: dto.lng ?? -1,
          levels: levels,
        ),
      );
    }

    return res;
  }
}
