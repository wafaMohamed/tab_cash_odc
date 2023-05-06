import 'dart:io';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';
import 'package:tab_cash/utilites/theme/app_theme.dart';
import '../../utilites/asset/app_asset.dart';
import '../widget/setting_item.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  clear() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.success100,
        automaticallyImplyLeading: false,
        title: Center(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "Settings",
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
          Lottie.asset(AppAssets.settingAsset, width: 70, height: 70),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(height: 2.h),
              const SettingItem(text: 'FAQ'),
              const SettingItem(text: 'Terms & Condition'),
              const SettingItem(text: 'Our Partenrs'),
              InkWell(
                child: Container(

                  margin: EdgeInsets.all(
                    5.sp,
                  ),
                  decoration: BoxDecoration(
                    color: AppTheme.success100,
                    border: Border.all(color: AppTheme.success900),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: ListTile(
                    leading: Text.rich(TextSpan(
                      style: TextStyle(
                          color: AppTheme.success900,
                          fontFamily: 'Merriweather',
                          fontSize: 15.sp
                      ),
                      text: 'Log Out',
                    )),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      // barrierDismissible: false,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: AppTheme.success100,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: AppTheme.success900),
                                borderRadius: BorderRadius.circular(15.0)),
                            title: const Center(
                              child: Text(
                                'Log Out !',
                                style: TextStyle(
                                    fontFamily: 'Merriweather',
                                    color: AppTheme.success700,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30.0),
                              ),
                            ),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    clear();
                                    exit(0);
                                  },
                                  style: TextButton.styleFrom(
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15.0))),
                                  ),
                                  child: const Text(
                                    'Log Out',
                                    style: TextStyle(
                                        color: AppTheme.danger600,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.0),
                                  )),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  style: TextButton.styleFrom(
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15.0))),
                                  ),
                                  child: const Text(
                                    'cancel',
                                    style: TextStyle(
                                        color: AppTheme.danger600,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.0),
                                  )),
                            ]);
                      });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
