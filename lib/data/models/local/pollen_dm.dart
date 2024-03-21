import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pollen_tracker/data/models/local/species_enums.dart';

part 'pollen_dm.freezed.dart';

@freezed
class PollenDm with _$PollenDm {
  const factory PollenDm({
    required DateTime time,
    required double lat,
    required double lng,
    required Map<Species, int> levels,
  }) = _PollenDm;
}
