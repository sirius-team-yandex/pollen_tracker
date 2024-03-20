import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pollen_tracker/data/models/remote/ambee_dto.dart';

part 'risc_dto.freezed.dart';
part 'risc_dto.g.dart';

@freezed
class RiscDto with _$RiscDto {
  const factory RiscDto({
    String? grass_pollen,
    String? tree_pollen,
    String? weed_pollen,
  }) = _RiscDto;
  factory RiscDto.fromJson(Map<String, Object?> json) =>
      _$RiscDtoFromJson(json);
}

