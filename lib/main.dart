import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:toistify/core/common/routes/app_route_config.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ScreenUtilInit(
      designSize: const Size(412, 891),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, __) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'News API',
          theme: ThemeData(),
          // routerConfig: _router,
          routeInformationParser: MyAppRouter().router.routeInformationParser,
          routerDelegate: MyAppRouter().router.routerDelegate,
        );
      },
    );
  }

  // final GoRouter _router = GoRouter(
  //   // initialLocation: "/explore",
  //   routes: [
  //     GoRoute(
  //       path: '/',
  //       builder: (context, state) => const MainNavigation(),
  //     ),
  //     GoRoute(
  //       path: '/new_list',
  //       builder: (context, state) => const DashBoardPage(),
  //     ),
  //     GoRoute(
  //       path: '/explore',
  //       builder: (context, state) => const ExplorePage(),
  //     ),
  //     GoRoute(
  //       path: '/saved',
  //       builder: (context, state) => const SavedPage(),
  //     ),
  //     GoRoute(
  //       path: '/profile',
  //       builder: (context, state) => const ProfilePage(),
  //     ),
  //   ],
  // );
}
