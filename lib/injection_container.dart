import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pollen_tracker/common/config.dart';
import 'package:pollen_tracker/data/repository/pollen_repository_impl.dart';
import 'package:pollen_tracker/data/repository/pollen_repository_mock_impl.dart';
import 'package:pollen_tracker/domain/pollen_repository/pollen_repository.dart';
import 'package:pollen_tracker/ui/theme/theme.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  // repositories
  sl.registerSingleton<PollenRepository>(PollenRepositoryMockImpl());
  sl.registerSingleton<Dio>(_configureDio());

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
