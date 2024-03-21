import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pollen_tracker/data/mappers/pollen_dto_to_pollen_entity_mapper.dart';
import 'package:pollen_tracker/data/models/remote/ambee_dto.dart';
import 'package:pollen_tracker/domain/models/pollen_entity.dart';
import 'package:pollen_tracker/domain/repositories/pollen_repository.dart';

class PollenRepositoryImpl implements PollenRepository {
  static const _apiHeader = bool.hasEnvironment('AMBEE_KEY')
      ? String.fromEnvironment('AMBEE_KEY')
      : null;

  final _url = 'latest/pollen/by-lat-lng';
  static final Map<String, dynamic> _headers = {
    'x-api-key': _apiHeader,
    'Content-type': 'application/json',
  };

  final dio = GetIt.I<Dio>();
  final options = Options(headers: _headers);

  @override
  Future<List<PollenEntity>> getPollenEntities(double lat, double lng) async {
    if (_apiHeader == null) {
      throw AssertionError('AMBEE_KEY is not set');
    }

    final Map<String, dynamic> queries = {'lat': lat, 'lng': lng};

    final rs = await dio.get(
      _url,
      options: options,
      queryParameters: queries,
    );

    PollenDtoToPollenEntityMappper mapper =
        GetIt.I<PollenDtoToPollenEntityMappper>();

    return mapper.map(AmbeeDto.fromJson(rs.data));
  }
}
