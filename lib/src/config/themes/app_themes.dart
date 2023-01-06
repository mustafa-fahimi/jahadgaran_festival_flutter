import 'package:flutter/material.dart';
import 'package:jahadgaran_festival/src/core/core.dart';

part './colors.dart';
part 'text_styles.dart';

class AppThemes {
  ///Light theme
  static ThemeData get light {
    return ThemeData(
      scaffoldBackgroundColor: mobileColorScheme.background,
      highlightColor: Colors.black12,
      fontFamily: kDefaultFont,
      colorScheme: mobileColorScheme,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          padding: EdgeInsets.zero,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(kDefaultBorderRadius),
            ),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          elevation: 0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(kDefaultBorderRadius),
            ),
          ),
          side: BorderSide(color: mobileColorScheme.primary),
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        splashRadius: 0,
        fillColor: MaterialStateProperty.all(mobileColorScheme.primary),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3),
        ),
      ),
    );
  }
}
