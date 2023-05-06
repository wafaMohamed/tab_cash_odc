import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import 'package:tab_cash/view_controller/cubits/register_cubit/register_cubit.dart';
import '../../utilites/asset/app_asset.dart';
import '../../utilites/theme/app_theme.dart';
import '../../view_controller/cubits/register_cubit/register_state.dart';
import '../widget/child_checkbox.dart';
import '../widget/defaultTextField.dart';

class ChildScreen extends StatefulWidget {
  const ChildScreen({Key? key}) : super(key: key);

  @override
  State<ChildScreen> createState() => _ChildScreenState();
}

class _ChildScreenState extends State<ChildScreen> {
  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final TextEditingController confirmpassword = TextEditingController();
  final TextEditingController number = TextEditingController();
  final TextEditingController nationalId = TextEditingController();
  final TextEditingController ageId = TextEditingController();
  final TextEditingController cityId = TextEditingController();
  final GlobalKey<FormState> registerKey = GlobalKey<FormState>();
  String gender = 'None';
  int currentStep = 0;
  var formdkey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    RegisterCubit registerCubit = RegisterCubit.get(context);
    return BlocBuilder<RegisterCubit, RegisterState>(builder: (context, state) {
      return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: AppTheme.success100,
              leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: AppTheme.neutral900,
                  )),
              title: Center(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "Child Account",
                        style: TextStyle(
                            fontFamily: "Merriweather",
                            fontWeight: FontWeight.bold,
                            color: AppTheme.success900,
                            fontSize: 17.sp),
                      ),
                    ],
                  ),
                ),
              ),
              actions: [
                Lottie.asset(AppAssets.childAsset, width: 70, height: 70),
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 2.h),
                  Container(
                    margin: EdgeInsets.only(left: 10.sp, right: 10.sp),
                    child: Form(
                      key: registerKey,
                      child: Column(
                        children: [
                          DefaultTextField(
                              controller: namecontroller,
                              register_password: registerCubit,
                              icon: Icons.drive_file_rename_outline_rounded,
                              label: 'Name',
                              type: TextInputType.emailAddress,
                              validation: (value) {
                                if (value.isEmpty) {
                                  return 'Please Enter Your Name';
                                }
                              }),
                          SizedBox(height: 15.0.sp),
                          DefaultTextField(
                              controller: emailcontroller,
                              register_password: registerCubit,
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
                          DefaultTextField(
                              controller: passwordcontroller,
                              register_password: registerCubit,
                              icon: Icons.lock,
                              label: 'Password',
                              type: TextInputType.text,
                              validation: (value) {
                                if (value.isEmpty) {
                                  return 'Please Enter Your Password';
                                }
                              }),
                          SizedBox(height: 15.0.sp),
                          DefaultTextField(
                              controller: confirmpassword,
                              register_password: registerCubit,
                              icon: Icons.lock,
                              label: 'Confirm Password',
                              type: TextInputType.text,
                              validation: (value) {
                                if (value.isEmpty) {
                                  return 'Please Enter Your Password';
                                } else if (passwordcontroller.text !=
                                    confirmpassword.text) {
                                  return 'Please Enter Your confirm password again';
                                }
                              }),
                          SizedBox(height: 15.0.sp),
                          DefaultTextField(
                              controller: number,
                              register_password: registerCubit,
                              icon: Icons.phone,
                              label: 'Number',
                              type: TextInputType.number,
                              validation: (value) {
                                if (value.isEmpty) {
                                  return 'Please Enter Your Phone Number';
                                } else if (value.length != 11) {
                                  return "Phone Number Must be 11 Number";
                                }
                              }),
                          SizedBox(height: 15.0.sp),
                          DefaultTextField(
                              controller: nationalId,
                              register_password: registerCubit,
                              icon: Icons.credit_card_sharp,
                              label: 'National ID',
                              type: TextInputType.number,
                              validation: (value) {
                                if (value.isEmpty) {
                                  return 'Please Enter Your National ID';
                                } else if (value.length != 11) {
                                  return "National ID Must be 11 Number";
                                }
                              }),
                          SizedBox(height: 15.0.sp),
                          Row(
                            children: [
                              Container(
                                // height: 150,
                                width: 165,
                                child: DefaultTextField(
                                    controller: ageId,
                                    register_password: registerCubit,
                                    icon: Icons.cake,
                                    label: 'Age',
                                    type: TextInputType.text,
                                    validation: (value) {
                                      if (value.isEmpty) {
                                        return 'Please Enter Age';
                                      } else if (value.length != 11) {
                                        return "Age Must be 2 Number";
                                      }
                                    }),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Container(
                                // height: 150,
                                width: 165,
                                child: DefaultTextField(
                                    controller: cityId,
                                    register_password: registerCubit,
                                    icon: Icons.location_city,
                                    label: 'City',
                                    type: TextInputType.text,
                                    validation: (value) {
                                      if (value.isEmpty) {
                                        return 'Please Enter City';
                                      }
                                    }),
                              ),
                            ],
                          ),
                          SizedBox(height: 15.0.sp),
                          ChekBox(),
                          InkWell(
                              child: Container(
                                  decoration: BoxDecoration(
                                      boxShadow: const [
                                        BoxShadow(
                                            color: AppTheme.success900,
                                            spreadRadius: 1)
                                      ],
                                      borderRadius: BorderRadius.circular(15.0),
                                      color: AppTheme.success100),
                                  margin: EdgeInsets.only(
                                      top: 15.sp, bottom: 15.sp),
                                  width: 260.sp,
                                  height: 42.sp,
                                  // color: Colors.deepOrange,
                                  child: const Center(
                                    child: Text.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "Create Acounte",
                                            style: TextStyle(
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
                                if (registerKey.currentState!.validate()) {
                                  registerCubit.postRegister(
                                      name: namecontroller.text,
                                      email: emailcontroller.text,
                                      password: passwordcontroller.text,
                                      phoneNumber: number.text,
                                      context: context,
                                      gender: registerCubit.gender == 'male'
                                          ? 'm'
                                          : 'f');
                                }
                              }),
                          SizedBox(height: 1.h),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )),
      );
    });
  }
}
