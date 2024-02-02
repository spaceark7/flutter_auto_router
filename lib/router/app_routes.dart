import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/ui/layout_page.dart';
import 'package:auto_route_example/ui/pages/home_page.dart';
import 'package:auto_route_example/ui/pages/about_page.dart';
import 'package:auto_route_example/ui/pages/login_page.dart';
import 'package:auto_route_example/ui/pages/profile_page.dart';
import 'package:flutter/material.dart';

part 'app_routes.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: LayoutRoute.page,
          path: '/',
          initial: true,
          children: [
            AutoRoute(page: HomeRoute.page, initial: true),
            AutoRoute(page: AboutRoute.page),
            AutoRoute(
              page: ProfileRoute.page,
            ),
          ],
        ),
        AutoRoute(page: LoginRoute.page, path: '/login'),
      ];
}
