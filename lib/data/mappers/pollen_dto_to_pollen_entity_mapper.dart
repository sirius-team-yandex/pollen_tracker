import 'package:pollen_tracker/data/models/local/pollen_entity.dart';
import 'package:pollen_tracker/data/models/local/species_enums.dart';
import 'package:pollen_tracker/data/models/remote/ambee_dto.dart';

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
        Species? type = switch (species.key) {
          'Acacia' => Species.acacia,
          'Alder' => Species.alder,
          'Ash' => Species.ash,
          'Birch' => Species.birch,
          'Casuarina' => Species.casuarina,
          'Cypress' || 'Cypress/Juniper/Cedar' => Species.cypress,
          'Elm' => Species.elm,
          'Hazel' => Species.hazel,
          'Maple' => Species.maple,
          'Mulberry' => Species.mulberry,
          'Myrtaceae' => Species.myrtaceae,
          'Oak' => Species.oak,
          'Olive' => Species.olive,
          'Pine' => Species.pine,
          'Plane' => Species.plane,
          'Poplar / Cottonwood' || 'Poplar/Cottonwood' => Species.poplar,
          'Willow' => Species.willow,
          _ => null,
        };

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
