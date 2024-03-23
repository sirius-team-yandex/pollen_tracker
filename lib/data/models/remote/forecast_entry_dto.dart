import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pollen_tracker/data/models/remote/count_dto.dart';
import 'package:pollen_tracker/data/models/remote/risc_dto.dart';
import 'package:pollen_tracker/data/models/remote/species_dto.dart';

part 'forecast_entry_dto.freezed.dart';
part 'forecast_entry_dto.g.dart';

@freezed
class ForecastEntryDto with _$ForecastEntryDto {
  const factory ForecastEntryDto({
    int? time,
    @JsonKey(name: 'Species') SpeciesDto? species,
    @JsonKey(name: 'Risc') RiscDto? risk,
    @JsonKey(name: 'Count') CountDto? count,
    String? updatedAt,
  }) = _ForecastEntryDto;
  factory ForecastEntryDto.fromJson(Map<String, Object?> json) =>
      _$ForecastEntryDtoFromJson(json);
}
