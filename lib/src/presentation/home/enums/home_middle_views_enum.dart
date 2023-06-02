import 'package:flutter/material.dart';
import 'package:jahadgaran_festival/src/presentation/home/models/news_model.dart';
import 'package:jahadgaran_festival/src/presentation/home/widgets/admin_panel_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/widgets/all_f_a_q_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/widgets/contact_us_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/widgets/festival_information_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/widgets/get_atlas_code_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/widgets/home_main_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/widgets/media_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/widgets/news_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/widgets/register_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/widgets/single_news_widget.dart';

enum HomeMiddleViews {
  home,
  festivalInformation,
  news,
  getAtlasCode,
  media,
  contactsUs,
  register,
  faq,
  singleNews,
  adminPanel
}

extension HomeMiddleViewsEx on HomeMiddleViews {
  Widget getCorrespondingWidget({NewsModel? news}) {
    switch (this) {
      case HomeMiddleViews.home:
        return const HomeMainWidget();
      case HomeMiddleViews.register:
        return RegisterWidget();
      case HomeMiddleViews.festivalInformation:
        return const FestivalInformationWidget();
      case HomeMiddleViews.news:
        return NewsWidget();
      case HomeMiddleViews.getAtlasCode:
        return GetAtlasCodeWidget();
      case HomeMiddleViews.media:
        return const MediaWidget();
      case HomeMiddleViews.contactsUs:
        return ContactUsWidget();
      case HomeMiddleViews.faq:
        return const AllFAQWidget();
      case HomeMiddleViews.singleNews:
        return SingleNewsWidget(news: news!);
      case HomeMiddleViews.adminPanel:
        return const AdminPanelWidget();
    }
  }
}
