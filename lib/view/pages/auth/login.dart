import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import 'package:tab_cash/utilites/route/routes.dart';
import 'package:tab_cash/utilites/strings/app_string.dart';
import 'package:tab_cash/utilites/theme/app_theme.dart';
import 'package:tab_cash/view/widget/login_textfield.dart';

import '../../../utilites/asset/app_asset.dart';
import '../../../view_controller/cubits/login_cubit/login_cubit.dart';
import '../../../view_controller/cubits/login_cubit/login_state.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final GlobalKey<FormState> loginKey = GlobalKey<FormState>();
  String? token;

  // gettoken()async{
  //   SharedPreferences preferences = await SharedPreferences.getInstance();
  //   token= await preferences.getString('token');
  //   setState(() {
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    LogInCubit loginCubit = LogInCubit.get(context);
    // gettoken();
    // // flutterToast(msg:"omar${token}" , color: Colors.green);
    //
    // if(token!=null){
    //   // flutterToast(msg:"omar${token}" , color: Colors.green);
    //   Navigator.pushAndRemoveUntil(
    //     context,
    //     MaterialPageRoute(
    //         builder: (context) => NavBar()),
    //         (Route<dynamic> route) => false,);
    // }
    return BlocBuilder<LogInCubit, LogInState>(builder: (context, state) {
      return Scaffold(
          body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20.0.sp, bottom: 20.0.sp),
            child: Center(
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
          ),
          Container(
            margin: EdgeInsets.only(left: 10.sp),
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: AppString.loginString,
                    style: const TextStyle(
                        fontFamily: "Merriweather",
                        fontWeight: FontWeight.bold,
                        color: AppTheme.success900,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 15.0.sp),
          Container(
            margin: EdgeInsets.only(left: 10.sp, right: 10.sp),
            child: Form(
              key: loginKey,
              child: Column(
                children: [
                  LoginTextField(
                      login_password: loginCubit,
                      controller: emailcontroller,
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
                  SizedBox(height: 15.0.sp),
                  LoginTextField(
                      login_password: loginCubit,
                      controller: passwordcontroller,
                      icon: Icons.lock,
                      label: 'Password',
                      type: TextInputType.text,
                      validation: (value) {
                        if (value.isEmpty) {
                          return 'Please Enter Your Password';
                        }
                      }),
                  SizedBox(
                    height: 8.sp,
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: InkWell(
                      child:  Text(
                        AppString.forgetPasswordString,
                        style:const TextStyle(
                            color: AppTheme.success900,
                            fontFamily: "Merriweather",
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.forgetPasswordMailRoute);
                      },
                    ),
                  ),
                  SizedBox(height: 5.h),
                  InkWell(
                    child: Container(
                        decoration: BoxDecoration(
                            color: AppTheme.success100,
                            borderRadius: BorderRadius.circular(15.0),
                            border: Border.all(color: AppTheme.success900)),
                        margin: EdgeInsets.only(top: 15.sp),
                        width: MediaQuery.of(context).size.width / 1.2,
                        height: 42.sp,
                        // color: Colors.deepOrange,
                        child: Center(
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: AppString.signInString,
                                  style: const TextStyle(
                                      fontFamily: "Merriweather",
                                      fontWeight: FontWeight.bold,
                                      color: AppTheme.success900,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        )),
                    onTap: () {
                      if (loginKey.currentState!.validate()) {
                        loginCubit.postlogin(
                            email: emailcontroller.text,
                            password: passwordcontroller.text,
                            context: context);
                      }
                    },
                  ),
                  SizedBox(height: 15.0.sp),
                  Row(children: <Widget>[
                    const Expanded(child: Divider()),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: AppString.orString,
                            style: const TextStyle(
                                fontFamily: "Merriweather",
                                fontWeight: FontWeight.bold,
                                color: AppTheme.success900,
                                fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    const Expanded(child: Divider()),
                  ]),
                  SizedBox(height: 15.0.sp),
                  InkWell(
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: AppTheme.success900),
                        margin: EdgeInsets.only(top: 15.sp, bottom: 15.sp),
                        width: 260.sp,
                        height: 42.sp,
                        // color: Colors.deepOrange,
                        child: Center(
                          child:  Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: AppString.registerString,
                                  style: const TextStyle(
                                      fontFamily: "Merriweather",
                                      fontWeight: FontWeight.bold,
                                      color: AppTheme.success200,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        )),
                    onTap: () {
                      Navigator.pushNamed(
                          context, AppRoutes.registerScreenRoute);
                    },
                  ),
                  FloatingActionButton(onPressed: (){Navigator.pushNamed(
                      context, AppRoutes.navBarRoute);})

                ],
              ),
            ),
          ),
        ],
      ));
    });
  }
}
