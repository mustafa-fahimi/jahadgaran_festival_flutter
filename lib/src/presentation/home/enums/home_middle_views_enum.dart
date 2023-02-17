import 'package:flutter/material.dart';
import 'package:jahadgaran_festival/src/presentation/home/widgets/all_f_a_q_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/widgets/contact_us_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/widgets/festival_information_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/widgets/home_main_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/widgets/media_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/widgets/news_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/widgets/register_condition_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/widgets/register_widget.dart';

enum HomeMiddleViews {
  home,
  register,
  festivalInformation,
  news,
  registerCondition,
  media,
  contactsUs,
  faq,
}

extension HomeMiddleViewsEx on HomeMiddleViews {
  Widget getCorrespondingWidget() {
    switch (this) {
      case HomeMiddleViews.home:
        return const HomeMainWidget();
      case HomeMiddleViews.register:
        return RegisterWidget();
      case HomeMiddleViews.festivalInformation:
        return const FestivalInformationWidget();
      case HomeMiddleViews.news:
        return NewsWidget();
      case HomeMiddleViews.registerCondition:
        return const RegisterConditionWidget();
      case HomeMiddleViews.media:
        return const MediaWidget();
      case HomeMiddleViews.contactsUs:
        return ContactUsWidget();
      case HomeMiddleViews.faq:
        return const AllFAQWidget();
    }
  }
}
