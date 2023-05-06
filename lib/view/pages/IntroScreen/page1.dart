import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import '../../../utilites/asset/app_asset.dart';
import '../../../utilites/strings/app_string.dart';
import '../../../utilites/theme/app_theme.dart';
import '../../widget/custom_text.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(children: [
        SizedBox(
          height: 2,
        ),
        Lottie.asset(
          AppAssets.creditCardAnimationAsset,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 95),
          child: CustomText(
            maxLines: 2,
            style: TextStyle(
                color: AppTheme.success900,
                fontSize: 18.sp,
                fontWeight: FontWeight.w800),
            text: AppString.titleOnBoarding1String,
            fontFamily: 'Merriweather',
            onpressed: () {},
          ),
        ),
        CustomText(
          maxLines: 7,
          style: TextStyle(
              color: AppTheme.success900,
              fontSize: 11.sp,
              fontWeight: FontWeight.w400),
          text: AppString.subTitleOnBoarding1Strin,
          fontFamily: 'Merriweather',
          onpressed: () {},
        ),
      ]),
    );
  }
}
