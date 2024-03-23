import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:pollen_tracker/common/config.dart';
import 'package:pollen_tracker/data/datasources/mood_local_storage_datasource_isar_impl.dart';
import 'package:pollen_tracker/data/mappers/mood_record/mood_record_entity_to_model_isar_mapper.dart';
import 'package:pollen_tracker/data/mappers/mood_record/mood_record_model_isar_to_entity_mapper.dart';
import 'package:pollen_tracker/data/repositories/mood_record_repository_impl.dart';
import 'package:pollen_tracker/domain/repositories/mood_record_repository.dart';
import 'package:pollen_tracker/domain/repositories/mood_record_subject.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'injectable_init.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
void configureDependencies({String env = Environment.dev}) => getIt.init(environment: env);

@module
abstract class NetworkModule {
  @singleton
  Dio get ambeeDio => Dio(
        BaseOptions(
          baseUrl: Config.pollenApi,
        ),
      )..interceptors.add(
          PrettyDioLogger(
            requestHeader: false,
            requestBody: true,
            responseBody: true,
            responseHeader: false,
            error: true,
            compact: true,
            maxWidth: 90,
          ),
        );
}

@module
abstract class MoodModule {
  @injectable
  MoodRecordRepositoryIsarImpl moodRepositoryImpl(
    MoodLocalStorageDatasourceIsar datasource,
    MoodRecordModelIsarToEntityMapper moodRecordModelIsarToEntityMapper,
    MoodRecordEntityToModelIsarMapper moodRecordEntityToModelIsarMapper,
  ) =>
      MoodRecordRepositoryIsarImpl(
        datasource: datasource,
        moodRecordModelIsarToEntityMapper: moodRecordModelIsarToEntityMapper,
        moodRecordEntityToModelIsarMapper: moodRecordEntityToModelIsarMapper,
      );

  @injectable
  MoodRecordRepository moodSubject(MoodRecordRepositoryIsarImpl impl) => impl;

  @injectable
  MoodRecordSubject moodRepository(MoodRecordRepositoryIsarImpl impl) => impl;
}
