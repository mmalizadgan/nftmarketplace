import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nftmarketplace/core/constants/app_colors.dart';
import 'package:nftmarketplace/core/constants/app_icons.dart';
import 'package:nftmarketplace/core/constants/app_text_styles.dart';

class StateScreen extends StatelessWidget {
  const StateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: Center(child: Text("Stats", style: AppTextStyles.semiBold18)),
        backgroundColor: AppColors.backgroundColor,
        automaticallyImplyLeading: false,
        elevation: 0,
        leading: Positioned(
          top: 49.55.h,
          left: 315.32.w,
          right: 114.41.w,
          child: SizedBox(
            width: 21.62.w,
            height: 21.62.h,
            child: AppIcons.moreButton,
          ),
        ),
      ),
    );
  }
}
