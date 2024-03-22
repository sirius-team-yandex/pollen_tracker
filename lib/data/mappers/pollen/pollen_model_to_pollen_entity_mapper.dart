import 'package:injectable/injectable.dart';
import 'package:pollen_tracker/common/enums/species_enums.dart';
import 'package:pollen_tracker/data/models/local/pollen_model.dart';
import 'package:pollen_tracker/domain/models/pollen_entity.dart';

@injectable
class PollenModelToPollenEntityMapper {
  List<PollenEntity> map(List<PollenModel> records) {
    List<PollenEntity> res = List.empty(growable: true);

    for (var record in records) {
      res.add(
        PollenEntity(
          time: record.time,
          lat: record.lat,
          lng: record.lng,
          levels: {
            // Trees
            Species.oak: record.oak,
            Species.cypress: record.cypress,
            Species.mulberry: record.mulberry,
            Species.pine: record.pine,
            Species.elm: record.elm,
            Species.ash: record.ash,
            Species.birch: record.birch,
            Species.maple: record.maple,
            Species.poplar: record.poplar,
            Species.hazel: record.hazel,
            Species.alder: record.alder,
            Species.plane: record.plane,
            Species.casuarina: record.casuarina,
            Species.acacia: record.acacia,
            Species.myrtaceae: record.myrtaceae,
            Species.willow: record.willow,
            Species.olive: record.olive,
            // Weeds
            Species.mugwort: record.mugwort,
            Species.chenopod: record.chenopod,
            Species.ragweed: record.ragweed,
            Species.nettle: record.nettle,
            Species.plantago: record.plantago,
            Species.rumex: record.rumex,
            // Grass
            Species.grass: record.grass,
            // Others
            Species.others: record.others,
          },
        ),
      );
    }

    return res;
  }
}
