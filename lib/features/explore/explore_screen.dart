import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            const Text('Explore Page'),
            ElevatedButton(
                onPressed: () {
                  print('clicked');
              // context.goNamed(MyAppRouteConstants.homeRouteName);

                   GoRouter.of(context).push('/');
                  //  GoRouter.of(context).go('/saved');
                },
                child: const Text('go to saved home page'))
          ],
        ),
      ),
    );
  }
}
