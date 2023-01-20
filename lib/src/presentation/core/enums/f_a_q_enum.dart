import 'package:flutter/material.dart';
import 'package:jahadgaran_festival/src/config/config.dart';

enum FAQ {
  question1,
  question2,
  question3,
  question4,
}

extension FAQEx on FAQ {
  String getQuestion(BuildContext context) {
    switch (this) {
      case FAQ.question1:
        return context.l10n.question1;
      case FAQ.question2:
        return context.l10n.question2;
      case FAQ.question3:
        return context.l10n.question3;
      case FAQ.question4:
        return context.l10n.question4;
    }
  }
}
