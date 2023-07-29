import 'package:flutter/material.dart';
import 'package:toistify/core/common/routes/app_route_constants.dart';

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
                  //  GoRouter.of(context).pushNamed(MyAppRouteConstants.savedRouteName);
                },
                child: const Text('go to saved home page'))
          ],
        ),
      ),
    );
  }
}
