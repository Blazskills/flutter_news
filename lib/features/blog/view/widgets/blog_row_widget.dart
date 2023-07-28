import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

Widget reuseableRow(String text1, String text2, double font) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        text1,
        style: GoogleFonts.spaceGrotesk(
            fontSize: font.sp, fontWeight: FontWeight.bold),
      ),
      Text(text2),
    ],
  );
}
