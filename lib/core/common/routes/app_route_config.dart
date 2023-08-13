import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:toistify/core/common/routes/app_route_constants.dart';
import 'package:toistify/features/about/about_us.dart';
import 'package:toistify/features/authrntication/view/screens/register_screen.dart';
import 'package:toistify/features/authrntication/view/screens/sign_in_screen.dart';
import 'package:toistify/features/blog/view/screens/blog_list_screen.dart';
import 'package:toistify/features/bottom_nav/static_nav.dart';
import 'package:toistify/features/contact/contact_us.dart';
import 'package:toistify/features/error_page/error_page.dart';
import 'package:toistify/features/explore/explore_screen.dart';
import 'package:toistify/features/profile/profile.dart';
import 'package:toistify/features/saved/save_screen.dart';
import 'package:toistify/features/settings/setting.dart';
import 'package:toistify/features/toistify_features/toistify_features.dart';

class MyAppRouter {
  GoRouter router = GoRouter(
    // redirect: (context, state) {
    //   bool isLoggedIn = true;
    //   // ignore: dead_code
    //   if (isLoggedIn) {
    //     return '/';
    //     // ignore: dead_code
    //   } else {
    //     print(state.location);
    //     return '/signin';
    //   }
    // },



    routes: [
      GoRoute(
        path: '/',
        name: MyAppRouteConstants.homeRouteName,
        builder: (context, state) => const MainNavigation(),
        // builder: (context, state) => const DashBoardPage(),
        // routes: [
        //   GoRoute(
        //     path: 'settings',
        //     builder: (context, state) => const SettingsPage(),
        //   ),
        // ],
      ),
      

      GoRoute(
        path: '/new_list',
        name: MyAppRouteConstants.newsRouteName,
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: DashBoardPage(),
          );
        },
      ),
      GoRoute(
        path: '/explore',
        name: MyAppRouteConstants.exploreRouteName,
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: ExplorePage(),
          );
        },
      ),
      GoRoute(
        name: MyAppRouteConstants.savedRouteName,
        path: '/saved',
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: SavedPage(),
          );
        },
      ),
      GoRoute(
        name: MyAppRouteConstants.profileRouteName,
        path: '/profile',
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: ProfilePage(),
          );
        },
      ),
      GoRoute(
        name: 'signin',
        path: '/signin',
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: SignIn(),
          );
        },
      ),
      GoRoute(
        name: 'register',
        path: '/register',
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: RegisterPage(),
          );
        },
      ),
      GoRoute(
        name: 'settings',
        path: '/settings',
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: SettingsPage(),
          );
        },
      ),
      GoRoute(
        name: 'toistify',
        path: '/toistify',
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: ToistifyPage(),
          );
        },
      ),
      GoRoute(
        name: 'contact',
        path: '/contact',
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: ContactUs(),
          );
        },
      ),
      GoRoute(
        name: 'about',
        path: '/about',
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: AboutUs(),
          );
        },
      ),
    ],
    errorPageBuilder: (context, state) {
      return const MaterialPage(
        child: ErrorPage(),
      );
    },
    // errorBuilder: (context, state) => const ErrorPage(),
  );
}
