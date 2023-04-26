import 'package:flutter/material.dart';
import 'package:jahadgaran_festival/src/config/config.dart';
import 'package:jahadgaran_festival/src/presentation/home/enums/home_middle_views_enum.dart';

enum HeaderMenu {
  home,
  festivalInformation,
  news,
  getAtlasCode,
  media,
  contactUs,
}

extension HeaderMenuEx on HeaderMenu {
  String getMenuTitle(BuildContext context) {
    switch (this) {
      case HeaderMenu.home:
        return context.l10n.main_page;
      case HeaderMenu.festivalInformation:
        return context.l10n.festival_information;
      case HeaderMenu.news:
        return context.l10n.news;
      case HeaderMenu.getAtlasCode:
        return context.l10n.atlas_code_inquiry;
      case HeaderMenu.media:
        return context.l10n.media;
      case HeaderMenu.contactUs:
        return context.l10n.contacts_us;
    }
  }

  HomeMiddleViews getProperMiddleView() {
    switch (this) {
      case HeaderMenu.home:
        return HomeMiddleViews.home;
      case HeaderMenu.festivalInformation:
        return HomeMiddleViews.festivalInformation;
      case HeaderMenu.news:
        return HomeMiddleViews.news;
      case HeaderMenu.getAtlasCode:
        return HomeMiddleViews.getAtlasCode;
      case HeaderMenu.media:
        return HomeMiddleViews.media;
      case HeaderMenu.contactUs:
        return HomeMiddleViews.contactsUs;
    }
  }
}
