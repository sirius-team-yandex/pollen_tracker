import 'package:freezed_annotation/freezed_annotation.dart';

part 'count_dto.freezed.dart';
part 'count_dto.g.dart';

@freezed
class CountDto with _$CountDto {
  const factory CountDto({
    @JsonKey(name: 'grass_pollen') int? grassPollen,
    @JsonKey(name: 'tree_pollen') int? treePollen,
    @JsonKey(name: 'weed_pollen') int? weedPollen,
  }) = _CountDto;
  factory CountDto.fromJson(Map<String, Object?> json) => _$CountDtoFromJson(json);
}
