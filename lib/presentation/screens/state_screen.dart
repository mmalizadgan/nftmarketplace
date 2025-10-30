import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nftmarketplace/core/constants/app_colors.dart';
import 'package:nftmarketplace/core/constants/app_icons.dart';
import 'package:nftmarketplace/core/constants/app_text_styles.dart';
import 'package:nftmarketplace/presentation/widget/bottom_nav_bar.dart';
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w),
        child: Column(
          children: [
            SizedBox(height: 18.92.h),

            /// 🔹 StatsTabBar داخل Expanded
            Expanded(child: StatsTabBar()),

            SizedBox(height: 27.03.h),

            /// 🔹 Row فیلترها
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _FilterButton(icon: Icons.window_outlined, text: "All categories"),
                _FilterButton(icon: Icons.link, text: "All Chains"),
              ],
            ),

            SizedBox(height: 18.h), // فاصله پایانی
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}

/// ویجت کوچک برای دکمه‌های فیلتر
class _FilterButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const _FilterButton({required this.icon, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 147.75.w,
      height: 39.72.h,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white.withOpacity(0.5),
          width: 0.9.w,
        ),
        borderRadius: BorderRadius.circular(27.03.r),
      ),
      child: Row(
        children: [
          SizedBox(width: 8.w),
          Icon(icon, color: Colors.white),
          SizedBox(width: 5.w),
          Text(text, style: AppTextStyles.regular13),
          SizedBox(width: 5.w),
          Transform.rotate(
            angle: 271 / 3.14,
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.grey,
              size: 14.41.r,
            ),
          ),
        ],
      ),
    );
  }
}
