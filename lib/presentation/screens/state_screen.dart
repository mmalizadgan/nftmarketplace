import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nftmarketplace/core/constants/app_colors.dart';
import 'package:nftmarketplace/core/constants/app_icons.dart';
import 'package:nftmarketplace/core/constants/app_text_styles.dart';
import 'package:nftmarketplace/presentation/widget/state_widget/Stats_Tab_bar.dart';

class StateScreen extends StatelessWidget {
  const StateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: Text("Stats", style: AppTextStyles.semiBold18),
        backgroundColor: AppColors.backgroundColor,
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: true,
        actions: [
          SizedBox(width: 18.02.w, height: 18.02.h, child: AppIcons.moreButton),
          SizedBox(width: 14.41.w),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 18.92.h),
          StatsTabBar(),
          SizedBox(height: 27.03.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 147.75184631347656.w,
                height: 39.72129821777344.h,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white.withValues(alpha: 0.5),
                    width: 0.9.w,
                  ),
                  borderRadius: BorderRadius.circular(27.03.r),
                ),
                child: Row(
                  children: [
                    Icon(Icons.window_outlined, color: Colors.white),
                    Text("All categories", style: AppTextStyles.regular13),
                    // Icon(Icons, color: Colors.white),
                  ],
                ),
              ),
              Container(
                width: 147.75184631347656.w,
                height: 39.72129821777344.h,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white.withValues(alpha: 0.5),
                    width: 0.9.w,
                  ),
                  borderRadius: BorderRadius.circular(27.03.r),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
