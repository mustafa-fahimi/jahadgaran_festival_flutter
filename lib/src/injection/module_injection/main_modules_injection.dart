import 'package:api_service/api_service.dart';
import 'package:database_service/database_service.dart';
import 'package:dio/dio.dart';
import 'package:jahadgaran_festival/src/config/config.dart';
import 'package:jahadgaran_festival/src/core/core.dart';
import 'package:jahadgaran_festival/src/core/interceptors/global_request_suplier.dart';
import 'package:jahadgaran_festival/src/core/interceptors/request_interceptor.dart';
import 'package:jahadgaran_festival/src/injection/injectable.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';
import 'package:talker_flutter/talker_flutter.dart';

class MainModulesInjection {
  MainModulesInjection() {
    final dio = Dio(BaseOptions(connectTimeout: 20000));

    final talker = TalkerFlutter.init();

    final talkerDioLogger = TalkerDioLogger(
      talker: talker,
      settings: const TalkerDioLoggerSettings(printRequestHeaders: true),
    );

    getIt
      ..registerSingleton<Dio>(dio)
      ..registerSingleton<Talker>(talker)
      ..registerSingleton<TalkerDioLogger>(talkerDioLogger)
      ..registerLazySingleton<AppRouter>(AppRouter.new)
      ..registerLazySingleton<DatabaseService>(DatabaseServiceImpl.new)
      ..registerLazySingleton<GlobalRequestSupplier>(GlobalRequestSupplier.new)
      ..registerLazySingleton<ApiService>(
        () => ApiServiceImpl(
          interceptors: [
            getIt.get<RequestInterceptor>(param1: getIt.get<Env>()),
            getIt.get<TalkerDioLogger>(),
          ],
          dio: getIt.get<Dio>(),
        ),
      );
  }

  /// call the `initialize` method of the database_service
  /// to create database file
  Future<void> initDatabase() async =>
      getIt.get<DatabaseService>().initialize();

  Future<void> registerHiveAdapters() async {
    getIt.get<DatabaseService>();
  }
}
