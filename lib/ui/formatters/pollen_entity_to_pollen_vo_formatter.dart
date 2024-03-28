import 'package:injectable/injectable.dart';
import 'package:pollen_tracker/common/enums/species_enums.dart';
import 'package:pollen_tracker/domain/models/pollen_entity.dart';
import 'package:pollen_tracker/ui/formatters/risc_formatter.dart';
import 'package:pollen_tracker/ui/models/forecast_vo.dart';

@injectable
class PollenEntityToForecastVoFormatter {
  PollenEntityToForecastVoFormatter({required this.riscFormatter});

  final RiscFormatter riscFormatter;

  List<ForecastVo> mapList(List<PollenEntity> entities, List<Species> targets) {
    return entities.map((e) {
      return ForecastVo(
        time: e.time,
        level: riscFormatter.evaluateType(e.levels, targets, SpeciesType.tree),
      );
    }).toList();
  }
}
