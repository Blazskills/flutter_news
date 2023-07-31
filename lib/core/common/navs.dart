import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:toistify/core/common/nav_provider.dart';
import 'package:toistify/core/res/colors.dart';

class MyNavigation extends ConsumerWidget {
  const MyNavigation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int myCurrentIndex = ref.watch(navStateProvider);

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.light,
      unselectedItemColor: AppColors.light,
      backgroundColor: Colors.black,
      currentIndex: myCurrentIndex,
      iconSize: 25,
      elevation: 0,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Ionicons.home_outline),
          label: 'Home',
          activeIcon: Icon(Ionicons.home),
        ),
        BottomNavigationBarItem(
          icon: Icon(Ionicons.navigate_outline),
          label: 'Explore',
          activeIcon: Icon(Ionicons.navigate),
        ),
        BottomNavigationBarItem(
          icon: Icon(Ionicons.images_outline),
          label: 'Stories',
          activeIcon: Icon(Ionicons.images),
        ),
        BottomNavigationBarItem(
          icon: Icon(Ionicons.person_outline),
          label: 'Profile',
          activeIcon: Icon(Ionicons.person),
        ),
      ],
      onTap: (value) {
        ref.read(navStateProvider.notifier).state = value;
      },
    );
  }
}