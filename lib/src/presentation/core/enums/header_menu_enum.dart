import 'package:flutter/material.dart';
import 'package:jahadgaran_festival/src/config/config.dart';
import 'package:jahadgaran_festival/src/presentation/home/enums/home_middle_views_enum.dart';

enum HeaderMenu {
  mainPage,
  festivalInformation,
  feativalNews,
  registerConditions,
  media,
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
      case HeaderMenu.registerConditions:
        return context.l10n.register_condition;
      case HeaderMenu.media:
        return context.l10n.media;
      case HeaderMenu.contactUs:
        return context.l10n.contacts_us;
    }
  }

  HomeMiddleViews getProperMiddleView() {
    switch (this) {
      case HeaderMenu.mainPage:
        return HomeMiddleViews.home;
      case HeaderMenu.festivalInformation:
        return HomeMiddleViews.home;
      case HeaderMenu.feativalNews:
        return HomeMiddleViews.home;
      case HeaderMenu.registerConditions:
        return HomeMiddleViews.registerCondition;
      case HeaderMenu.media:
        return HomeMiddleViews.media;
      case HeaderMenu.contactUs:
        return HomeMiddleViews.contactsUs;
    }
  }
}
