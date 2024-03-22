import 'package:freezed_annotation/freezed_annotation.dart';
part 'species_dto.freezed.dart';
part 'species_dto.g.dart';

@freezed
class SpeciesDto with _$SpeciesDto {
  const factory SpeciesDto({
    @JsonKey(name: 'Grass') Map<String, int?>? grass,
    @JsonKey(name: 'Others') int? others,
    @JsonKey(name: 'Tree')  Map<String, int?>? tree,
    @JsonKey(name: 'Weed') Map<String, int?>? weed,
  }) = _SpeciesDto;

  factory SpeciesDto.fromJson(Map<String, Object?> json) =>
      _$SpeciesDtoFromJson(json);
}

