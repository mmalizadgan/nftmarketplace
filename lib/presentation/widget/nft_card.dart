import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nftmarketplace/core/constants/app_assets.dart';
import 'package:nftmarketplace/core/constants/app_text_styles.dart';

Widget nftCard({required String imagePath, required String tittle}) {
  return Container(
    width: 157.66204833984375.w,
    height: 194.88796997070312.h,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(27.03),
      border: Border.all(color: Colors.white.withValues(alpha: 0.5)),
    ),

    child: Stack(
      children: [
        Padding(
          padding: EdgeInsetsGeometry.symmetric(
            horizontal: 9.01.w,
            vertical: 9.01.h,
          ),
          child: Container(
            width: 139.64352416992188.w,
            height: 139.64352416992188.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(19.82),
            ),
            clipBehavior: Clip.hardEdge,
            child: Image(image: AssetImage(imagePath), fit: BoxFit.cover),
          ),
        ),
        Positioned(
          left: 9.01.w,
          bottom: 18.02.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(tittle, style: AppTextStyles.semibold11),
              SizedBox(width: 21.44.w),
              Text("❤️200", style: AppTextStyles.regular9),
            ],
          ),
        ),
      ],
    ),
  );
}
