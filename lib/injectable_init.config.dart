// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:isar/isar.dart' as _i6;

import 'bloc/profile_bloc/profile_bloc.dart' as _i36;
import 'data/datasources/config_local_storage_datasource_isar_impl.dart'
    as _i20;
import 'data/datasources/mood_local_storage_datasource_isar_impl.dart' as _i8;
import 'data/datasources/pollen_local_storage_datasource.dart' as _i12;
import 'data/datasources/profile_local_storage_datasource_isar_impl.dart'
    as _i15;
import 'data/mappers/cities/list_dynamic_to_city_entity_mapper.dart' as _i7;
import 'data/mappers/config_mappers/config_entity_to_config_model_mapper.dart'
    as _i3;
import 'data/mappers/config_mappers/config_model_to_config_entity_mapper.dart'
    as _i4;
import 'data/mappers/mood_record/mood_record_entity_to_model_isar_mapper.dart'
    as _i9;
import 'data/mappers/mood_record/mood_record_model_isar_to_entity_mapper.dart'
    as _i10;
import 'data/mappers/pollen/pollen_dto_to_pollen_entity_mapper.dart' as _i23;
import 'data/mappers/pollen/pollen_entity_to_pollen_model_mapper.dart' as _i11;
import 'data/mappers/pollen/pollen_model_to_pollen_entity_mapper.dart' as _i13;
import 'data/mappers/profile/profile_entity_to_profile_model_mapper.dart'
    as _i14;
import 'data/mappers/profile/profile_model_to_profile_entity_mapper.dart'
    as _i24;
import 'data/mappers/string_to_species_mapper.dart' as _i17;
import 'data/repositories/city_repository_impl.dart' as _i19;
import 'data/repositories/config_repository_impl.dart' as _i21;
import 'data/repositories/mood_record_repository_impl.dart' as _i26;
import 'data/repositories/network_pollen_repository_impl.dart' as _i29;
import 'data/repositories/network_pollen_repository_mock.dart' as _i30;
import 'data/repositories/pollen_repository_impl.dart' as _i35;
import 'data/repositories/profile_repository_impl.dart' as _i31;
import 'domain/repositories/city_repository.dart' as _i18;
import 'domain/repositories/config_repository.dart' as _i25;
import 'domain/repositories/config_subject.dart' as _i22;
import 'domain/repositories/mood_record_repository.dart' as _i33;
import 'domain/repositories/mood_record_subject.dart' as _i27;
import 'domain/repositories/network_pollen_repository.dart' as _i28;
import 'domain/repositories/profile_repository.dart' as _i34;
import 'domain/repositories/profile_subject.dart' as _i32;
import 'domain/usecases/risc_evaluator_usecase.dart' as _i16;
import 'injectable_init.dart' as _i37;

