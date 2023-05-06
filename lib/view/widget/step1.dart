import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import 'package:tab_cash/view/widget/step1_form.dart';
import '../../utilites/asset/app_asset.dart';
import '../../utilites/strings/app_string.dart';
import '../../utilites/theme/app_theme.dart';

class Step1 extends StatefulWidget {
  const Step1({Key? key}) : super(key: key);

  @override
  State<Step1> createState() => _Step1State();
}

class _Step1State extends State<Step1> {
  bool isChecked = false;
  var formdkey = GlobalKey<FormState>();
  int currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10.0.sp, bottom: 10.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: AppString.tapCashString,
                            style: const TextStyle(
                                fontFamily: "Merriweather",
                                fontWeight: FontWeight.bold,
                                color: AppTheme.success900,
                                fontSize: 35),
                          ),
                        ],
                      ),
                    ),
                    Lottie.asset(AppAssets.splashAnimationAsset,
                        width: 70, height: 70),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Create an account to TapCash',
                style: TextStyle(fontSize: 13.sp, color: Colors.black),
              ),
              Text(
                'to get all features',
                style: TextStyle(fontSize: 13.sp, color: Colors.black),
              ),
             const  Step1Field(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(
                    height: 25,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Theme(
                            data: Theme.of(context).copyWith(
                              unselectedWidgetColor:AppTheme.success900,
                            ),
                            child: Checkbox(
                              value: isChecked,
                              onChanged: (value) {
                                setState(() => isChecked = value!);
                              },
                              activeColor: AppTheme.success900,
                              checkColor: AppTheme.success100,
                            ),
                          ),
                          Text(
                            'I Agree to TapCash',
                            style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff21162C),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              showModalBottomSheet(
                                  isDismissible: true,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30),
                                    ),
                                  ),
                                  context: context,
                                  builder: (context) {
                                    return Container(
                                      //alignment: Alignment.topLeft,
                                      color: AppTheme.success100,
                                      //decoration: ShapeDecoration.fromBoxDecoration(BorderRadius.circular(43)),
                                      height: 100.h,
                                      padding: const EdgeInsets.all(26),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            crossAxisAlignment:
                                            CrossAxisAlignment
                                                .start,
                                            children: [
                                              SizedBox(height: 5.h),
                                              Text('Terms Of Services',
                                                  style: TextStyle(
                                                      fontSize: 16.sp,
                                                      fontWeight:
                                                      FontWeight
                                                          .w600,
                                                      color: AppTheme.success900)),
                                              SizedBox(
                                                width: 27.w,
                                              ),
                                              const CircleAvatar(
                                                backgroundColor:
                                                AppTheme.success900,
                                                child: CloseButton(
                                                  color:
                                                  AppTheme.success100,
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 30,
                                          ),
                                          Text(
                                            "Please read our Terms of Service carefully below prior to using our marketplace and its services as it governs your use of our Marketplace.Your use of juant Marketplace is governed by these T&Cs. You should read them carefully before you use our Marketplace. It is your responsibility when using the Marketplace to provide accurate information.Any person accessing the Platform is subject to and agrees to the terms and conditions set out in this notice. If a person does not wish to be bound by these terms and conditions, this person is prohibited from accessing the site and this person may not display, use, download or copy or distribute content obtained on this Platform. By using this Platform, the User undertakes to abide by these terms and conditions.",
                                            style: TextStyle(
                                              fontSize: 11.sp,
                                              fontWeight:
                                              FontWeight.w300,
                                              color: AppTheme.success900,
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  });
                            },
                            child: Text(
                              'Terms & Conditions ',
                              style: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w600,
                                color: AppTheme.success900,

                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 1.h),
                  Container(
                      alignment: Alignment.bottomRight,
                      child: TextButton(
                        onPressed: () {
                          if (formdkey.currentState!.validate()) {
                            currentStep = 1;
                          }
                        },
                        child: Container(),
                      )),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'have already account.?  ',
                        style: TextStyle(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff21162C),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Sign in now',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: AppTheme.success800,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
