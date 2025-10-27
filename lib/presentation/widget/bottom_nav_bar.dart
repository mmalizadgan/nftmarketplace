import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nftmarketplace/core/constants/app_colors.dart';
import 'package:nftmarketplace/core/constants/app_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topCenter,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(45.05.r),
            topRight: Radius.circular(45.05.r),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 72.07, sigmaY: 72.07),
            child: Container(
              width: double.infinity,
              height: 90.09.h,
              padding: EdgeInsets.symmetric(
                vertical: 12.61.h,
                horizontal: 19.82.w,
              ),
              decoration: BoxDecoration(
                color: AppColors.backgroundColor.withValues(alpha: 0.1),
              ),
              child: Padding(
                padding: EdgeInsets.only(bottom: 25.84.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 19.82.w),
                    AppIcons.home,
                    SizedBox(width: 28.29.w),
                    AppIcons.signal,
                    SizedBox(width: 95.77.w),
                    AppIcons.search,
                    SizedBox(width: 28.74.w),
                    AppIcons.profile,
                    SizedBox(width: 19.82.w),
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(bottom: 35.h, child: AppIcons.mintedButton),
      ],
    );
  }
}