const String _test = 'test';
const String _prod = 'prod';
const String _dev = 'dev';

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final networkModule = _$NetworkModule();
    final isarModule = _$IsarModule();
    final configModule = _$ConfigModule();
    final moodModule = _$MoodModule();
    final profileModule = _$ProfileModule();
    gh.factory<_i3.ConfigEntityToModelIsarMapper>(
        () => _i3.ConfigEntityToModelIsarMapper());
    gh.factory<_i4.ConfigModelIsarToEntityMapper>(
        () => _i4.ConfigModelIsarToEntityMapper());
    gh.singleton<_i5.Dio>(() => networkModule.ambeeDio);
    await gh.factoryAsync<_i6.Isar>(
      () => isarModule.isar,
      preResolve: true,
    );
    gh.factory<_i7.ListDynamicToCityEntityMapper>(
        () => _i7.ListDynamicToCityEntityMapper());
    gh.singleton<_i8.MoodLocalStorageDatasourceIsar>(
        () => _i8.MoodLocalStorageDatasourceIsar(isar: gh<_i6.Isar>()));
    gh.factory<_i9.MoodRecordEntityToModelIsarMapper>(
        () => _i9.MoodRecordEntityToModelIsarMapper());
    gh.factory<_i10.MoodRecordModelIsarToEntityMapper>(
        () => _i10.MoodRecordModelIsarToEntityMapper());
    gh.factory<_i11.PollenEntityToPollenModelMapper>(
        () => _i11.PollenEntityToPollenModelMapper());
    gh.singleton<_i12.PollenLocalStorageDatasource>(
        () => _i12.PollenLocalStorageDatasource(isar: gh<_i6.Isar>()));
    gh.factory<_i13.PollenModelToPollenEntityMapper>(
        () => _i13.PollenModelToPollenEntityMapper());
    gh.factory<_i14.ProfileEntityToModelIsarMapper>(
        () => _i14.ProfileEntityToModelIsarMapper());
    gh.singleton<_i15.ProfileLocalStorageDatasourceIsar>(
        () => _i15.ProfileLocalStorageDatasourceIsar(isar: gh<_i6.Isar>()));
    gh.factory<_i16.RiscEvaluatorUseCase>(() => _i16.RiscEvaluatorUseCase());
    gh.factory<_i17.StringSpeciesMapper>(() => _i17.StringSpeciesMapper());
    gh.factory<_i18.CitiesRepository>(() => _i19.CityRepositoryImpl(
        listDynamicToCityEntityMapper:
            gh<_i7.ListDynamicToCityEntityMapper>()));
    gh.singleton<_i20.ConfigLocalStorageDatasourceIsar>(
        () => _i20.ConfigLocalStorageDatasourceIsar(isar: gh<_i6.Isar>()));
    gh.factory<_i21.ConfigRepositoryIsarImpl>(
        () => _i21.ConfigRepositoryIsarImpl(
              gh<_i20.ConfigLocalStorageDatasourceIsar>(),
              gh<_i4.ConfigModelIsarToEntityMapper>(),
              gh<_i3.ConfigEntityToModelIsarMapper>(),
            ));
    gh.factory<_i22.ConfigSubject>(
        () => configModule.configSubject(gh<_i21.ConfigRepositoryIsarImpl>()));
    gh.factory<_i23.PollenDtoToPollenEntityMappper>(() =>
        _i23.PollenDtoToPollenEntityMappper(
            stringSpeciesMapper: gh<_i17.StringSpeciesMapper>()));
    gh.factory<_i24.ProfileModelIsarToEntityMapper>(() =>
        _i24.ProfileModelIsarToEntityMapper(
            stringSpeciesMapper: gh<_i17.StringSpeciesMapper>()));
    gh.factory<_i25.ConfigRepository>(() =>
        configModule.configRepository(gh<_i21.ConfigRepositoryIsarImpl>()));
    gh.factory<_i26.MoodRecordRepositoryIsarImpl>(
        () => _i26.MoodRecordRepositoryIsarImpl(
              datasource: gh<_i8.MoodLocalStorageDatasourceIsar>(),
              configSubject: gh<_i22.ConfigSubject>(),
              configRepository: gh<_i25.ConfigRepository>(),
              moodRecordModelIsarToEntityMapper:
                  gh<_i10.MoodRecordModelIsarToEntityMapper>(),
              moodRecordEntityToModelIsarMapper:
                  gh<_i9.MoodRecordEntityToModelIsarMapper>(),
            ));
    gh.factory<_i27.MoodRecordSubject>(
        () => moodModule.moodSubject(gh<_i26.MoodRecordRepositoryIsarImpl>()));
    gh.factory<_i28.NetworkPollenRepository>(
      () => _i29.NetworkPollenRepositoryImpl(
        dio: gh<_i5.Dio>(),
        pollenDtoToPollenEntityMapper:
            gh<_i23.PollenDtoToPollenEntityMappper>(),
      ),
      registerFor: {
        _test,
        _prod,
      },
    );
    gh.factory<_i28.NetworkPollenRepository>(
      () => _i30.NetworkPollenRepositoryMock(
          mapper: gh<_i23.PollenDtoToPollenEntityMappper>()),
      registerFor: {_dev},
    );
    gh.factory<_i31.ProfileRepositoryIsarImpl>(
        () => _i31.ProfileRepositoryIsarImpl(
              datasource: gh<_i15.ProfileLocalStorageDatasourceIsar>(),
              configRepository: gh<_i25.ConfigRepository>(),
              configSubject: gh<_i22.ConfigSubject>(),
              profileModelIsarToEntityMapper:
                  gh<_i24.ProfileModelIsarToEntityMapper>(),
              profileEntityToModelIsarMapper:
                  gh<_i14.ProfileEntityToModelIsarMapper>(),
            ));
    gh.factory<_i32.ProfileSubject>(() =>
        profileModule.profileSubject(gh<_i31.ProfileRepositoryIsarImpl>()));
    gh.factory<_i33.MoodRecordRepository>(() =>
        moodModule.moodRepository(gh<_i26.MoodRecordRepositoryIsarImpl>()));
    gh.factory<_i34.ProfileRepository>(() =>
        profileModule.profileRepository(gh<_i31.ProfileRepositoryIsarImpl>()));
    gh.factory<_i35.PollenRepositoryImpl>(() => _i35.PollenRepositoryImpl(
          profileSubject: gh<_i32.ProfileSubject>(),
          profileRepository: gh<_i34.ProfileRepository>(),
          citiesRepository: gh<_i18.CitiesRepository>(),
          networkPollenRepository: gh<_i28.NetworkPollenRepository>(),
          datasource: gh<_i12.PollenLocalStorageDatasource>(),
          pollenModelToPollenEntityMapper:
              gh<_i13.PollenModelToPollenEntityMapper>(),
          pollenEntityToPollenModelMapper:
              gh<_i11.PollenEntityToPollenModelMapper>(),
        ));
    gh.factory<_i36.ProfileBloc>(() => _i36.ProfileBloc(
          profileRepository: gh<_i34.ProfileRepository>(),
          configRepository: gh<_i25.ConfigRepository>(),
        ));
    return this;
  }
}

class _$NetworkModule extends _i37.NetworkModule {}

class _$IsarModule extends _i37.IsarModule {}

class _$ConfigModule extends _i37.ConfigModule {}

class _$MoodModule extends _i37.MoodModule {}

class _$ProfileModule extends _i37.ProfileModule {}
