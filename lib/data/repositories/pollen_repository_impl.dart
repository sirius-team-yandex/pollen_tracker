import 'package:injectable/injectable.dart';
import 'package:pollen_tracker/data/datasources/pollen_local_storage_datasource.dart';
import 'package:pollen_tracker/data/mappers/pollen/pollen_entity_to_pollen_model_mapper.dart';
import 'package:pollen_tracker/data/mappers/pollen/pollen_model_to_pollen_entity_mapper.dart';
import 'package:pollen_tracker/data/models/local/pollen_model.dart';
import 'package:pollen_tracker/domain/models/pollen_entity.dart';
import 'package:pollen_tracker/domain/repositories/city_repository.dart';
import 'package:pollen_tracker/domain/repositories/network_pollen_repository.dart';
import 'package:pollen_tracker/domain/repositories/pollen_repository.dart';
import 'package:pollen_tracker/domain/repositories/pollen_subject.dart';
import 'package:pollen_tracker/domain/repositories/profile_repository.dart';
import 'package:pollen_tracker/domain/repositories/profile_subject.dart';
import 'package:rxdart/transformers.dart';

@injectable
class PollenRepositoryImpl implements PollenSubject, PollenRepository {
  ProfileSubject profileSubject;
  ProfileRepository profileRepository;
  CitiesRepository citiesRepository;
  NetworkPollenRepository networkPollenRepository;
  PollenLocalStorageDatasource datasource;
  PollenModelToPollenEntityMapper pollenModelToPollenEntityMapper;
  PollenEntityToPollenModelMapper pollenEntityToPollenModelMapper;

  PollenRepositoryImpl({
    required this.profileSubject,
    required this.profileRepository,
    required this.citiesRepository,
    required this.networkPollenRepository,
    required this.datasource,
    required this.pollenModelToPollenEntityMapper,
    required this.pollenEntityToPollenModelMapper,
  });

  @override
  Stream<List<PollenEntity>> observeForecast(DateTime startDate) {
    final stream = profileSubject
        .observeCurrent()
        .flatMap(
          (profile) => profile == null ? Stream.value(null) : citiesRepository.getCityById(profile.cityId).asStream(),
        )
        .switchMap(
          (city) => city == null
              ? _emptyStream()
              : datasource.observeIn(
                  lat: city.lat,
                  lng: city.lng,
                  lowerTime: startDate.toUtc(),
                  upperTime: startDate.toUtc().add(const Duration(days: 365)),
                ),
        )
        .map((models) => pollenModelToPollenEntityMapper.map(models))
        .distinct();
    return stream;
  }

  @override
  Stream<List<PollenEntity>> observeIn(DateTime lowerDate, DateTime upperDate) {
    final stream = profileSubject
        .observeCurrent()
        .flatMap(
          (profile) => profile == null ? Stream.value(null) : citiesRepository.getCityById(profile.cityId).asStream(),
        )
        .switchMap(
          (city) => city == null
              ? _emptyStream()
              : datasource.observeIn(
                  lat: city.lat,
                  lng: city.lng,
                  lowerTime: lowerDate.toUtc(),
                  upperTime: upperDate.toUtc(),
                ),
        )
        .map((models) => pollenModelToPollenEntityMapper.map(models))
        .distinct();
    return stream;
  }

  Stream<List<PollenModel>> _emptyStream() => Stream.value(List.empty());

  @override
  Future<bool> updateForecastData() async {
    final profile = await profileRepository.getCurrent();
    if (profile == null) return false;
    final city = await citiesRepository.getCityById(profile.cityId);
    if (city == null) return false;

    final pollen = await networkPollenRepository.fetchForecast(city.lat, city.lng);

    final inserted = await datasource.insertAll(pollenEntityToPollenModelMapper.map(pollen));

    return inserted;
  }
}
