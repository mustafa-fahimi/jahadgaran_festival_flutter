import 'dart:ui';

enum AppEnvironment { prod, dev }

abstract class Env {
  String get baseUrl;
  String get authorizationHeader;
  Locale get locale;
  AppEnvironment get environment;
}
