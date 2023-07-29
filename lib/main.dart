import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:toistify/core/common/nav_provider.dart';
import 'package:toistify/core/common/navs.dart';
import 'package:toistify/core/res/colors.dart';
import 'features/blog/view/screens/blog_list_screen.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List pages = [
      const DashBoardPage(),
      Container(
        color: Colors.orange,
      ),
      Container(
        color: Colors.purpleAccent,
      ),
      Container(
        color: Colors.indigoAccent,
      )
    ];
    int myCurrentIndex = ref.watch(navStateProvider);
    // final screenSize = MediaQuery.of(context).size;
    // debugPrint(screenSize.toString());
    return ScreenUtilInit(
      designSize: const Size(412, 891),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, __) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'News API',
          theme: ThemeData(),
          home: Scaffold(
            body: pages[myCurrentIndex],
            bottomNavigationBar: const MyNavigation(),
          ),
        );
      },
    );
  }
}
