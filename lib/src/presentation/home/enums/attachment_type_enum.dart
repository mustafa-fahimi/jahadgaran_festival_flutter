import 'package:flutter/material.dart';
import 'package:jahadgaran_festival/src/config/config.dart';

enum AttachmentType {
  dastani,
  khatereNevisi,
  infography,
  motionGraphy,
  tasvirsazy,
  sharheHalNevisi,
  mostanadSazi,
  sher,
  sorud,
  namahang,
  revayatgari,
  maghale,
  tajrobeNegari,
  ideha,
  khoshnevisi,
  karikator,
  filmKotah,
}

extension AttachmentTypeEx on AttachmentType {
  String getTitle(BuildContext context) {
    switch (this) {
      case AttachmentType.dastani:
        return context.l10n.dastani;
      case AttachmentType.khatereNevisi:
        return context.l10n.khatereNevisi;
      case AttachmentType.infography:
        return context.l10n.infography;
      case AttachmentType.motionGraphy:
        return context.l10n.motionGraphy;
      case AttachmentType.tasvirsazy:
        return context.l10n.tasvirsazy;
      case AttachmentType.sharheHalNevisi:
        return context.l10n.sharheHalNevisi;
      case AttachmentType.mostanadSazi:
        return context.l10n.mostanadSazi;
      case AttachmentType.sher:
        return context.l10n.sher;
      case AttachmentType.sorud:
        return context.l10n.sorud;
      case AttachmentType.namahang:
        return context.l10n.namahang;
      case AttachmentType.revayatgari:
        return context.l10n.revayatgari;
      case AttachmentType.maghale:
        return context.l10n.maghale;
      case AttachmentType.tajrobeNegari:
        return context.l10n.tajrobeNegari;
      case AttachmentType.ideha:
        return context.l10n.ideha;
      case AttachmentType.khoshnevisi:
        return context.l10n.khoshnevisi;
      case AttachmentType.karikator:
        return context.l10n.karikator;
      case AttachmentType.filmKotah:
        return context.l10n.filmKotah;
    }
  }
}
