import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import '../../../utilites/asset/app_asset.dart';
import '../../../utilites/strings/app_string.dart';
import '../../../utilites/theme/app_theme.dart';
import '../../../view_controller/cubits/register_cubit/register_cubit.dart';
import '../../../view_controller/cubits/register_cubit/register_state.dart';
import '../../widget/defaultTextField.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
            body: ListView(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10.0.sp,bottom: 10.sp),
                  child:  Row(
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
                Container(
                  margin: EdgeInsets.only(left: 10.sp),
                  child:Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: AppString.registerString,
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
                              }else if(passwordcontroller.text != confirmpassword.text){
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
                        Row(children: [
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
                          SizedBox(width: 5.w,),
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
                        ],),
                        SizedBox(height: 15.sp),
                        Container(
                          decoration: BoxDecoration(
                              boxShadow: const [BoxShadow(color: AppTheme.success900,blurRadius: 1)],
                              borderRadius: BorderRadius.circular(15.0),
                              color: AppTheme.backgroundOnBoarding),
                          margin: const EdgeInsets.only(top: 5.0, bottom: 10.0),
                          child: ListTile(
                            title: const Text(
                              'Gender',
                              style: TextStyle(
                                  color:AppTheme.success900,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              gender,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            trailing: PopupMenuButton(
                              color: AppTheme.success100,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0)),
                              icon: const Icon(
                                Icons.arrow_downward,
                                color: AppTheme.success900,
                                size: 20.0,
                              ),
                              itemBuilder: (BuildContext context) {
                                return <PopupMenuEntry<String>>[
                                  const PopupMenuItem(
                                    value: 'male',
                                    child: Text(
                                      'Male',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  const PopupMenuItem(
                                    value: 'female',
                                    child: Text(
                                      'Female',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ];
                              },
                              onSelected: (value) {
                                gender = value;
                                registerCubit.changeGender(value);
                                // if (value == 'Male')
                                //   registerCubit.changeGender('m');
                                // else
                                //   registerCubit.changeGender('f');
                              },
                            ),
                          ),
                        ),
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
                            onTap: () { if (registerKey.currentState!.validate()) {
                              registerCubit.postRegister(
                                  name: namecontroller.text,
                                  email: emailcontroller.text,
                                  password: passwordcontroller.text,
                                  phoneNumber: number.text,
                                  context: context,
                                  gender: registerCubit.gender == 'male' ? 'm' : 'f');
                            }}
                        ),
                        SizedBox(height:1.h),
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
                        SizedBox(height: 1.h),
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
                              )),
                          onTap: () {
                            Navigator.pop(context);

                          },
                        ),
                        SizedBox(height:3.h),

                      ],
                    ),
                  ),
                ),
              ],
            )),
      );
    });
  }
}


