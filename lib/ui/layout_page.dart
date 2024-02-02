import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/router/app_routes.dart';
import 'package:flutter/material.dart';

@RoutePage()
class LayoutPage extends StatefulWidget {
  const LayoutPage({
    Key? key,
    this.isLogin = false,
  }) : super(key: key);

  final bool isLogin;

  @override
  State<LayoutPage> createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  @override
  Widget build(BuildContext context) {
    debugPrint('is auth ${widget.isLogin.toString()}');

    return AutoTabsRouter(
      routes: const [
        HomeRoute(),
        AboutRoute(),
        ProfileRoute(),
      ],
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,
        // the passed child is technically our animated selected-tab page
        child: child,
      ),
      builder: (context, child) {
        final tabsRouter = context.tabsRouter;
        return Scaffold(
          appBar: AppBar(
            title: const Text('Auto Route Example'),
          ),
          body: child,
          bottomNavigationBar: NavigationBar(
            selectedIndex: tabsRouter.activeIndex,
            onDestinationSelected: tabsRouter.setActiveIndex,
            destinations: [
              const NavigationDestination(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              const NavigationDestination(
                icon: Icon(Icons.info),
                label: 'About',
              ),
              if (widget.isLogin)
                const NavigationDestination(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                ),
            ],
          ),
        );
      },
    );
  }
}
