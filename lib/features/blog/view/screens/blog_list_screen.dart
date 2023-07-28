import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:toistify/core/res/colors.dart';
import 'package:toistify/core/res/media_res.dart';
import 'package:toistify/features/blog/controller/news_controller.dart';
import 'package:toistify/features/blog/view/screens/blog_detail_screen.dart';
import 'package:toistify/features/blog/view/widgets/blog_row_widget.dart';

class DashBoardPage extends ConsumerWidget {
  const DashBoardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final heightCalc = MediaQuery.of(context).size.height;
    final newsData = ref.watch(newsDataProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.light,
        foregroundColor: AppColors.darkBackground,
        elevation: 0,
        title: const Text('Fetch News'),
        actions: [
          IconButton(
            onPressed: () {
              print('hello');
            },
            icon: const Icon(Ionicons.notifications_outline),
          ),
          IconButton(
            onPressed: () {
              print('hello');
            },
            icon: const Icon(Ionicons.search_outline),
          ),
        ],
      ),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        // controller: controller,
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              reuseableRow("Breaking News", 'Show more news', 20),
              SizedBox(
                height: 12.h,
              ),
              Container(
                width: double.infinity,
                height: 200.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: const DecorationImage(
                      image: AssetImage(ImageRes.openai), fit: BoxFit.cover),
                ),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.black.withOpacity(0.7)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'TechCrunch',
                          style: GoogleFonts.spaceGrotesk(color: Colors.yellow),
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        Text(
                          'Yep, `Learning Man` is becoming a thing',
                          // textAlign: TextAlign.center,
                          style: GoogleFonts.spaceGrotesk(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        Text(
                          'Author: Kyle Wiggers',
                          style: GoogleFonts.spaceGrotesk(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              reuseableRow("Recommended for you", 'Show more', 22),
              newsData.when(data: (news) {
                return ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  itemCount: news.length,
                  itemBuilder: (_, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => DetailScreenPage(
                              value: news[index],
                            ),
                          ),
                        );
                        print(news[index].author);
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 17),
                        decoration: const BoxDecoration(color: Colors.blueGrey),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              news[index].author!,
                              maxLines: 2,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              }, error: (error, StackTrace) {
                return Text(
                  error.toString(),
                );
              }, loading: () {
                return Padding(
                  padding: EdgeInsets.only(top: heightCalc * 0.18.h),
                  child: const Center(child: CircularProgressIndicator()),
                );
              })
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.light,
        unselectedItemColor: AppColors.light,
        backgroundColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Ionicons.home_outline),
            label: 'Home',
            activeIcon: Icon(Ionicons.home),
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.wifi_outline),
            label: 'Explore',
            activeIcon: Icon(Ionicons.wifi),
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.bookmark_outline),
            label: 'Saved',
            activeIcon: Icon(Ionicons.bookmark),
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.person_outline),
            label: 'Profile',
            activeIcon: Icon(Ionicons.person),
          ),
        ],
      ),
    );
  }
}
