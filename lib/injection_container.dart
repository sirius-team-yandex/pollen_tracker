import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pollen_tracker/common/config.dart';
import 'package:pollen_tracker/data/datasources/mood_local_storage_datasource_isar_impl.dart';
import 'package:pollen_tracker/data/mappers/pollen_dto_to_pollen_entity_mapper.dart';
import 'package:pollen_tracker/data/mappers/pollen_entity_to_pollen_model_mapper.dart';
import 'package:pollen_tracker/data/mappers/pollen_model_to_pollen_entity_mapper.dart';
import 'package:pollen_tracker/data/repositories/mood_record_repository_impl.dart';
import 'package:pollen_tracker/data/repositories/pollen_repository_mock_impl.dart';
import 'package:pollen_tracker/domain/datasources/mood_local_storage_datasource.dart';
import 'package:pollen_tracker/domain/repositories/mood_record_repository.dart';
import 'package:pollen_tracker/domain/repositories/pollen_repository.dart';
import 'package:pollen_tracker/ui/theme/theme.dart';
import 'package:pollen_tracker/app/firebase/init.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  //Firebase
  initFirebase();
  // repositories
  sl.registerSingleton<PollenRepository>(PollenRepositoryMock());
  sl.registerSingleton<Dio>(_configureDio());
  sl.registerSingleton<MoodLocalStorageDatasource>(
      await MoodLocalStorageDatasourceIsarImpl.create());
  sl.registerSingleton<MoodRecordRepository>(MoodRecordRepositoryImpl(sl()));
  // mappers
  sl.registerSingleton<PollenDtoToPollenEntityMappper>(PollenDtoToPollenEntityMappper());
  sl.registerSingleton<PollenModelToPollenEntityMapper>(PollenModelToPollenEntityMapper());
  sl.registerSingleton<PollenEntityToPollenModelMapper>(PollenEntityToPollenModelMapper());
  // blocs
  // sl.registerSingleton<SomeBloc>(SomeBloc(sl()));

  // Theme
  sl.registerSingleton<AppThemeData>(AppThemeData.light());
}

Dio _configureDio() {
  final options = BaseOptions(
    baseUrl: Config.POLLEN_API,
  );

  return Dio(options);
}
