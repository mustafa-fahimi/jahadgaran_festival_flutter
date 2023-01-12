import 'dart:convert';
import 'dart:math' as math;

import 'package:crypto/crypto.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:jahadgaran_festival/src/config/config.dart';
import 'package:jahadgaran_festival/src/core/core.dart';
import 'package:jahadgaran_festival/src/injection/injectable.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';
import 'package:talker_flutter/talker_flutter.dart';

class AppHelper {
  factory AppHelper() => _singleton;
  AppHelper._();

  static final AppHelper _singleton = AppHelper._();

  bool isPlatformWebOrDesktop() =>
      kIsWeb ||
      defaultTargetPlatform == TargetPlatform.windows ||
      defaultTargetPlatform == TargetPlatform.macOS ||
      defaultTargetPlatform == TargetPlatform.linux;

  bool isPlatformMobile() =>
      defaultTargetPlatform == TargetPlatform.android ||
      defaultTargetPlatform == TargetPlatform.iOS;

  void logMessage(
    String message, {
    LogLevel logLevel = LogLevel.debug,
  }) =>
      getIt.get<Talker>().log(message, logLevel: logLevel);

  void displaySnackBar({
    required String message,
    bool isFailureMessage = false,
  }) {
    final context = getIt.get<AppRouter>().navigatorKey.currentContext!;
    final snackBar = SnackBar(
      content: Text(
        message.isNotEmpty ? message : 'Empty',
        textAlign: TextAlign.center,
        style: body1,
      ),
      backgroundColor:
          isFailureMessage ? kErrorColor : context.theme.colorScheme.primary,
    );

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  void closeSoftKeyboard(BuildContext context) =>
      FocusScope.of(context).unfocus();

  String generateRandomString(int length) {
    const chars =
        'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
    final rnd = math.Random();
    return String.fromCharCodes(
      Iterable.generate(
        length,
        (_) => chars.codeUnitAt(rnd.nextInt(chars.length)),
      ),
    );
  }

  String encodeToSHA256(String value) =>
      sha256.convert(utf8.encode(value)).toString();

  String timestampToJalali(String timestamp) {
    final timeStampInteger = int.parse(timestamp);
    final gregorianDate = DateTime.fromMillisecondsSinceEpoch(timeStampInteger);
    final jalaliDate = gregorianDate.toJalali();
    return '${jalaliDate.year}/${jalaliDate.month}/${jalaliDate.day}';
  }
}
