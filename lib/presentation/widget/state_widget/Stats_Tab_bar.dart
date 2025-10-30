import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nftmarketplace/core/constants/app_colors.dart';
import 'package:nftmarketplace/core/constants/app_text_styles.dart';
import 'package:nftmarketplace/presentation/widget/state_widget/list_nft.dart';

class StatsTabBar extends StatelessWidget {
  const StatsTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // تعداد تب‌ها
      child: Column(
        children: [
          /// 🔹 TabBar
          TabBar(
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(
                width: 3.6.r,
                color: AppColors.indicatorColor,
              ),
              insets: EdgeInsets.symmetric(horizontal: 30),
              borderRadius: BorderRadius.circular(10),
            ),
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white.withOpacity(0.5),
            labelStyle: AppTextStyles.semibold15,
            unselectedLabelStyle: AppTextStyles.semibold15,
            tabs: [
              Padding(
                padding: EdgeInsets.only(bottom: 13.51.h),
                child: Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.bar_chart_rounded),
                      SizedBox(width: 4.w),
                      Text("Ranking"),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 13.51.h),
                child: Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.show_chart_rounded),
                      SizedBox(width: 4.w),
                      Text("Activity"),
                    ],
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 10.h),

          /// 🔹 TabBarView
          Expanded(
            child: TabBarView(
              children: [
                /// 🟣 تب Ranking با لیست NFT
                SingleChildScrollView(
                  padding: EdgeInsets.only(top: 10.h),
                  child: Column(
                    children: [
                      ListNFT(
                        rank: 1,
                        name: "Azumi",
                        nftPicture: "assets/images/RedWave.jpg",
                        nftPrice: 20055.02,
                        nftGrowth: 3.99,
                      ),
                      ListNFT(
                        rank: 2,
                        name: "Hape Prime",
                        nftPicture: "assets/images/BlueWave.jpg",
                        nftPrice: 18055.45,
                        nftGrowth: 33.79,
                      ),
                      ListNFT(
                        rank: 3,
                        name: "Cryoto",
                        nftPicture: "assets/images/PurpleWave.jpg",
                        nftPrice: 90055.62,
                        nftGrowth: -6.56,
                      ),
                      // می‌تونی NFT های بیشتر اضافه کنی
                    ],
                  ),
                ),

                /// 🟢 تب Activity
                Center(
                  child: Text(
                    "Activity Content",
                    style: AppTextStyles.semibold15.copyWith(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
