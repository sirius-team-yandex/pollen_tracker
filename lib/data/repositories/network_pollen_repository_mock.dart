import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:pollen_tracker/data/mappers/pollen/pollen_dto_to_pollen_entity_mapper.dart';
import 'package:injectable/injectable.dart';
import 'package:pollen_tracker/data/models/remote/ambee_dto.dart';
import 'package:pollen_tracker/domain/models/pollen_entity.dart';
import 'package:pollen_tracker/domain/repositories/network_pollen_repository.dart';

@Injectable(
    as: NetworkPollenRepository, env: [Environment.dev, Environment.test])
class NetworkPollenRepositoryMock implements NetworkPollenRepository {
  NetworkPollenRepositoryMock({required this.mapper});

  final PollenDtoToPollenEntityMappper mapper;

  @override
  Future<List<PollenEntity>> fetchForecast(double lat, double lng) async {
    final asset = await rootBundle.loadString('assets/SiriusPollen.json');

    final data = await json.decode(asset);

    return mapper.map(AmbeeDto.fromJson(data));
  }
}
