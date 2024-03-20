import 'package:get_it/get_it.dart';
import 'package:pollen_tracker/data/datasources/mood_local_storage_datasource_isar_impl.dart';
import 'package:pollen_tracker/data/repositories/mood_record_repository_impl.dart';
import 'package:pollen_tracker/domain/datasources/mood_local_storage_datasource.dart';
import 'package:pollen_tracker/domain/repositories/mood_record_repository.dart';
import 'package:pollen_tracker/ui/theme/theme.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  // repositories
  sl.registerSingleton<MoodLocalStorageDatasource>(await MoodLocalStorageDatasourceIsarImpl.create());
  sl.registerSingleton<MoodRecordRepository>(MoodRecordRepositoryImpl(sl()));
  // blocs
  // sl.registerSingleton<SomeBloc>(SomeBloc(sl()));

  // Theme
  sl.registerSingleton<AppThemeData>(AppThemeData.light());
}
