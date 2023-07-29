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
import 'package:intl/intl.dart';

class DashBoardPage extends ConsumerWidget {
  const DashBoardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<String> allImages = [ImageRes.openai, ImageRes.reporter];

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
      drawer: Drawer(
        surfaceTintColor: Colors.black,
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Color(0xFF517da2)),
              accountName: Text('Temitope'),
              accountEmail: Text('ilesanmiissac@gmail.com'),
              currentAccountPicture: CircleAvatar(
                foregroundImage: AssetImage(ImageRes.profile),
              ),
            ),
            ListTile(
              title: Text('New Group'),
              leading: Icon(Ionicons.people_outline),
              trailing: Icon(Ionicons.arrow_forward),
            ),
            ListTile(
              title: Text('Contact'),
              leading: Icon(Ionicons.person_outline),
              trailing: Icon(Ionicons.arrow_forward),
            ),
            ListTile(
              title: Text('Call'),
              leading: Icon(Ionicons.call_outline),
              trailing: Icon(Ionicons.arrow_forward),
            ),
            ListTile(
              title: Text('People Near'),
              leading: Icon(Ionicons.map_outline),
              trailing: Icon(Ionicons.arrow_forward),
            ),
            ListTile(
              title: Text('Saved Messages'),
              leading: Icon(Ionicons.bookmark_outline),
              trailing: Icon(Ionicons.arrow_forward),
            ),
            Divider(),
            ListTile(
              title: Text('Invite Friends'),
              leading: Icon(Ionicons.person_add_outline),
              trailing: Icon(Ionicons.arrow_forward),
            ),
            ListTile(
              title: Text('Toistify Features'),
              leading: Icon(Ionicons.help_outline),
              trailing: Icon(Ionicons.arrow_forward),
            ),
            ListTile(
              title: Text('Sign In'),
              leading: Icon(Ionicons.log_in_outline),
              trailing: Icon(Ionicons.arrow_forward),
            ),
          ],
        ),
      ),
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
              newsData.when(
                data: (news) {
                  return ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    padding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                    itemCount: news.length,
                    itemBuilder: (_, index) {
                      return InkWell(
                        onTap: () {
                          print(news[index].urlToImage);
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => DetailScreenPage(
                                value: news[index],
                                newsImage:
                                    index.isEven ? allImages[1] : allImages[0],
                              ),
                            ),
                          );
                          print(news[index].author);
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 0, vertical: 10),
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 17),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 239, 237, 237),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: SizedBox(
                                  height: 100
                                      .h, // Adjust the maximum height as per your preference
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                        10), // Adjust the radius as per your preference
                                    child:
                                        // Image.network(
                                        //   news[index].urlToImage != null
                                        //       ? news[index].urlToImage!
                                        //       : "https://thumbs.dreamstime.com/b/black-teapot-nice-background-adv-others-purpose-use-43738127.jpg",
                                        //   loadingBuilder: (BuildContext context,
                                        //       Widget child,
                                        //       ImageChunkEvent? loadingProgress) {
                                        //     if (loadingProgress == null) {
                                        //       return child;
                                        //     } else {
                                        //       return Center(
                                        //         child: CircularProgressIndicator(
                                        //           value: loadingProgress
                                        //                       .expectedTotalBytes !=
                                        //                   null
                                        //               ? loadingProgress
                                        //                       .cumulativeBytesLoaded /
                                        //                   (loadingProgress
                                        //                           .expectedTotalBytes ??
                                        //                       1)
                                        //               : null,
                                        //         ),
                                        //       );
                                        //     }
                                        //   },
                                        //   fit: BoxFit.cover,
                                        // ),
                                        Image.asset(
                                      index.isEven
                                          ? allImages[1]
                                          : allImages[0],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Expanded(
                                flex: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      news[index].author != null
                                          ? news[index].author!.toString()
                                          : 'No Author',
                                      style: GoogleFonts.spaceGrotesk(
                                        color: const Color.fromARGB(
                                            255, 0, 60, 255),
                                      ),
                                      maxLines: 2,
                                    ),
                                    SizedBox(
                                      height: 4.h,
                                    ),
                                    Text(
                                      news[index].title!.toString(),
                                      style: GoogleFonts.spaceGrotesk(
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.bold),
                                      maxLines: 2,
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          child: Row(
                                            children: [
                                              Text(
                                                DateFormat('MMMM d, y').format(
                                                    news[index].publishedAt!),
                                                // news[index].publishedAt!.toString(),
                                                style: GoogleFonts.spaceGrotesk(
                                                    fontSize: 16.sp),
                                              ),
                                              SizedBox(
                                                width: 7.w,
                                              ),
                                              Text(
                                                " 4 min read",
                                                style: GoogleFonts.spaceGrotesk(
                                                    fontSize: 16.sp),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Icon(
                                          Ionicons.bookmark_outline,
                                          size: 20.sp,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                error: (error, StackTrace) {
                  return Text(
                    error.toString(),
                  );
                },
                loading: () {
                  return Padding(
                    padding: EdgeInsets.only(top: heightCalc * 0.18.h),
                    child: const Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
