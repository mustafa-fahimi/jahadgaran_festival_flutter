import 'package:flutter/material.dart';
import 'package:jahadgaran_festival/src/config/l10n/l10n.dart';

enum GroupInstitution {
  edareErshad,
  sazmanTablighat,
  sepah,
  helalAhmar,
  basij,
  basijSazandegi,
  none,
}

extension GroupInstitutionEx on GroupInstitution {
  String getName(BuildContext context) {
    switch (this) {
      case GroupInstitution.edareErshad:
        return context.l10n.edare_ershad;
      case GroupInstitution.sazmanTablighat:
        return context.l10n.sazman_tablighat;
      case GroupInstitution.sepah:
        return context.l10n.sepah;
      case GroupInstitution.helalAhmar:
        return context.l10n.helal_ahmar;
      case GroupInstitution.basij:
        return context.l10n.basij;
      case GroupInstitution.basijSazandegi:
        return context.l10n.basij_sazandegi;
      case GroupInstitution.none:
        return context.l10n.none;
    }
  }
}
