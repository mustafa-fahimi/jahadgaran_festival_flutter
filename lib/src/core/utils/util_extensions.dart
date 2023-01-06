import 'package:flutter/material.dart';

/// Callers can lookup theme with an instance of Theme returned
/// by `context.theme`.

extension ContextUtilsEX on BuildContext {
  ThemeData get theme => Theme.of(this);

  double deviceWidthFactor(double factor) =>
      (MediaQuery.of(this).size.width * factor).floorToDouble();

  double deviceHeightFactor(double factor) =>
      (MediaQuery.of(this).size.height * factor).floorToDouble();
}
