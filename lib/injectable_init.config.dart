// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'bloc/mood_bloc/mood_bloc.dart' as _i28;
import 'bloc/profile_bloc/profile_bloc.dart' as _i29;
import 'data/datasources/config_local_storage_datasource_isar_impl.dart' as _i4;
import 'data/datasources/mood_local_storage_datasource_isar_impl.dart' as _i10;
import 'data/datasources/profile_local_storage_datasource_isar_impl.dart' as _i22;
import 'data/mappers/cities/list_dynamic_to_city_entity_mapper.dart' as _i9;
import 'data/mappers/config_mappers/config_entity_to_config_model_mapper.dart' as _i3;
import 'data/mappers/config_mappers/config_model_to_config_entity_mapper.dart' as _i5;
import 'data/mappers/mood_record/mood_record_entity_to_model_isar_mapper.dart' as _i11;
import 'data/mappers/mood_record/mood_record_model_isar_to_entity_mapper.dart' as _i12;
import 'data/mappers/pollen/pollen_dto_to_pollen_entity_mapper.dart' as _i15;
import 'data/mappers/pollen/pollen_entity_to_pollen_model_mapper.dart' as _i16;
import 'data/mappers/pollen/pollen_model_to_pollen_entity_mapper.dart' as _i17;
import 'data/mappers/profile/profile_entity_to_profile_model_mapper.dart' as _i21;
import 'data/mappers/profile/profile_model_to_profile_entity_mapper.dart' as _i23;
import 'data/repositories/city_repository_impl.dart' as _i27;
import 'data/repositories/config_repository_impl.dart' as _i7;
import 'data/repositories/mood_record_repository_impl.dart' as _i14;
import 'data/repositories/pollen_repository_impl.dart' as _i19;
import 'data/repositories/pollen_repository_mock_impl.dart' as _i20;
import 'data/repositories/profile_repository_impl.dart' as _i25;
import 'domain/repositories/city_repository.dart' as _i26;
import 'domain/repositories/config_repository.dart' as _i6;
import 'domain/repositories/mood_record_repository.dart' as _i13;
import 'domain/repositories/pollen_repository.dart' as _i18;
import 'domain/repositories/profile_repository.dart' as _i24;
import 'injectable_init.dart' as _i30;

const String _test = 'test';
const String _prod = 'prod';
const String _dev = 'dev';

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final module = _$Module();
    gh.factory<_i3.ConfigEntityToModelIsarMapper>(() => _i3.ConfigEntityToModelIsarMapper());
    gh.factory<_i4.ConfigLocalStorageDatasourceIsar>(() => _i4.ConfigLocalStorageDatasourceIsar());
    gh.factory<_i5.ConfigModelIsarToEntityMapper>(() => _i5.ConfigModelIsarToEntityMapper());
    gh.factory<_i6.ConfigRepository>(() => _i7.ConfigRepositoryIsarImpl(
          gh<_i4.ConfigLocalStorageDatasourceIsar>(),
          gh<_i5.ConfigModelIsarToEntityMapper>(),
          gh<_i3.ConfigEntityToModelIsarMapper>(),
        ));
    gh.singleton<_i8.Dio>(() => module.ambeeDio);
    gh.factory<_i9.ListDynamicToCityEntityMapper>(() => _i9.ListDynamicToCityEntityMapper());
    gh.singleton<_i10.MoodLocalStorageDatasourceIsar>(() => _i10.MoodLocalStorageDatasourceIsar());
    gh.factory<_i11.MoodRecordEntityToModelIsarMapper>(() => _i11.MoodRecordEntityToModelIsarMapper());
    gh.factory<_i12.MoodRecordModelIsarToEntityMapper>(() => _i12.MoodRecordModelIsarToEntityMapper());
    gh.factory<_i13.MoodRecordsRepository>(() => _i14.MoodRecordRepositoryIsarImpl(
          moodLocalStorageDatasource: gh<_i10.MoodLocalStorageDatasourceIsar>(),
          moodRecordModelIsarToEntityMapper: gh<_i12.MoodRecordModelIsarToEntityMapper>(),
          moodRecordEntityToModelIsarMapper: gh<_i11.MoodRecordEntityToModelIsarMapper>(),
        ));
    gh.factory<_i15.PollenDtoToPollenEntityMappper>(() => _i15.PollenDtoToPollenEntityMappper());
    gh.factory<_i16.PollenEntityToPollenModelMapper>(() => _i16.PollenEntityToPollenModelMapper());
    gh.factory<_i17.PollenModelToPollenEntityMapper>(() => _i17.PollenModelToPollenEntityMapper());
    gh.factory<_i18.PollenRepository>(
      () => _i19.PollenRepositoryImpl(
        dio: gh<_i8.Dio>(),
        pollenDtoToPollenEntityMapper: gh<_i15.PollenDtoToPollenEntityMappper>(),
      ),
      registerFor: {
        _test,
        _prod,
      },
    );
    gh.factory<_i18.PollenRepository>(
      () => _i20.PollenRepositoryMock(mapper: gh<_i15.PollenDtoToPollenEntityMappper>()),
      registerFor: {_dev},
    );
    gh.factory<_i21.ProfileEntityToModelIsarMapper>(() => _i21.ProfileEntityToModelIsarMapper());
    gh.factory<_i22.ProfileLocalStorageDatasourceIsar>(() => _i22.ProfileLocalStorageDatasourceIsar());
    gh.factory<_i23.ProfileModelIsarToEntityMapper>(() => _i23.ProfileModelIsarToEntityMapper());
    gh.factory<_i24.ProfileRepository>(() => _i25.ProfileRepositoryIsarImpl(
          gh<_i22.ProfileLocalStorageDatasourceIsar>(),
          gh<_i23.ProfileModelIsarToEntityMapper>(),
          gh<_i21.ProfileEntityToModelIsarMapper>(),
        ));
    gh.factory<_i26.CitiesRepository>(
        () => _i27.CityRepositoryImpl(listDynamicToCityEntityMapper: gh<_i9.ListDynamicToCityEntityMapper>()));
    gh.factory<_i28.MoodRecordsBloc>(
        () => _i28.MoodRecordsBloc(moodRecordsRepository: gh<_i13.MoodRecordsRepository>()));
    gh.factory<_i29.ProfileBloc>(() => _i29.ProfileBloc(
          profileRepository: gh<_i24.ProfileRepository>(),
          configRepository: gh<_i6.ConfigRepository>(),
        ));
    return this;
  }
}

class _$Module extends _i30.Module {}
