import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import 'package:tab_cash/utilites/asset/app_asset.dart';
import 'package:tab_cash/utilites/strings/app_string.dart';
import 'package:tab_cash/utilites/theme/app_theme.dart';

import 'IntroScreen/onboarding_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const OnBoardingScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppTheme.success100,
        body: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Text(AppString.tapCashString,
                style: const TextStyle(
                  color: AppTheme.success800,
                  fontFamily: 'Merriweather',
                  fontSize: 50,
                  fontWeight: FontWeight.w500,
                )),
            SizedBox(
              height: 5.h,
            ),
            Center(
              child: Lottie.asset(AppAssets.splashAnimationAsset),
            ),
          ],
        ),
      ),
    );
  }
}
