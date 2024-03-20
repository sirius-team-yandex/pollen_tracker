import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:pollen_tracker/data/models/remote/ambee_dto.dart';
import 'package:pollen_tracker/domain/repositories/pollen_repository.dart';

class PollenRepositoryMock implements PollenRepository {
  @override
  Future<AmbeeDto> getPollenDto(double lat, double lng) async {
    final asset = await rootBundle.loadString("assets/SiriusPollen.json");

    final data = await json.decode(asset);
    return AmbeeDto.fromJson(data);
  }
}
