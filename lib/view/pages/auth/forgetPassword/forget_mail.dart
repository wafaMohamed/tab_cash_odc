import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import 'package:tab_cash/utilites/route/routes.dart';
import 'package:tab_cash/utilites/strings/app_string.dart';
import '../../../../utilites/asset/app_asset.dart';
import '../../../../utilites/theme/app_theme.dart';
import '../../../../view_controller/cubits/login_cubit/login_cubit.dart';
import '../../../../view_controller/cubits/login_cubit/login_state.dart';
import '../../../widget/login_textfield.dart';
import '../../../widget/main_button.dart';

class ForgetPasswordMail extends StatefulWidget {
  const ForgetPasswordMail({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordMail> createState() => _ForgetPasswordMailState();
}

class _ForgetPasswordMailState extends State<ForgetPasswordMail> {
  var forgetEmailController = TextEditingController();
  var formdkeyforgetpass = GlobalKey<FormState>();
  String? token;

  @override
  Widget build(BuildContext context) {
    LogInCubit loginCubit = LogInCubit.get(context);
    return BlocBuilder<LogInCubit, LogInState>(builder: (context, state) {
      return Scaffold(
          backgroundColor: const Color(0xffffffff),
          body: Form(
            key: formdkeyforgetpass,
            child: Padding(
              padding: EdgeInsets.all(3.h),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),

                    Text(
                      AppString.forgetPasswordString,
                      style: TextStyle(
                        color: AppTheme.success400,
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Lottie.asset(
                      AppAssets.cyberSecurityAsset,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text.rich(TextSpan(
                          style: TextStyle(
                              fontFamily: 'Merriweather',
                              color: AppTheme.neutral900,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400),
                          text: AppString.descForgetPassString,
                        )),
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    LoginTextField(
                        login_password: loginCubit,
                        controller: forgetEmailController,
                        icon: Icons.email,
                        label: 'E-mail',
                        type: TextInputType.emailAddress,
                        validation: (value) {
                          if (value.isEmpty) {
                            return 'Please Enter Your Email';
                          } else if (!RegExp(
                                  "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9+_.-]+.[com]")
                              .hasMatch(value)) {
                            return 'Please Enter Valid as example@gmail.com';
                          }
                        }),
                    SizedBox(
                      height: 13.h,
                    ),
                    CustomMainButton(
                      onpressed: () {
                        if (formdkeyforgetpass.currentState!.validate()) {
                          setState(() {
                            Navigator.pushNamed(
                                context, AppRoutes.verificationScreenRoute);
                          });
                        }
                      },
                      text: AppString.nextString,
                    )
                  ],
                ),
              ),
            ),
          ));
    });
  }
}
