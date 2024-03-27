import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pollen_tracker/common/config.dart';
import 'package:pollen_tracker/data/models/local/config_model_isar.dart';
import 'package:pollen_tracker/data/models/local/mood_record_model_isar.dart';
import 'package:pollen_tracker/data/models/local/pollen_model.dart';
import 'package:pollen_tracker/data/models/local/profile_model_isar.dart';
import 'package:pollen_tracker/data/repositories/config_repository_impl.dart';
import 'package:pollen_tracker/data/repositories/mood_record_repository_impl.dart';
import 'package:pollen_tracker/data/repositories/pollen_repository_impl.dart';
import 'package:pollen_tracker/data/repositories/profile_repository_impl.dart';
import 'package:pollen_tracker/domain/repositories/config_repository.dart';
import 'package:pollen_tracker/domain/repositories/config_subject.dart';
import 'package:pollen_tracker/domain/repositories/mood_record_repository.dart';
import 'package:pollen_tracker/domain/repositories/mood_record_subject.dart';
import 'package:pollen_tracker/domain/repositories/pollen_repository.dart';
import 'package:pollen_tracker/domain/repositories/pollen_subject.dart';
import 'package:pollen_tracker/domain/repositories/profile_repository.dart';
import 'package:pollen_tracker/domain/repositories/profile_subject.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'injectable_init.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
Future<void> configureDependencies({String env = Environment.dev}) async => await getIt.init(environment: env);

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
  MoodRecordSubject moodSubject(MoodRecordRepositoryIsarImpl impl) => impl;

  @injectable
  MoodRecordRepository moodRepository(MoodRecordRepositoryIsarImpl impl) => impl;
}

@module
abstract class ProfileModule {
  @injectable
  ProfileSubject profileSubject(ProfileRepositoryIsarImpl impl) => impl;

  @injectable
  ProfileRepository profileRepository(ProfileRepositoryIsarImpl impl) => impl;
}

@module
abstract class ConfigModule {
  @injectable
  ConfigSubject configSubject(ConfigRepositoryIsarImpl impl) => impl;

  @injectable
  ConfigRepository configRepository(ConfigRepositoryIsarImpl impl) => impl;
}

@module
abstract class PollenModule {
  @injectable
  PollenSubject pollenSubject(PollenRepositoryImpl impl) => impl;

  @injectable
  PollenRepository pollenRepository(PollenRepositoryImpl impl) => impl;
}

@module
abstract class IsarModule {
  // We presolve future so we should have Isar, not Future<Isar> in our dependency graph
  @preResolve
  @singleton
  Future<Isar> get isar async {
    final dir = await getApplicationDocumentsDirectory();

    return Isar.open(
      [
        ConfigModelIsarSchema,
        PollenModelSchema,
        ProfileModelIsarSchema,
        MoodRecordModelIsarSchema,
      ],
      directory: dir.path,
    );
  }
}
