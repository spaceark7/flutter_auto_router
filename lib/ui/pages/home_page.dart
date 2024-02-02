import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    AutoRouter.of(context);

    login() {
      AutoRouter.of(context).pushNamed('/login');
    }

    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // AutoRouter.of(context).push(const AboutRoute());
            login();
          },
          child: const Text('Login'),
        ),
      ),
    );
  }
}
