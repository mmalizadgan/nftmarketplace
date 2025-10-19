import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 99.1.h,
            left: -752.8.w,
            child: Image.asset(
              'assets/images/bg.jpg',
              width: 1428.8824462890625.w,
              height: 1085.61572265625.h,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            width: 299.107421875.w,
            height: 86.4888916015625.h,
            top: 80.18.h,
            left: 26.13.w,
            child: Text(
              'Welcome to\nNFT Marketplace',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 35.sp),
            ),
          ),
        ],
      ),
    );
  }
}
