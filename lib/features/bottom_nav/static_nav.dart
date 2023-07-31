import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:toistify/core/common/nav_provider.dart';
import 'package:toistify/core/common/navs.dart';
import 'package:toistify/core/res/media_res.dart';
import 'package:toistify/features/blog/view/screens/blog_list_screen.dart';
import 'package:toistify/features/explore/explore_screen.dart';
import 'package:toistify/features/profile/profile.dart';
import 'package:toistify/features/saved/save_screen.dart';

class MainNavigation extends ConsumerWidget {
  const MainNavigation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List pages = [
      const DashBoardPage(),
      const ExplorePage(),
      const SavedPage(),
      const ProfilePage()
    ];
    int myCurrentIndex = ref.watch(navStateProvider);
    return Scaffold(
      // appBar: AppBar(),
      drawer: Drawer(
        surfaceTintColor: Colors.black,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Color(0xFF517da2)),
              accountName: Text('Temitope'),
              accountEmail: Text('ilesanmiissac@gmail.com'),
              currentAccountPicture: CircleAvatar(
                foregroundImage: AssetImage(ImageRes.profile),
              ),
            ),
            const ListTile(
              title: Text('New Group'),
              leading: Icon(Ionicons.people_outline),
              trailing: Icon(Ionicons.arrow_forward),
            ),
            const ListTile(
              title: Text('Contact'),
              leading: Icon(Ionicons.person_outline),
              trailing: Icon(Ionicons.arrow_forward),
            ),
            const ListTile(
              title: Text('Call'),
              leading: Icon(Ionicons.call_outline),
              trailing: Icon(Ionicons.arrow_forward),
            ),
            const ListTile(
              title: Text('People Near'),
              leading: Icon(Ionicons.map_outline),
              trailing: Icon(Ionicons.arrow_forward),
            ),
            const ListTile(
              title: Text('Saved Messages'),
              leading: Icon(Ionicons.bookmark_outline),
              trailing: Icon(Ionicons.arrow_forward),
            ),
            const Divider(),
            const ListTile(
              title: Text('Invite Friends'),
              leading: Icon(Ionicons.person_add_outline),
              trailing: Icon(Ionicons.arrow_forward),
            ),
            const ListTile(
              title: Text('Toistify Features'),
              leading: Icon(Ionicons.help_outline),
              trailing: Icon(Ionicons.arrow_forward),
            ),
            InkWell(
              onTap: () {
                GoRouter.of(context).pushReplacement('/signin');
              },
              child: const ListTile(
                title: Text('Sign In'),
                leading: Icon(Ionicons.log_in_outline),
                trailing: Icon(Ionicons.arrow_forward),
              ),
            ),
          ],
        ),
      ),
      body: pages[myCurrentIndex],
      bottomNavigationBar: const MyNavigation(),
    );
  }
}
