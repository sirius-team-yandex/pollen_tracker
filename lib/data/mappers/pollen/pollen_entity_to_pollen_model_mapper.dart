import 'package:injectable/injectable.dart';
import 'package:pollen_tracker/common/enums/species_enums.dart';
import 'package:pollen_tracker/data/models/local/pollen_model.dart';
import 'package:pollen_tracker/domain/models/pollen_entity.dart';

@injectable
class PollenEntityToPollenModelMapper {
  List<PollenModel> map(List<PollenEntity> entities) {
    List<PollenModel> res = List.empty(growable: true);
    for (var entity in entities) {
      res.add(
        PollenModel(
          time: entity.time.toUtc().copyWith(microsecond: 0, millisecond: 0),
          lat: entity.lat,
          lng: entity.lng,
          // Trees
          oak: entity.levels[Species.oak] ?? 0,
          cypress: entity.levels[Species.cypress] ?? 0,
          mulberry: entity.levels[Species.mulberry] ?? 0,
          pine: entity.levels[Species.pine] ?? 0,
          elm: entity.levels[Species.elm] ?? 0,
          ash: entity.levels[Species.ash] ?? 0,
          birch: entity.levels[Species.birch] ?? 0,
          maple: entity.levels[Species.maple] ?? 0,
          poplar: entity.levels[Species.poplar] ?? 0,
          hazel: entity.levels[Species.hazel] ?? 0,
          alder: entity.levels[Species.alder] ?? 0,
          plane: entity.levels[Species.plane] ?? 0,
          casuarina: entity.levels[Species.casuarina] ?? 0,
          acacia: entity.levels[Species.acacia] ?? 0,
          myrtaceae: entity.levels[Species.myrtaceae] ?? 0,
          willow: entity.levels[Species.willow] ?? 0,
          olive: entity.levels[Species.olive] ?? 0,
          // Weeds
          mugwort: entity.levels[Species.mugwort] ?? 0,
          chenopod: entity.levels[Species.chenopod] ?? 0,
          ragweed: entity.levels[Species.ragweed] ?? 0,
          nettle: entity.levels[Species.nettle] ?? 0,
          plantago: entity.levels[Species.plantago] ?? 0,
          rumex: entity.levels[Species.rumex] ?? 0,
          // Grass
          grass: entity.levels[Species.grass] ?? 0,
          // Other
          others: entity.levels[Species.others] ?? 0,
        ),
      );
    }
    return res;
  }
}
