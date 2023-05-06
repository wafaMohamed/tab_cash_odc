import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import '../../../../utilites/asset/app_asset.dart';
import '../../../../utilites/strings/app_string.dart';
import '../../../../utilites/theme/app_theme.dart';
import '../../../../view_controller/cubits/login_cubit/login_cubit.dart';
import '../../../../view_controller/cubits/login_cubit/login_state.dart';
import '../../../widget/login_textfield.dart';
import '../../../widget/main_button.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  var formdkeyChangePassSave = GlobalKey<FormState>();
  bool obscureNewPass = true;
  bool obscureConfirmPass = true;
  var newPassController = TextEditingController();
  var confirmPassController = TextEditingController();
  final TextEditingController changePasswordController =
      TextEditingController();
  final TextEditingController confirmChangePasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    LogInCubit loginCubit = LogInCubit.get(context);
    return BlocBuilder<LogInCubit, LogInState>(builder: (context, state) {
      return Scaffold(
        backgroundColor: const Color(0xffffffff),
        body: Form(
          key: formdkeyChangePassSave,
          child: Padding(
            padding: EdgeInsets.all(2.h),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 4.h,
                  ),
                  Text(
                    AppString.changesPasswordString,
                    style: TextStyle(
                      color: AppTheme.success400,
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Lottie.asset(AppAssets.cloudSecureAsset,
                      width: 300, height: 260),
                  Text(
                    'Please enter new password that are',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 14.sp,
                    ),
                  ),
                  Text(
                    'different form previously used',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 14.sp,
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  LoginTextField(
                      login_password: loginCubit,
                      controller: changePasswordController,
                      icon: Icons.lock,
                      label: 'Enter New Password',
                      type: TextInputType.text,
                      validation: (value) {
                        if (value.isEmpty) {
                          return 'Please Enter Your Password';
                        }
                      }),
                  SizedBox(
                    height: 3.h,
                  ),
                  LoginTextField(
                      login_password: loginCubit,
                      controller: confirmChangePasswordController,
                      icon: Icons.lock,
                      label: 'Confirm New Password',
                      type: TextInputType.text,
                      validation: (value) {
                        if (value.isEmpty) {
                          return 'Please Enter Your Password';
                        }
                      }),
                  SizedBox(
                    height: 2.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      /*     Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return login();
                        }));*/
                    },
                    child: Text(
                      AppString.changesPasswordString,
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: AppTheme.success900,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  CustomMainButton(
                    onpressed: () {
                      if (formdkeyChangePassSave.currentState!.validate()) {
                        setState(() {
                          /*Navigator.push(context, MaterialPageRoute(builder: (context){
                            return verifactionScreen();
                          },
                          ),
                          );*/
                        });
                      }
                    },
                    text: AppString.nextString,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
