import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:jahadgaran_festival/src/core/environment/env.dart';

@dev
@Singleton(as: Env, env: [Environment.dev])
class EnvDev extends Env {
  @override
  String get baseUrl => 'http://jahadi_festival_api.test/api/';

  @override
  String get authorizationHeader => '';

  @override
  AppEnvironment get environment => AppEnvironment.dev;

  @override
  Locale get locale => const Locale('fa');
}
