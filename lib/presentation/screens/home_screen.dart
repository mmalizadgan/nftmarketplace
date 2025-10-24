import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nftmarketplace/core/constants/app_assets.dart';
import 'package:nftmarketplace/core/constants/app_colors.dart';
import 'package:nftmarketplace/core/constants/app_text_styles.dart';
import 'package:nftmarketplace/presentation/widget/frame_1.dart';

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
      body: Column(
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
        ],
      ),
    );
  }
}
