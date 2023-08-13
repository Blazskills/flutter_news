import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:toistify/core/res/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.light,
      foregroundColor: AppColors.darkBackground,
      elevation: 0,
      leading: InkWell(
        onTap: () => GoRouter.of(context).pushReplacement('/'),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Ionicons.chevron_back_outline,
              size: 25.sp,
            ),
            Text(
              'Back',
              style: TextStyle(fontSize: 17.sp),
            ),
          ],
        ),
      ),
    );
  }
}
