import 'dart:ui';

import 'package:injectable/injectable.dart';
import 'package:jahadgaran_festival/src/core/environment/env.dart';

@prod
@Singleton(as: Env, env: [Environment.prod])
class EnvProd extends Env {
  @override
  String get baseUrl => 'http://festival-kh.ir/laravel_public/api/';

  @override
  String get authorizationHeader => '';

  @override
  AppEnvironment get environment => AppEnvironment.prod;

  @override
  Locale get locale => const Locale('fa');
}
