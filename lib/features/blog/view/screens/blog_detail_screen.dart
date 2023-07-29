import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:toistify/core/res/colors.dart';
import 'package:toistify/features/blog/model/news_model.dart';

class DetailScreenPage extends StatelessWidget {
  const DetailScreenPage(
      {super.key, required this.value, required this.newsImage});

  final NewsModel value;
  final String newsImage;
  @override
  Widget build(BuildContext context) {
    const String text = '''
Intrinsicly brand clicks-and-mortar solutions through market positioning niche markets. Dramatically provide access to cross functional communities without optimal data. Dynamically reinvent interoperable expertise for highly efficient systems. Dynamically pursue best-of-breed experiences via functionalized functionalities. Progressively fabricate excellent imperatives before wireless data.

Collaboratively create client-centric customer service via frictionless internal or "organic" sources. Enthusiastically morph efficient ideas through unique applications. Compellingly mesh value-added process improvements vis-a-vis interdependent communities. Monotonectally matrix proactive methodologies for viral applications. Enthusiastically innovate user friendly opportunities vis-a-vis ethical applications.

Competently restore process-centric platforms whereas real-time systems. Rapidiously generate customized core competencies vis-a-vis leading-edge products. Quickly mesh exceptional users rather than enabled results. Dramatically parallel task resource sucking growth strategies with plug-and-play experiences. Monotonectally pontificate next-generation mindshare and granular action items.

Quickly fashion cross functional internal or "organic" sources vis-a-vis mission-critical alignments. Professionally maintain resource-leveling results and future-proof imperatives. Seamlessly brand equity invested materials whereas quality technologies. Proactively reconceptualize empowered applications via one-to-one experiences. Energistically enhance enabled e-services via real-time methods of empowerment.

Credibly expedite seamless convergence with premier deliverables. Distinctively productize resource sucking processes vis-a-vis mission-critical benefits. Globally revolutionize wireless markets for alternative functionalities. Continually plagiarize premium web-readiness with holistic web services. Intrinsicly negotiate client-based relationships without compelling expertise.

Progressively integrate user friendly ROI without next-generation infomediaries. Efficiently deploy ubiquitous relationships after error-free methodologies. Distinctively restore collaborative users with B2C core competencies. Distinctively develop principle-centered benefits whereas long-term high-impact total linkage. Globally matrix effective data and premier synergy.

Dramatically simplify fully researched niche markets for market-driven markets. Professionally disintermediate progressive users without customized models. Competently utilize compelling imperatives rather than interoperable e-tailers. Monotonectally envisioneer open-source e-markets after seamless architectures. Collaboratively facilitate customized applications without installed base schemas.

Dynamically innovate goal-oriented best practices rather than clicks-and-mortar metrics. Synergistically customize state of the art human capital with enabled human capital. Proactively maintain long-term high-impact e-services before integrated processes. Appropriately architect quality customer service via market positioning best practices. Dynamically leverage other's client-centered platforms whereas prospective web-readiness.

Monotonectally embrace low-risk high-yield alignments before innovative.
''';
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.light,
        foregroundColor: AppColors.darkBackground,
        elevation: 0,
        title: Text(
          value.author!.toString(),
          style: GoogleFonts.spaceGrotesk(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    color: const Color(0xFF322653),
                    borderRadius: BorderRadius.circular(50)),
                child: Text(
                  value.author!,
                  style: GoogleFonts.spaceGrotesk(
                    color: const Color.fromARGB(255, 181, 175, 249),
                  ),
                ),
              ),

              SizedBox(
                height: 20.h,
              ),
              Text(
                value.title.toString(),
                style: GoogleFonts.spaceGrotesk(fontWeight: FontWeight.w900, fontSize: 18),
              ),

              SizedBox(
                height: 20.w,
              ),
              Row(
                children: [
                  Text(
                    DateFormat('MMMM d, y').format(value.publishedAt!),
                    // news[index].publishedAt!.toString(),
                    style: GoogleFonts.spaceGrotesk(fontSize: 16.sp),
                  ),
                  SizedBox(
                    width: 7.w,
                  ),
                  Text(
                    " 4 min read",
                    style: GoogleFonts.spaceGrotesk(fontSize: 16.sp),
                  ),
                ],
              ),
              // Image.asset(newsImage),

              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                width: double.infinity,
                height:
                    350.h, // Adjust the maximum height as per your preference
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                        20), // Adjust the radius as per your preference
                    child: Image.network(value.urlToImage!, fit: BoxFit.cover,)
                    // Image.asset(
                    //   newsImage,
                    //   fit: BoxFit.cover,
                    // ),
                    ),
              ),

              SizedBox(
                height: 20.w,
              ),
              Text(value.content != null ? value.content.toString() : text),
              SizedBox(
                width: 10.w,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Ionicons.heart_outline,
                    size: 30.sp,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Icon(
                    Ionicons.share_social_outline,
                    size: 30.sp,
                  ),
                ],
              ),
              SizedBox(
                height: 50.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
