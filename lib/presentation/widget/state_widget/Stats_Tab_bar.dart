import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nftmarketplace/core/constants/app_colors.dart';
import 'package:nftmarketplace/core/constants/app_text_styles.dart';

class StatsTabBar extends StatelessWidget {
  const StatsTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // تعداد تب‌ها
      child: Column(
        children: [
          TabBar(
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(
                width: 3.6.r,
                color: AppColors.indicatorColor,
              ),
              insets: EdgeInsets.symmetric(
                horizontal: 30,
              ), 
              borderRadius: BorderRadius.circular(10)
            ),
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white.withValues(alpha: 0.5),
            labelStyle: AppTextStyles.semibold15,
            unselectedLabelStyle: AppTextStyles.semibold15,
              
            tabs: [
              Padding(
                padding:  EdgeInsets.only(bottom: 13.51.h),
                child: Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.bar_chart_rounded),
                      SizedBox(width: 1.w),
                      Text("Ranking"),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(bottom: 13.51.h),
                child: Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.show_chart_rounded),
                      SizedBox(width: 3.w),
                      Text("Activity"),
                    ],
                  ),
                ),
              ),
            ],
          ),
          // محتوا برای هر تب
          // TabBarView(
          //   children: [
          //     Center(child: Text("Ranking Content")),
          //     Center(child: Text("Activity Content")),
          //   ],
          // ),
        ],
      ),
    );
  }
}
