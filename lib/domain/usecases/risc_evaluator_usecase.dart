import 'package:injectable/injectable.dart';
import 'package:pollen_tracker/common/enums/risc_enum.dart';
import 'package:pollen_tracker/common/enums/species_enums.dart';
import 'package:pollen_tracker/domain/models/pollen_entity.dart';

@injectable
class RiscEvaluatorUseCase {
  RiscLevel evaluateType(
    PollenEntity dm,
    List<Species> targets,
    SpeciesType targetType,
  ) {
    return evaluate(dm, targets)[targetType] ?? RiscLevel.low;
  }

  Map<SpeciesType, RiscLevel> evaluate(
    PollenEntity dm,
    List<Species> targets,
  ) {
    Map<SpeciesType, int> counts = {};

    for (var species in targets) {
      counts[species.type] = (dm.levels[species] ?? 0) + (counts[species.type] ?? 0);
    }

    Map<SpeciesType, RiscLevel> res = {};

    res[SpeciesType.tree] = switch (counts[SpeciesType.tree] ?? 0) {
      <= 95 => RiscLevel.low,
      <= 207 => RiscLevel.moderate,
      <= 703 => RiscLevel.high,
      _ => RiscLevel.veryHigh,
    };

    res[SpeciesType.weed] = switch (counts[SpeciesType.weed] ?? 0) {
      <= 29 => RiscLevel.low,
      <= 60 => RiscLevel.moderate,
      <= 341 => RiscLevel.high,
      _ => RiscLevel.veryHigh,
    };

    res[SpeciesType.grass] = switch (counts[SpeciesType.grass] ?? 0) {
      <= 20 => RiscLevel.low,
      <= 77 => RiscLevel.moderate,
      <= 266 => RiscLevel.high,
      _ => RiscLevel.veryHigh,
    };

    // STUB!! DO NOT USE!!
    res[SpeciesType.other] = RiscLevel.low;
    return res;
  }
}
