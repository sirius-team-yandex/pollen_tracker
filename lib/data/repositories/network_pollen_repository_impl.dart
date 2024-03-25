import 'package:dio/dio.dart';
import 'package:pollen_tracker/data/mappers/pollen/pollen_dto_to_pollen_entity_mapper.dart';
import 'package:injectable/injectable.dart';
import 'package:pollen_tracker/data/models/remote/ambee_dto.dart';
import 'package:pollen_tracker/domain/models/pollen_entity.dart';
import 'package:pollen_tracker/domain/repositories/network_pollen_repository.dart';

@Injectable(as: NetworkPollenRepository, env: [Environment.prod])
class NetworkPollenRepositoryImpl implements NetworkPollenRepository {
  NetworkPollenRepositoryImpl({
    required this.dio,
    required this.pollenDtoToPollenEntityMapper,
  });

  static const _apiHeader = bool.hasEnvironment('AMBEE_KEY') ? String.fromEnvironment('AMBEE_KEY') : null;

  final _url = 'latest/pollen/by-lat-lng';
  static final Map<String, dynamic> _headers = {
    'x-api-key': _apiHeader,
    'Content-type': 'application/json',
  };

  final Dio dio;
  final options = Options(headers: _headers);
  final PollenDtoToPollenEntityMappper pollenDtoToPollenEntityMapper;

  @override
  Future<List<PollenEntity>> fetchForecast(double lat, double lng) async {
    if (_apiHeader == null) {
      throw AssertionError('AMBEE_KEY is not set');
    }

    final Map<String, dynamic> queries = {'lat': lat, 'lng': lng};

    final rs = await dio.get(
      _url,
      options: options,
      queryParameters: queries,
    );

    return pollenDtoToPollenEntityMapper.map(AmbeeDto.fromJson(rs.data));
  }
}
