import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../utilites/theme/app_theme.dart';
import 'custom_text.dart';

class CustomMainButton extends StatelessWidget {
  final VoidCallback onpressed;
  final String text;

  const CustomMainButton({
    Key? key,
    required this.onpressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(1000),
        color: AppTheme.success900,
      ),
      height: 48,
      width: 327,
      child: MaterialButton(
        onPressed: onpressed,
        child: CustomText(
          text: text,
          style: TextStyle(
              color: AppTheme.success100,
              fontSize: 14.sp,
              fontFamily: 'SF',
              fontWeight: FontWeight.w500), fontFamily: 'Merriweather', onpressed: () {  },

        ),
      ),
    );
  }
}
