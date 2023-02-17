import 'package:flutter/material.dart';
import 'package:jahadgaran_festival/src/config/l10n/l10n.dart';

enum FestivalInformation {
  introduction,
  contacts,
  areasAndAxis,
  worksFormat,
  awards,
}

extension FestivalInformationEx on FestivalInformation {
  String getTitle(BuildContext context) {
    switch (this) {
      case FestivalInformation.introduction:
        return context.l10n.introduction;
      case FestivalInformation.contacts:
        return context.l10n.contacts;
      case FestivalInformation.areasAndAxis:
        return context.l10n.areas_and_axis;
      case FestivalInformation.worksFormat:
        return context.l10n.works_format;
      case FestivalInformation.awards:
        return context.l10n.awards;
    }
  }

  String getContent(BuildContext context) {
    switch (this) {
      case FestivalInformation.introduction:
        return context.l10n.introduction_description;
      case FestivalInformation.contacts:
        return context.l10n.contacts_description;
      case FestivalInformation.areasAndAxis:
        return context.l10n.areas_and_axis_description;
      case FestivalInformation.worksFormat:
        return context.l10n.works_format_description;
      case FestivalInformation.awards:
        return context.l10n.awards_description;
    }
  }
}
