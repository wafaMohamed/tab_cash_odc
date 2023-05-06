import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tab_cash/view/pages/IntroScreen/page1.dart';
import 'package:tab_cash/view/pages/IntroScreen/page2.dart';
import 'package:tab_cash/view/pages/IntroScreen/page3.dart';
import '../../../utilites/route/routes.dart';
import '../../../utilites/strings/app_string.dart';
import '../../../utilites/theme/app_theme.dart';
import '../../widget/main_button.dart';



class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController controller = PageController();
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:AppTheme.backgroundOnBoarding0,
        body: Column(
          children: [
            Expanded(
                child: Stack(
              children: [
                PageView(
                  controller: controller,

                  onPageChanged: (value){

                    setState(() {
                      currentIndex=value;
                    });
                  },
                  children: const [
                    Page1(),
                    Page2(),
                    Page3(),
                  ],
                ),
                  Container(
                  alignment: const Alignment(0, 0.95),
                  child: SmoothPageIndicator(
                    onDotClicked:(index) {
                    },
                    effect:  const WormEffect(
                      dotHeight:10,
                      dotWidth: 25,
                      spacing: 3,
                      dotColor: AppTheme.success300,
                      activeDotColor: AppTheme.success900,
                    ),

                    controller: controller,

                    count: 3,
                  ),
                ),
              ],
            )),
            CustomMainButton(
                onpressed: () {
                  if(currentIndex==2){
                    Navigator.of(context).pushNamedAndRemoveUntil(AppRoutes.loginRoute, (route) => false);
                  }else {
                    controller.nextPage(duration: const Duration(microseconds: 100), curve: Curves.linear);
                  }
                },
              text:currentIndex!=2? AppString.nextString:AppString.getStartedString,

            ),
            SizedBox(height: 6.h,),
          ],
        ),
      ),
    );
  }
}
