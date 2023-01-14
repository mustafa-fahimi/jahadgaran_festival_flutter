import 'package:flutter/material.dart';
import 'package:jahadgaran_festival/src/config/themes/font_sizes.dart';
import 'package:jahadgaran_festival/src/core/core.dart';

part './custom_text_styles.dart';
part 'colors.dart';

class AppThemes {
  ///Light theme
  static ThemeData get light {
    return ThemeData(
      scaffoldBackgroundColor: mobileColorScheme.background,
      highlightColor: Colors.black12,
      fontFamily: kDefaultFont,
      colorScheme: mobileColorScheme,
      splashColor: kSecondaryColor,
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
