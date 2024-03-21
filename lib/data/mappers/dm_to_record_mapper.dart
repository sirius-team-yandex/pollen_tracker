import 'package:pollen_tracker/data/models/local/pollen_dm.dart';
import 'package:pollen_tracker/data/models/local/pollen_record_model.dart';
import 'package:pollen_tracker/data/models/local/species_enums.dart';

class DmToRecordMapper {
  List<PollenRecordModel> map(List<PollenDm> dms) {
    List<PollenRecordModel> res = List.empty(growable: true);
    for (var dm in dms) {
      res.add(PollenRecordModel(
        time: dm.time,
        lat: dm.lat,
        lng: dm.lng,
        // Trees
        oak: dm.levels[Species.oak] ?? 0,
        cypress: dm.levels[Species.cypress] ?? 0,
        mulberry: dm.levels[Species.mulberry] ?? 0,
        pine: dm.levels[Species.pine] ?? 0,
        elm: dm.levels[Species.elm] ?? 0,
        ash: dm.levels[Species.ash] ?? 0,
        birch: dm.levels[Species.birch] ?? 0,
        maple: dm.levels[Species.maple] ?? 0,
        poplar: dm.levels[Species.poplar] ?? 0,
        hazel: dm.levels[Species.hazel] ?? 0,
        alder: dm.levels[Species.alder] ?? 0,
        plane: dm.levels[Species.plane] ?? 0,
        casuarina: dm.levels[Species.casuarina] ?? 0,
        acacia: dm.levels[Species.acacia] ?? 0,
        myrtaceae: dm.levels[Species.myrtaceae] ?? 0,
        willow: dm.levels[Species.willow] ?? 0,
        olive: dm.levels[Species.olive] ?? 0,
        // Weeds
        mugwort: dm.levels[Species.mugwort] ?? 0,
        chenopod: dm.levels[Species.chenopod] ?? 0,
        ragweed: dm.levels[Species.ragweed] ?? 0,
        nettle: dm.levels[Species.nettle] ?? 0,
        plantago: dm.levels[Species.plantago] ?? 0,
        rumex: dm.levels[Species.rumex] ?? 0,
        // Grass
        grass: dm.levels[Species.grass] ?? 0,
        // Other
        others: dm.levels[Species.others] ?? 0,
      ));
    }
    return res;
  }
}
