import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nftmarketplace/core/constants/app_colors.dart';
import 'package:nftmarketplace/core/constants/app_icons.dart';
import 'package:nftmarketplace/core/constants/app_text_styles.dart';
import 'package:nftmarketplace/presentation/widget/state_widget/list_nft.dart';

import 'package:nftmarketplace/logic/nft_provider.dart';

Widget buildBackgroundEllipse({
  required double width,
  required double height,
  required double top,
  required double left,
  required Color color,
  required double blurSigma,
}) {
  return Positioned(
    top: top.h,
    left: left.w,
    child: SizedBox(
      width: width.w,
      height: height.h,
      child: ClipOval(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: blurSigma, sigmaY: blurSigma),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color.withValues(alpha: 0.8),
            ),
          ),
        ),
      ),
    ),
  );
}

class StatsTabBar extends ConsumerWidget {
  const StatsTabBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncNFTList = ref.watch(topNFTsProvider);

    return Stack(
      children: [
        buildBackgroundEllipse(
          width: 193.699.w,
          height: 193.699.h,
          top: 161.27.h,
          left: 90.09.w,
          color: AppColors.ellipseColor,
          blurSigma: 180.185,
        ),

        DefaultTabController(
          length: 2,
          child: Column(
            children: [
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
                unselectedLabelColor: Colors.white.withValues(alpha: 0.5),
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

              SizedBox(height: 27.93.h),

              Expanded(
                child: TabBarView(
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              OutlinedButton.icon(
                                onPressed: () {},
                                label: AppIcons.allCategorie,

                                style: OutlinedButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  fixedSize: Size(147.75.w, 39.72.h),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(27.3.r),
                                  ),
                                  side: BorderSide(
                                    color: Colors.white.withValues(alpha: 0.5),
                                    width: 0.9.w,
                                  ),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 15.34.w,
                                    vertical: 10.81.h,
                                  ),
                                ),
                              ),
                              SizedBox(width: 9.1.w),
                              OutlinedButton.icon(
                                onPressed: () {},
                                label: AppIcons.allChains,

                                style: OutlinedButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  fixedSize: Size(147.75.w, 39.72.h),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(27.3.r),
                                  ),
                                  side: BorderSide(
                                    color: Colors.white.withValues(alpha: 0.5),
                                    width: 0.9.w,
                                  ),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 15.34.w,
                                    vertical: 10.81.h,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 20.h),

                          asyncNFTList.when(
                            error: (error, stackTrace) => Center(
                              child: Text(
                                'Error loading NFTs: ${error.toString()}',
                                style: AppTextStyles.semibold15.copyWith(
                                  color: Colors.red,
                                ),
                              ),
                            ),

                            loading: () => Center(
                              child: CircularProgressIndicator(
                                color: AppColors.indicatorColor,
                              ),
                            ),

                            data: (nftList) {
                              return ClipRRect(
                                borderRadius: BorderRadius.circular(18.r),
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                    sigmaX: 54.06,
                                    sigmaY: 54.06,
                                  ),
                                  child: Container(
                                    width: double.infinity,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 14.w,
                                      vertical: 8.h,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white.withValues(alpha: .1),
                                      borderRadius: BorderRadius.circular(18.r),
                                      border: Border.all(
                                        color: Colors.white.withValues(
                                          alpha: 0.5,
                                        ),
                                        width: 1.35.w,
                                      ),
                                    ),
                                    child: Column(
                                      children: [
                                        ...nftList.map((nft) {
                                          return Column(
                                            children: [
                                              ListNFT(
                                                rank: nft.rank,
                                                name: nft.name,
                                                nftPicture: nft.nftPicture,
                                                nftPrice: nft.nftPrice,
                                                nftGrowth: nft.nftGrowth,
                                              ),
                                            ],
                                          );
                                        }).toList(),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),

                    Center(
                      child: Text(
                        "Activity Content",
                        style: AppTextStyles.semibold15.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
