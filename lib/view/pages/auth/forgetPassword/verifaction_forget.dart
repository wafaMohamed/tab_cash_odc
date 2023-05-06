
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import 'package:tab_cash/utilites/route/routes.dart';
import 'package:tab_cash/utilites/theme/app_theme.dart';
import '../../../../utilites/asset/app_asset.dart';
import '../../../../utilites/strings/app_string.dart';
import '../../../widget/main_button.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {

  var verifactionController = TextEditingController();
  var formdkeyverifaction = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Form(
        key: formdkeyverifaction,
        child: Padding(
          padding:  EdgeInsets.all(3.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Verifaction',
                  style: TextStyle(
                    color: AppTheme.success400,
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
            Lottie.asset(AppAssets.emailGreenAsset,width: 300,height: 260),
                Text('Please enter verifaction code we ',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14.sp,
                  ),
                ),
                Text('we just sent to you ',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14.sp,
                  ),
                ),
                SizedBox(height: 5.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      ' Enter verifaction Code ',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 4.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 9.h,
                      width: 20.w,
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'not valid';
                          }
                          return null;
                        },
                        onChanged: (value){
                          if (value.length==1){
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        onSaved: (pin1){},
                        decoration: const InputDecoration(hintText: "0"),
                        style: Theme.of(context).textTheme.headline6,
                        cursorColor:AppTheme.success400,
                        keyboardType: TextInputType.phone,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,

                        ],

                      ),
                    ),
                    SizedBox(
                      height: 9.h,
                      width: 20.w,
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'not valid';
                          }
                          return null;
                        },
                        onChanged: (value){
                          if (value.length==1){
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        onSaved: (pin2){},
                        decoration: const InputDecoration(hintText: "0"),
                        style: Theme.of(context).textTheme.headline6,
                        cursorColor:AppTheme.success400,
                        keyboardType: TextInputType.phone,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,

                        ],

                      ),
                    ),
                    SizedBox(
                      height: 9.h,
                      width: 20.w,
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'not valid';
                          }
                          return null;
                        },
                        onChanged: (value){
                          if (value.length==1){
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        onSaved: (pin3){},
                        decoration: const InputDecoration(hintText: "0"),
                        style: Theme.of(context).textTheme.headline6,
                        cursorColor:AppTheme.success400,
                        keyboardType: TextInputType.phone,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,

                        ],

                      ),
                    ),
                    SizedBox(
                      height: 9.h,
                      width: 20.w,
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'not valid';
                          }
                          return null;
                        },
                        onChanged: (value){
                          if (value.length==1){
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        onSaved: (pin4){},
                        decoration: const InputDecoration(hintText: "0"),
                        style: Theme.of(context).textTheme.headline6,
                        cursorColor:AppTheme.success400,
                        keyboardType: TextInputType.phone,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,

                        ],

                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.h,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'didn’t receive code.?! ',
                      style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff21162C),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                   /*     Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return login();
                        }));*/
                      },
                      child: Text(
                        '  Resend code',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: AppTheme.success900,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4.h,),
                CustomMainButton(
                  onpressed: () {
                    if (formdkeyverifaction.currentState!.validate()) {
                      setState(() {

                        Navigator.pushNamed(context, AppRoutes.changePasswordPageRoute);
                      });
                    }
                  },
                  text: AppString.saveString,
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}
