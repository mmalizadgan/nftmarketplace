import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nftmarketplace/core/constants/app_colors.dart';

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
            image: AssetImage('assets/images/background.jpg'),
            fit: BoxFit.cover,
          // تنظیم موقعیت عکس
          ),
        ),
        child: Stack(
          children: [
            // لایه 1: گرادیانت اول (139.87deg)
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      AppColors.gradientStart.withOpacity(0.5),
                      AppColors.gradientEnd.withOpacity(0.5),
                    ],
                  ),
                ),
              ),
            ),
            
            // لایه 2: گرادیانت دوم (180deg)
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      AppColors.gradient180Start.withOpacity(0.20),
                      AppColors.gradient180End.withOpacity(0.20),
                    ],
                  ),
                ),
              ),
            ),
            
            // لایه 3: سفید شفاف
            Positioned.fill(
              child: Container(
                color: AppColors.whiteOverlay.withOpacity(0.2),
              ),
            ),
            
            // // محتوا
            // SafeArea(
             
         
                    
                  
                  
           
            // ),
          ],
        ),
      ),
    );
  }
}