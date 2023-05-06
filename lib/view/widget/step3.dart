import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Step3 extends StatefulWidget {
  const Step3({Key? key}) : super(key: key);

  @override
  State<Step3> createState() => _Step3State();
}

class _Step3State extends State<Step3> {
  var formdkey2 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return  Form(
      key: formdkey2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(children: [
              Text(
                'congratulation!',
                style: TextStyle(
                    letterSpacing: 1.5,
                    fontSize: 23.sp,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff21162C)),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                'Now you can get Juant',
                style:
                TextStyle(fontSize: 14.sp, color: Color(0xff473E50)),
              ),
              Text(
                ' all features',
                style:
                TextStyle(fontSize: 14.sp, color: Color(0xff473E50)),
              ),
              SizedBox(height: 3),
              Image.asset(
                'assets/images/signUp.png',
                width: 100.w,
                height: 40.h,
              ),
              SizedBox(height: 2.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        'Find Your suitable place and ',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                        ),
                      ),
                      Text(
                        'Booking Suitable places for Your ',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                        ),
                      ),
                      Text(
                        'Occasion',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30,
                width: 30,
              ),
              Container(
                alignment: Alignment.bottomRight,
                child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    shape:
                    MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    backgroundColor:
                    MaterialStateProperty.all(Color(0XFFB591D9)),
                    shadowColor: MaterialStateProperty.all(Colors.black),
                    fixedSize: MaterialStateProperty.all(Size(171, 49)),
                    elevation: MaterialStateProperty.all(1.5),
                  ),
                  child: Text(
                    'START',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
