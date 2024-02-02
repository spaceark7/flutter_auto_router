// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_routes.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AboutRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AboutPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    LayoutRoute.name: (routeData) {
      final args = routeData.argsAs<LayoutRouteArgs>(
          orElse: () => const LayoutRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: LayoutPage(
          key: args.key,
          isLogin: args.isLogin,
        ),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfilePage(),
      );
    },
  };
}

/// generated route for
/// [AboutPage]
class AboutRoute extends PageRouteInfo<void> {
  const AboutRoute({List<PageRouteInfo>? children})
      : super(
          AboutRoute.name,
          initialChildren: children,
        );

  static const String name = 'AboutRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LayoutPage]
class LayoutRoute extends PageRouteInfo<LayoutRouteArgs> {
  LayoutRoute({
    Key? key,
    bool isLogin = false,
    List<PageRouteInfo>? children,
  }) : super(
          LayoutRoute.name,
          args: LayoutRouteArgs(
            key: key,
            isLogin: isLogin,
          ),
          initialChildren: children,
        );

  static const String name = 'LayoutRoute';

  static const PageInfo<LayoutRouteArgs> page = PageInfo<LayoutRouteArgs>(name);
}

class LayoutRouteArgs {
  const LayoutRouteArgs({
    this.key,
    this.isLogin = false,
  });

  final Key? key;

  final bool isLogin;

  @override
  String toString() {
    return 'LayoutRouteArgs{key: $key, isLogin: $isLogin}';
  }
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
