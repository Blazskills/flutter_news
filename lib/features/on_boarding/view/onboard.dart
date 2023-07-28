import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toistify/core/res/colors.dart';
import 'package:toistify/core/res/media_res.dart';

class OnBoardPage extends StatelessWidget {
  const OnBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(ImageRes.reporter), fit: BoxFit.cover),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.051.w),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              stops: const [0.2, 0.7],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(0),
                Colors.black.withOpacity(0.89),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(0)
                .copyWith(bottom: MediaQuery.of(context).size.height * 0.040.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Stay Informed From Day One',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.spaceGrotesk(
                      color: AppColors.light,
                      fontWeight: FontWeight.bold,
                      fontSize: 40.sp),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Text(
                  'Discover the Latest News with our seamless OnBoarding Experiences',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.spaceGrotesk(
                      color: AppColors.light,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp),
                ),
                SizedBox(
                  height: 12.h,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        textStyle: GoogleFonts.spaceGrotesk(
                            color: AppColors.light,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp),
                        shape: const StadiumBorder(),
                        backgroundColor: Colors.indigo.shade800,
                        // foregroundColor: const Color.fromARGB(255, 81, 0, 0),
                        elevation: 0,
                        minimumSize: Size(double.infinity, 60.h)),
                    onPressed: () {},
                    child: const Text('Getting Started'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
