import 'package:pollen_tracker/data/models/local/pollen_dm.dart';
import 'package:pollen_tracker/data/models/local/pollen_record_model.dart';
import 'package:pollen_tracker/data/models/local/species_enums.dart';

class RecordToDmMapper {
  List<PollenDm> map(List<PollenRecordModel> records) {
    List<PollenDm> res = List.empty(growable: true);

    for (var record in records) {
      res.add(PollenDm(
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
          }));
    }

    return res;
  }
}
