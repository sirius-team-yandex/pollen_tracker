import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:pollen_tracker/data/models/remote/ambee_dto.dart';
import 'package:pollen_tracker/domain/pollen_repository/pollen_repository.dart';

class PollenRepositoryMockImpl implements PollenRepository {
  @override
  Future<AmbeeDto> getPollenDto(double lat, double lng) async {
    String asset = await rootBundle.loadString('assets/SiriusPollen.json');
    Map<String, Object?> decoded = json.decode(asset);
    return AmbeeDto.fromJson(decoded);
  }
}
