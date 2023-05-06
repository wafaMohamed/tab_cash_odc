import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import 'package:tab_cash/utilites/theme/app_theme.dart';
import '../../utilites/asset/app_asset.dart';
import '../../utilites/route/routes.dart';

class HomeWalletWidget extends StatefulWidget {
  const HomeWalletWidget({Key? key}) : super(key: key);

  @override
  State<HomeWalletWidget> createState() => _HomeWalletWidgetState();
}

class _HomeWalletWidgetState extends State<HomeWalletWidget> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(12),
      decoration: const BoxDecoration(color: AppTheme.success100),
      child: Column(children: [
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Hello , wafa",
                      style: TextStyle(
                          fontFamily: "Merriweather",
                          fontWeight: FontWeight.w700,
                          color: AppTheme.neutral900,
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            Lottie.asset(AppAssets.handAsset, width: 60, height: 35),
            SizedBox(width: 25.w),
            FloatingActionButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.childRoute);
                },
                mini: true,
                backgroundColor: AppTheme.success900,
                child: const Icon(Icons.child_care_outlined)),
          ],
        ),
        SizedBox(
          height: 2.h,
        ),
        Row(),
        SizedBox(
          height: 1.h,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 140,
          decoration: BoxDecoration(
              color: AppTheme.success900,
              borderRadius: BorderRadius.circular(24)),
          child: Row(children: [
            Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 3.h),
                    const Align(
                      alignment: Alignment(-0.70, 0.25),
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "Balance",
                              style: TextStyle(
                                  fontFamily: "Merriweather",
                                  fontWeight: FontWeight.w700,
                                  color: AppTheme.success100,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    const Align(
                      alignment: Alignment(-0.70, 0.25),
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: r"$52.50",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: AppTheme.success100,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
            Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 3.h),
                    const Align(
                      alignment: Alignment(0, 0.25),
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "Card Number",
                              style: TextStyle(
                                  fontFamily: "Merriweather",
                                  fontWeight: FontWeight.w700,
                                  color: AppTheme.success100,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    const Align(
                      alignment: Alignment(0, 0.25),
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "XXX XXX XXXX ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: AppTheme.success100,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          ]),
        ),
        SizedBox(
          height: 1.h,
        ),
         Padding(
          padding: const EdgeInsets.only(left: 9),
          child: Align(
            alignment: Alignment.centerLeft,
            child: InkWell(
              onTap:(){
                Navigator.pushNamed(context, AppRoutes.creditCardRoute);
              } ,
              child: const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      
                      text: "Recharge",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: AppTheme.success900,
                          fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),

      ]),
    );
  }
}
