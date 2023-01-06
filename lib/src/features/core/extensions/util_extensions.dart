import 'package:flutter/material.dart';

/// Callers can lookup theme with an instance of Theme returned
/// by `context.theme`.

extension ThemeDataX on BuildContext {
  ThemeData get theme => Theme.of(this);
}

/// ROund up the float number
extension Round on double {
  int get roundUpAbs => this.isNegative ? this.floor() : this.ceil();
}
