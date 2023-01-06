import 'dart:async';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:jahadgaran_festival/app_bloc_observer.dart';
import 'package:jahadgaran_festival/src/injection/injectable.dart';
import 'package:jahadgaran_festival/src/injection/module_injection/main_modules_injection.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  await _startupSetup();
  Bloc.observer = AppBlocObserver();

  await runZonedGuarded(
    () async => runApp(await builder()),
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}

Future<void> _startupSetup() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _initializeInjection();

  /// If the OS is `not web`
  if (!kIsWeb) {
    /// Open app only in `portrait` mode
    await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp],
    );

    /// Set device `status bar` and `navigation bar` color
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        systemNavigationBarIconBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
    );
  }
}

Future<void> _initializeInjection() async {
  configureInjection(Environment.dev);
  final mainModules = MainModulesInjection();
  await mainModules.initDatabase();
  await mainModules.registerHiveAdapters();
}
