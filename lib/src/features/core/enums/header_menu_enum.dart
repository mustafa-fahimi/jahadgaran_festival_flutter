import 'package:flutter/material.dart';
import 'package:jahadgaran_festival/src/config/config.dart';

enum HeaderMenu {
  mainPage,
  festivalInformation,
  feativalNews,
  inMedia,
  contactUs,
}

extension HeaderMenuEx on HeaderMenu {
  String getMenuTitle(BuildContext context) {
    switch (this) {
      case HeaderMenu.mainPage:
        return context.l10n.main_page;
      case HeaderMenu.festivalInformation:
        return context.l10n.festival_information;
      case HeaderMenu.feativalNews:
        return context.l10n.festival_news;
      case HeaderMenu.inMedia:
        return context.l10n.in_media;
      case HeaderMenu.contactUs:
        return context.l10n.contacts_us;
    }
  }
}
