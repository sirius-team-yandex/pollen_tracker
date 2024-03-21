import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pollen_tracker/common/config.dart';
import 'package:pollen_tracker/data/datasources/mood_local_storage_datasource_isar_impl.dart';
import 'package:pollen_tracker/data/mappers/mood_record/mood_record_entity_to_model_isar_mapper.dart';
import 'package:pollen_tracker/data/mappers/mood_record/mood_record_model_isar_to_entity_mapper.dart';
import 'package:pollen_tracker/data/repositories/mood_record_repository_impl.dart';
import 'package:pollen_tracker/data/repositories/pollen_repository_mock_impl.dart';
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
  sl.registerSingleton<MoodLocalStorageDatasourceIsar>(MoodLocalStorageDatasourceIsar());
  sl.registerSingleton<MoodRecordRepository>(MoodRecordRepositoryIsarImpl(sl()));
  // blocs
  // sl.registerSingleton<SomeBloc>(SomeBloc(sl()));

  // mappers
  sl.registerSingleton<MoodRecordModelIsarToEntityMapper>(MoodRecordModelIsarToEntityMapper());
  sl.registerSingleton<MoodRecordEntityToModelIsarMapper>(MoodRecordEntityToModelIsarMapper());

  // Theme
  sl.registerSingleton<AppThemeData>(AppThemeData.light());
}

Dio _configureDio() {
  final options = BaseOptions(
    baseUrl: Config.POLLEN_API,
  );

  return Dio(options);
}
