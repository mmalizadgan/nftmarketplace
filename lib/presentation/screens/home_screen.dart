import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nftmarketplace/core/constants/app_assets.dart';
import 'package:nftmarketplace/core/constants/app_colors.dart';
import 'package:nftmarketplace/core/constants/app_text_styles.dart';
import 'package:nftmarketplace/presentation/widget/frame_1.dart';
import 'package:nftmarketplace/presentation/widget/nft_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: Center(
          child: Text('NFT Marketplace', style: AppTextStyles.bold25),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  frame(
                    imagePath: AppAssets.virtualWorlds,
                    tittle: "virtualWorlds",
                  ),
                  SizedBox(width: 9.01.w),
                  frame(imagePath: AppAssets.art, tittle: "Art"),
                  SizedBox(width: 9.01.w),
                  frame(imagePath: AppAssets.music, tittle: "Music"),
                ],
              ),
            ),
            SizedBox(height: 27.03.h),
            Padding(
              padding: EdgeInsetsGeometry.only(left: 14.41.w, right: 170.w),
              child: Text(
                "Trending collections",
                style: AppTextStyles.semiBold18,
              ),
            ),
            SizedBox(height: 7.21.h),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  nftCard(imagePath: AppAssets.metaverse, tittle: "metaverse"),
                  SizedBox(width: 9.01.w),
                  nftCard(
                    imagePath: AppAssets.abstractArt,
                    tittle: "AbstractArt",
                  ),
                  SizedBox(width: 9.01.w),
                  nftCard(
                    imagePath: AppAssets.portraitArt,
                    tittle: "PortraitArt",
                  ),
                ],
              ),
            ),
            SizedBox(height: 27.3.h),
            Padding(
              padding: EdgeInsetsGeometry.only(left: 14.41.w, right: 257.66.w),
              child: Text("Top seller", style: AppTextStyles.semiBold18),
            ),
            SizedBox(height: 7.21.h,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  nftCard(imagePath: AppAssets.redWave, tittle: "Wave"),
                  SizedBox(width: 9.01.w),
                  nftCard(
                    imagePath: AppAssets.abstractPink,
                    tittle: "AbstractPink",
                  ),
                  SizedBox(width: 9.01.w),
                  nftCard(imagePath: AppAssets.blueWave, tittle: "Wave"),
                  SizedBox(width: 9.01.w),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
