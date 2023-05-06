import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import '../../../utilites/asset/app_asset.dart';
import '../../../utilites/strings/app_string.dart';
import '../../../utilites/theme/app_theme.dart';
import '../../widget/custom_text.dart';


class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(children: [
        const SizedBox(
          height: 2,
        ),
        Lottie.asset(
          AppAssets.parentingAsset,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 155),
          child: CustomText(
            maxLines: 2,
            style: TextStyle(
                color: AppTheme.success900,
                fontSize: 18.sp,
                fontWeight: FontWeight.w800),
            text: AppString.titleOnBoarding2String,
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
