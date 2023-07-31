import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SavedPage extends StatelessWidget {
  const SavedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            const Text('Saved Page'),
            ElevatedButton(
              // onPressed: () => GoRouter.of(context).go('/signin'),
              onPressed: () => GoRouter.of(context).pushReplacement('/signin'),
              // onPressed: () => GoRouter.of(context).push('/signin'), //User will be able to go back to previous page
              child: const Text('sign page'),
            ),
          ],
        ),
      ),
    );
  }
}
