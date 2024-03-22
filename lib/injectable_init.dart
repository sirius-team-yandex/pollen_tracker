import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:pollen_tracker/common/config.dart';
import 'package:pollen_tracker/ui/theme/theme.dart';
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
abstract class Module {
  @singleton
  Dio get ambeeDio => Dio(
        BaseOptions(
          baseUrl: Config.pollenApi,
        ),
      )
    ..interceptors.add(
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



  @singleton
  AppThemeData get lightTheme => AppThemeData.light();
}
