import 'dart:convert';
import 'dart:math' as math;

import 'package:crypto/crypto.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
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

  void displayToast(
    BuildContext context, {
    required String message,
    bool isFailureMessage = false,
  }) {
    final fToast = FToast()..init(context);
    final toastWidget = GestureDetector(
      onTap: fToast.removeCustomToast,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kDefaultBorderRadius * 2),
          color: isFailureMessage ? kErrorColor : kSuccessColor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                isFailureMessage ? Icons.close_rounded : Icons.check,
                color: Colors.white,
              ),
              const SizedBox(width: 8),
              Flexible(
                child: Text(
                  message,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: body1.copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );

    fToast.showToast(
      child: toastWidget,
      toastDuration: const Duration(milliseconds: 4500),
      positionedToastBuilder: (_, child) {
        return Positioned(
          top: 40,
          left: 20,
          child: child,
        );
      },
    );
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

  String calculateUntilStartDate() {
    var finalDifference = '';
    final festivalStartDate = DateTime(2023, 6, 21);
    final differenceInDays =
        festivalStartDate.difference(DateTime.now()).inDays;
    final remainingMonth = differenceInDays ~/ 30;
    final remainingDays = differenceInDays % 30;
    if (remainingMonth > 0) {
      finalDifference += '$remainingMonth ماه ';
    }
    if (remainingMonth > 0 && remainingDays > 0) {
      finalDifference += 'و ';
    }
    if (remainingDays > 0) {
      finalDifference += '$remainingDays روز';
    }
    return finalDifference;
  }
}
