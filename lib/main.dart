import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nftmarketplace/presentation/screens/home_screen.dart';
import 'package:nftmarketplace/presentation/screens/onboarding_screen.dart';
import 'package:nftmarketplace/presentation/widget/bottom_nav_bar.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(378.39, 787.41),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(fontFamily: 'SFProDisplay'),
          debugShowCheckedModeBanner: false,
          home: child,
        );
      },
      child: OnboardingScreen(),
    );
  }
}
