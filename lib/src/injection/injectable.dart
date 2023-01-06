import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:jahadgaran_festival/src/injection/injectable.config.dart';

final getIt = GetIt.instance;

@InjectableInit(preferRelativeImports: false, initializerName: 'initGetIt')
void configureInjection(String env) => getIt.initGetIt(environment: env);
