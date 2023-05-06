import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';

class Step2 extends StatefulWidget {
  const Step2({Key? key}) : super(key: key);

  @override
  State<Step2> createState() => _Step2State();
}

class _Step2State extends State<Step2> {
  var formdkey1 = GlobalKey<FormState>();
  File? image;
  final imagepicker = ImagePicker();

//Function to get Image from camera
  void uploadImageCamera() async {
    var PickedImage = await imagepicker.pickImage(source: ImageSource.camera);
    if (PickedImage != null) {
      setState(() {
        image = File(PickedImage.path);
      });
    } else {}
  }

  //Function to get Image from gallery
  void uploadImageGallery() async {
    var PickedImage = await imagepicker.pickImage(source: ImageSource.gallery);
    if (PickedImage != null) {
      setState(() {
        image = File(PickedImage.path);
      });
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return  Form(
      key: formdkey1,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    Text(
                      'Just 1 More Step',
                      style: TextStyle(
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text(
                      'Complete Your profile',
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    Text(
                      'information to start',
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Pick Up Profile Picture',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 13.sp,
                        color: Color(0xff21162C)),
                  ),
                ],
              ),
              const SizedBox(
                height: 36,
              ),
              GestureDetector(
                // behavior: HitTestBehavior.translucent,
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(25.0),
                      ),
                    ),
                    builder: (context) => DraggableScrollableSheet(
                        initialChildSize: 0.28,
                        maxChildSize: 0.3,
                        minChildSize: 0.28,
                        expand: false,
                        builder: (context, scrollController) {
                          return SingleChildScrollView(
                            controller: scrollController,
                            child: Column(
                              children: [
                                Padding(padding: EdgeInsets.all(16)),
                                Row(
                                  children: const [
                                    Text(
                                      '   SELECT WAY TO UPLOD IMAGE',
                                      style: TextStyle(
                                        color: Color(0XFF21162C),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    CircleAvatar(
                                      backgroundColor: Color(0xffF2ECF9),
                                      child: CloseButton(
                                        color: Color(0xff9661C9),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                //camera
                                GestureDetector(
                                  onTap: uploadImageCamera,
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(16),
                                        child: Container(
                                          height: 42,
                                          width: 42,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(
                                                  40),
                                              color: Colors.grey.shade300,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors
                                                      .grey.shade600,
                                                  blurRadius: 2,
                                                )
                                              ]),
                                          child: CircleAvatar(
                                            radius: 85,
                                            foregroundColor: Colors.black,
                                            backgroundColor:
                                            Color(0xffF2ECF9),
                                            child: Icon(
                                              Icons.camera_alt,
                                              size: 25,
                                              color: Color(0xff9661C9),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 9,
                                      ),
                                      Text(
                                        'TAKE PHOTO BY CAMERA',
                                        style: TextStyle(
                                          color: Color(0XFF21162C),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 1,
                                        width: 163,
                                        color: Color(0xff9183D8),
                                      ),
                                      Text(
                                        '  OR ',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff473E50),
                                        ),
                                      ),
                                      Container(
                                        height: 1,
                                        width: 163,
                                        color: Color(0xff9183D8),
                                      ),
                                    ],
                                  ),
                                ),
                                //Gllery
                                GestureDetector(
                                  onTap: uploadImageGallery,
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(16),
                                        child: Container(
                                          height: 42,
                                          width: 42,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(
                                                  40),
                                              color: Colors.grey.shade300,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors
                                                      .grey.shade600,
                                                  blurRadius: 2,
                                                )
                                              ]),
                                          child: CircleAvatar(
                                            radius: 85,
                                            foregroundColor: Colors.black,
                                            backgroundColor:
                                            Color(0xffF2ECF9),
                                            child: Icon(
                                              Icons.photo,
                                              size: 25,
                                              color: Color(0xff9661C9),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 9,
                                      ),
                                      Text(
                                        'CHOOSE FROM GALLERY',
                                        style: TextStyle(
                                          color: Color(0XFF21162C),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                  );
                },
                child: Container(
                  height: 170,
                  width: 170,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90),
                      color: Colors.grey.shade300,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade600,
                          blurRadius: 7,
                          //spreadRadius: 1,
                        )
                      ]),
                  child: CircleAvatar(
                    backgroundImage:
                    image == null ? null : FileImage(image!),
                    radius: 85,
                    foregroundColor: Colors.black,
                    backgroundColor: Color(0xffF2ECF9),
                    child: image != null
                        ? null
                        : Icon(
                      Icons.camera_alt,
                      size: 60,
                      color: Color(0xff9661C9),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 55,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Phone Number',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 13.sp,
                        color: Color(0xff21162C)),
                  ),
                ],
              ),
              SizedBox(
                height: 11,
              ),
              //Phone num
              Padding(
                padding: const EdgeInsets.all(4),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xff9d9d9d),
                        spreadRadius: 2,
                        blurRadius: 5,
                        // offset: Offset(3, 3),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Set Your City',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 13.sp,
                        color: Color(0xff21162C)),
                  ),
                ],
              ),
              SizedBox(height: 3.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'have already account.?  ',
                    style: TextStyle(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff21162C),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Sign in now',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff9661C9),
                      ),
                    ),
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
