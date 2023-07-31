import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toistify/core/res/media_res.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 249, 253),
      // appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0).copyWith(bottom: 90.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Profile",
                  style: GoogleFonts.spaceGrotesk(
                      fontSize: 25.sp, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10.h)
                      .copyWith(right: 10.w, left: 10.h),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black
                            .withOpacity(0.2), // Color of the shadow
                        spreadRadius:
                            2, // How far the shadow spreads from the container
                        blurRadius: 4, // The blur radius of the shadow
                        offset: const Offset(0,
                            4), // The offset of the shadow from the container
                      ),
                    ],
                    color: const Color(0xFFFFFFFF),
                  ),
                  height: 120.h,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 78.w,
                            height: double.infinity,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                ImageRes.profile,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ilesanmi Temitope',
                                style: GoogleFonts.spaceGrotesk(
                                  fontSize: 25.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                '+1 (234) 8933823',
                                style: GoogleFonts.spaceGrotesk(
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Icon(
                        Ionicons.chevron_forward_outline,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black
                            .withOpacity(0.2), // Color of the shadow
                        spreadRadius:
                            2, // How far the shadow spreads from the container
                        blurRadius: 4, // The blur radius of the shadow
                        offset: const Offset(0,
                            4), // The offset of the shadow from the container
                      ),
                    ],
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 1.w),
                  padding:
                      EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),

                  // height: 120.h,
                  width: double.infinity,
                  child: const Column(
                    children: [
                      ListTile(
                        title: Text('Payment Method'),
                        leading: Icon(Ionicons.wallet_outline),
                        trailing: Icon(Ionicons.chevron_forward_outline),
                        contentPadding: EdgeInsets.symmetric(horizontal: 0),
                      ),
                      ListTile(
                        title: Text('Address'),
                        leading: Icon(Ionicons.location_outline),
                        trailing: Icon(Ionicons.chevron_forward_outline),
                        contentPadding: EdgeInsets.symmetric(horizontal: 0),
                      ),
                      ListTile(
                        title: Text('My Vouchers'),
                        leading: Icon(Ionicons.pricetags_outline),
                        trailing: Icon(Ionicons.chevron_forward_outline),
                        contentPadding: EdgeInsets.symmetric(horizontal: 0),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black
                            .withOpacity(0.2), // Color of the shadow
                        spreadRadius:
                            2, // How far the shadow spreads from the container
                        blurRadius: 4, // The blur radius of the shadow
                        offset: const Offset(0,
                            4), // The offset of the shadow from the container
                      ),
                    ],
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 1.w),
                  padding:
                      EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),

                  // height: 120.h,
                  width: double.infinity,
                  child: const Column(
                    children: [
                      ListTile(
                        title: Text('Notifications'),
                        leading: Icon(Ionicons.notifications_outline),
                        trailing: Icon(Ionicons.chevron_forward_outline),
                        contentPadding: EdgeInsets.symmetric(horizontal: 0),
                      ),
                      ListTile(
                        title: Text('Language'),
                        leading: Icon(Ionicons.globe_outline),
                        trailing: Icon(Ionicons.chevron_forward_outline),
                        contentPadding: EdgeInsets.symmetric(horizontal: 0),
                      ),
                      ListTile(
                        title: Text('Settings'),
                        leading: Icon(Ionicons.settings_outline),
                        trailing: Icon(Ionicons.chevron_forward_outline),
                        contentPadding: EdgeInsets.symmetric(horizontal: 0),
                      ),
                      ListTile(
                        title: Text('Invite Friends'),
                        leading: Icon(Ionicons.people_outline),
                        trailing: Icon(Ionicons.chevron_forward_outline),
                        contentPadding: EdgeInsets.symmetric(horizontal: 0),
                      ),
                      ListTile(
                        title: Text('Support'),
                        leading: Icon(Ionicons.briefcase_outline),
                        trailing: Icon(Ionicons.chevron_forward_outline),
                        contentPadding: EdgeInsets.symmetric(horizontal: 0),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
