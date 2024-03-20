import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pollen_tracker/data/models/remote/ambee_dto.dart';
import 'package:pollen_tracker/domain/pollen_repository/pollen_repository.dart';

class PollenRepositoryImpl implements PollenRepository {
  @override
  Future<AmbeeDto> getPollenDto(double lat, double lng) async {
    const ambeeApiKey = String.fromEnvironment('AMBEE_KEY');
    if (ambeeApiKey.isEmpty) {
      throw AssertionError('AMBEE_KEY is not set');
    }

    final url = "latest/pollen/by-lat-lng";
    final Map<String, dynamic> headers = {
      "x-api-key":
          ambeeApiKey,
      "Content-type": "application/json"
    };
    final Map<String, dynamic> queries = {"lat": lat, "lng": lng};
    final dio = GetIt.I<Dio>();
    final options = Options(headers: headers);

    final rs = await dio.get(
      url,
      options: options,
      queryParameters: queries,
    );

    return AmbeeDto.fromJson(rs.data);
  }
}
