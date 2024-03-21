import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pollen_tracker/common/enums/species_enums.dart';

part 'pollen_entity.freezed.dart';

@freezed
class PollenEntity with _$PollenEntity {
  const factory PollenEntity({
    required DateTime time,
    required double lat,
    required double lng,
    required Map<Species, int> levels,
  }) = _PollenEntity;
}
