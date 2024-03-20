import 'package:get_it/get_it.dart';
import 'package:pollen_tracker/ui/theme/theme.dart';
import 'package:pollen_tracker/app/firebase/init.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  //Firebase
  initFirebase();
  // repositories
  // sl.registerSingleton<SomeRepo>(SomeRepoImpl());
  // blocs
  // sl.registerSingleton<SomeBloc>(SomeBloc(sl()));

  // Theme
  sl.registerSingleton<AppThemeData>(AppThemeData.light());
}
