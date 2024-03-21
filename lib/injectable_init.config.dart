// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'data/datasources/mood_local_storage_datasource_isar_impl.dart' as _i5;
import 'data/mappers/mood_record/mood_record_entity_to_model_isar_mapper.dart'
    as _i6;
import 'data/mappers/mood_record/mood_record_model_isar_to_entity_mapper.dart'
    as _i7;
import 'data/mappers/pollen_dto_to_pollen_entity_mapper.dart' as _i9;
import 'data/mappers/pollen_entity_to_pollen_model_mapper.dart' as _i10;
import 'data/mappers/pollen_model_to_pollen_entity_mapper.dart' as _i11;
import 'data/repositories/mood_record_repository_impl.dart' as _i8;
import 'data/repositories/pollen_repository_impl.dart' as _i13;
import 'data/repositories/pollen_repository_mock_impl.dart' as _i14;
import 'domain/repositories/pollen_repository.dart' as _i12;
import 'injectable_init.dart' as _i15;
import 'ui/theme/theme.dart' as _i3;

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
    gh.singleton<_i3.AppThemeData>(() => module.lightTheme);
    gh.singleton<_i4.Dio>(() => module.ambeeDio);
    gh.singleton<_i5.MoodLocalStorageDatasourceIsar>(
        () => _i5.MoodLocalStorageDatasourceIsar());
    gh.factory<_i6.MoodRecordEntityToModelIsarMapper>(
        () => _i6.MoodRecordEntityToModelIsarMapper());
    gh.factory<_i7.MoodRecordModelIsarToEntityMapper>(
        () => _i7.MoodRecordModelIsarToEntityMapper());
    gh.factory<_i8.MoodRecordRepositoryIsarImpl>(() =>
        _i8.MoodRecordRepositoryIsarImpl(
          moodLocalStorageDatasource: gh<_i5.MoodLocalStorageDatasourceIsar>(),
          moodRecordModelIsarToEntityMapper:
              gh<_i7.MoodRecordModelIsarToEntityMapper>(),
          moodRecordEntityToModelIsarMapper:
              gh<_i6.MoodRecordEntityToModelIsarMapper>(),
        ));
    gh.factory<_i9.PollenDtoToPollenEntityMappper>(
        () => _i9.PollenDtoToPollenEntityMappper());
    gh.factory<_i10.PollenEntityToPollenModelMapper>(
        () => _i10.PollenEntityToPollenModelMapper());
    gh.factory<_i11.PollenModelToPollenEntityMapper>(
        () => _i11.PollenModelToPollenEntityMapper());
    gh.factory<_i12.PollenRepository>(
      () => _i13.PollenRepositoryImpl(
        dio: gh<_i4.Dio>(),
        pollenDtoToPollenEntityMapper: gh<_i9.PollenDtoToPollenEntityMappper>(),
      ),
      registerFor: {_prod},
    );
    gh.factory<_i12.PollenRepository>(
      () => _i14.PollenRepositoryMock(
          mapper: gh<_i9.PollenDtoToPollenEntityMappper>()),
      registerFor: {_dev},
    );
    return this;
  }
}

class _$Module extends _i15.Module {}
