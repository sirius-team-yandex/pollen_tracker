import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:pollen_tracker/common/config.dart';
import 'package:pollen_tracker/ui/theme/theme.dart';

import 'injectable_init.config.dart';
	
final getIt = GetIt.instance;  
  
@InjectableInit(  
  initializerName: 'init', // default  
  preferRelativeImports: true, // default  
  asExtension: true, // default  
)  

void configureDependencies() => getIt.init(environment: Environment.prod); 


@module
abstract class Module {
  @singleton
  Dio get ambeeDio => Dio(
        BaseOptions(
          baseUrl: Config.pollenApi,
        ),
      );

  @singleton
  AppThemeData get lightTheme => AppThemeData.light();
}
