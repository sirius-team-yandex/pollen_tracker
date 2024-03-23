import 'package:freezed_annotation/freezed_annotation.dart';
part 'risc_dto.freezed.dart';
part 'risc_dto.g.dart';

@freezed
class RiscDto with _$RiscDto {
  const factory RiscDto({
    @JsonKey(name: 'grass_pollen') String? grassPollen,
    @JsonKey(name: 'tree_pollen') String? treePollen,
    @JsonKey(name: 'weed_pollen') String? weedPollen,
  }) = _RiscDto;
  factory RiscDto.fromJson(Map<String, Object?> json) => _$RiscDtoFromJson(json);
}
