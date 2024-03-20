import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pollen_tracker/data/models/remote/ambee_dto.dart';

part 'species_dto.freezed.dart';
part 'species_dto.g.dart';

@freezed
class SpeciesDto with _$SpeciesDto {
  const factory SpeciesDto({
    Map<String, int?>? Grass,
    int? Others,
    Map<String, int?>? Tree,
    Map<String, int?>? Weed,
  }) = _SpeciesDto;

  factory SpeciesDto.fromJson(Map<String, Object?> json) =>
      _$SpeciesDtoFromJson(json);
}

