import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            const Text('Sign In Page'),
            ElevatedButton(
              // onPressed: () => GoRouter.of(context).go('/register'),
              onPressed: () =>
                  GoRouter.of(context).pushReplacement('/register'),

              child: const Text('register page'),
            ),
            
            ElevatedButton(
              // onPressed: () => GoRouter.of(context).go('/signin'),
              onPressed: () => GoRouter.of(context).pushReplacement('/'),
              child: const Text('Home page'),
            ),
          ],
        ),
      ),
    );
  }
}
