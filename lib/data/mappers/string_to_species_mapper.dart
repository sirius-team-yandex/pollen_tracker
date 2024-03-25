import 'package:injectable/injectable.dart';
import 'package:pollen_tracker/common/enums/species_enums.dart';

@injectable
class StringSpeciesMapper {
  final _stringSpeciesMapper = {
    'Acacia': Species.acacia,
    'Alder': Species.alder,
    'Ash': Species.ash,
    'Birch': Species.birch,
    'Casuarina': Species.casuarina,
    'Cypress': Species.cypress,
    'Cypress/Juniper/Cedar': Species.cypress,
    'Elm': Species.elm,
    'Hazel': Species.hazel,
    'Maple': Species.maple,
    'Mulberry': Species.mulberry,
    'Myrtaceae': Species.myrtaceae,
    'Oak': Species.oak,
    'Olive': Species.olive,
    'Pine': Species.pine,
    'Plane': Species.plane,
    'Poplar / Cottonwood': Species.poplar,
    'Poplar/Cottonwood': Species.poplar,
    'Poplar': Species.poplar,
    'Willow': Species.willow,
  };

  Species map(String specString) {
    return _stringSpeciesMapper[specString] ?? Species.others;
  }
}
