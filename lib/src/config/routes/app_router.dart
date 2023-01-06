import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jahadgaran_festival/src/presentation/home/pages/home_page.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: HomePage,
      path: '/home',
      initial: true,
    ),
    RedirectRoute(path: '*', redirectTo: '/splash'),
  ],
)
class AppRouter extends _$AppRouter {}
