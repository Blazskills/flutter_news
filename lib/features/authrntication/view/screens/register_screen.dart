import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            const Text('Registration Page'),
             ElevatedButton(
              // onPressed: () => GoRouter.of(context).go('/signin'),
              onPressed: () => GoRouter.of(context).pushReplacement('/signin'),
              child: const Text('sign page'),
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
