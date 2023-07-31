import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Text('Error page'),
          ElevatedButton(
            onPressed: () {
              // context.goNamed(MyAppRouteConstants.homeRouteName);
            GoRouter.of(context).go('/');
            },
            child: const Text('Go back home'),
          )
        ],
      ),
    );
  }
}
