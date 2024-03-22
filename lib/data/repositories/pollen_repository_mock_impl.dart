import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:pollen_tracker/data/mappers/pollen/pollen_dto_to_pollen_entity_mapper.dart';
import 'package:pollen_tracker/data/models/remote/ambee_dto.dart';
import 'package:pollen_tracker/domain/models/pollen_entity.dart';
import 'package:pollen_tracker/domain/repositories/pollen_repository.dart';

class PollenRepositoryMock implements PollenRepository {
  @override
  Future<List<PollenEntity>> getPollenEntities(double lat, double lng) async {
    final asset = await rootBundle.loadString('assets/SiriusPollen.json');

    final data = await json.decode(asset);

    PollenDtoToPollenEntityMappper mapper =
        GetIt.I<PollenDtoToPollenEntityMappper>();

    return mapper.map(AmbeeDto.fromJson(data));
  }
}
