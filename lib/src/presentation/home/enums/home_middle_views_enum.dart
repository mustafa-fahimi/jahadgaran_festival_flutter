import 'package:flutter/material.dart';
import 'package:jahadgaran_festival/src/presentation/home/widgets/contact_us_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/widgets/home_main_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/widgets/media_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/widgets/register_condition_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/widgets/register_widget.dart';

enum HomeMiddleViews {
  home,
  register,
  registerCondition,
  media,
  contactsUs,
}

extension HomeMiddleViewsEx on HomeMiddleViews {
  Widget getCorrespondingWidget() {
    switch (this) {
      case HomeMiddleViews.home:
        return const HomeMainWidget();
      case HomeMiddleViews.register:
        return RegisterWidget();
      case HomeMiddleViews.registerCondition:
        return const RegisterConditionWidget();
      case HomeMiddleViews.media:
        return const MediaWidget();
      case HomeMiddleViews.contactsUs:
        return ContactUsWidget();
    }
  }
}
