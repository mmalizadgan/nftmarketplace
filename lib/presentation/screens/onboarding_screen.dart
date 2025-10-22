import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nftmarketplace/core/constants/app_assets.dart';
import 'package:nftmarketplace/core/constants/app_text_styles.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.background),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            SafeArea(
              child: Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 26.w),
                child: Column(
                  children: [
                    SizedBox(height: 80.18.h),
                    Text(
                      "Welcome to NFT\nMarketplace",
                      style: AppTextStyles.tittle,
                    ),
                    SizedBox(height: 331.54.h),
                    ClipRRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 27.3, sigmaY: 27.3),
                        child: Container(
                          width: 306.31.w,
                          height: 191.02.h,
                          decoration: BoxDecoration(
                            color: Colors.white.withValues(alpha: 0.01),
                            borderRadius: BorderRadius.circular(27.3),
                            border: Border.all(
                              color: Colors.white.withValues(alpha: 0.1),
                              width: 1.5,
                            ),
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 27.3.h),
                              Text(
                                "Explore and Mint NFTs",
                                style: AppTextStyles.medium19,
                              ),
                              SizedBox(height: 5.41.h),
                              Text(
                                "You can buy and sell the NFTs of the best artists in the world.",
                                style: AppTextStyles.regular11,
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 27.h),
                              ClipRRect(
                                borderRadius: BorderRadiusGeometry.circular(
                                  33.54.r,
                                ),
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                    sigmaX: 67.8,
                                    sigmaY: 67.8,
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(
                                        0xFF97A9F6,
                                      ).withValues(alpha: 0.5),
                                      borderRadius: BorderRadius.circular(
                                        33.54.r,
                                      ),
                                      border: Border.all(
                                        color: Colors.white.withValues(
                                          alpha: 0.5,
                                        ),
                                        width: 1.12.w,
                                      ),
                                    ),
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.transparent,
                                        shadowColor: Colors.transparent,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 24.w,
                                          vertical: 14.h,
                                        ),
                                        child: Text(
                                          "Get started now",
                                          style: AppTextStyles.semibold15,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
