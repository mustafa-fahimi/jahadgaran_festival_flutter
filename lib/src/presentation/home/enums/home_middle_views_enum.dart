import 'package:flutter/material.dart';
import 'package:jahadgaran_festival/src/presentation/home/widgets/home_main_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/widgets/register_widget.dart';

enum HomeMiddleViews{
  home,
  register,
}

extension HomeMiddleViewsEx on HomeMiddleViews{
  Widget getCorrespondingWidget(){
    switch (this) {
      case HomeMiddleViews.home:
        return const HomeMainWidget();
      case HomeMiddleViews.register:
        return RegisterWidget();
    }
  }
}
