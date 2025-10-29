import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nftmarketplace/core/constants/app_text_styles.dart';

Widget frame({required String imagePath, required String tittle}) {
  return Container(
    width: 252.25926208496094.w,
    height: 167.5722198486328.h,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(27.03)),
    clipBehavior: Clip.hardEdge,
    child: Stack(
      children: [
        Image.asset(
          imagePath,
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        Positioned(
          bottom: 9.14.h,
          left: 0.w,
          right: 0.h,
          child: Center(child: Text(tittle, style: AppTextStyles.medium19)),
        ),
      ],
    ),
  );
}
