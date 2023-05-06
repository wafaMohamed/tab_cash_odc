import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../utilites/theme/app_theme.dart';

class ButtonHomeWidget extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback callback;

  const ButtonHomeWidget(
      {Key? key,
      required this.text,
      required this.icon,
      required this.callback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OutlinedButton(

          onPressed: callback,
          style: OutlinedButton.styleFrom(
            backgroundColor: AppTheme.success100,
              shape: const StadiumBorder(),
              side:  const BorderSide(color: AppTheme.success900),
              elevation: 5,
              shadowColor: AppTheme.neutral400.withOpacity(0.2),
              padding: const EdgeInsets.all(16)),
          child:  Icon(icon,color: AppTheme.success900,),
        ),
        const SizedBox(height: 4,),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: text,
                style: TextStyle(
                    fontFamily: "Merriweather",
                    fontWeight: FontWeight.w300,
                    color: AppTheme.neutral900,
                    fontSize: 10.sp),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
