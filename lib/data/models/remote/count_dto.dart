import 'package:freezed_annotation/freezed_annotation.dart';

part 'count_dto.freezed.dart';
part 'count_dto.g.dart';

@freezed
class CountDto with _$CountDto {
  const factory CountDto({
    int? grass_pollen,
    int? tree_pollen,
    int? weed_pollen,
  }) = _CountDto;
  factory CountDto.fromJson(Map<String, Object?> json) =>
      _$CountDtoFromJson(json);
}
