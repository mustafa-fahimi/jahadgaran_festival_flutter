import 'package:flutter/widgets.dart';
import 'package:jahadgaran_festival/src/config/l10n/l10n.dart';

enum RegisterType {
  jahadiGroup,
  individual,
  group,
  initial,
}

extension RegisterTypeEx on RegisterType {
  String getName(BuildContext context) {
    switch (this) {
      case RegisterType.jahadiGroup:
        return context.l10n.jahadi_group_in_atlas;
      case RegisterType.individual:
        return context.l10n.individual;
      case RegisterType.group:
        return context.l10n.group;
      case RegisterType.initial:
        return context.l10n.jahadi_group_in_atlas;
    }
  }
}
