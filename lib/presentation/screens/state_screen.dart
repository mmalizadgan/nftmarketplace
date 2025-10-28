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
        title: Text("Stats", style: AppTextStyles.semiBold18),
        backgroundColor: AppColors.backgroundColor,
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: true,
        actions: [
          SizedBox(
            width: 18.02.w, 
            height: 18.02.h,
            child: AppIcons.moreButton,
          ),
          SizedBox(width: 14.41.w), 
        ],
        
      ),
      body: Column(children: [
        SizedBox(height: 18.92.h,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppIcons.ranking,
            SizedBox(width: 24.33.w,),
            AppIcons.activity,
          ],
        )



      ],),
    );
  }
}
