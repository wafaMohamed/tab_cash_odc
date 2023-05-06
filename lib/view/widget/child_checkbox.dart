import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../utilites/theme/app_theme.dart';

class ChekBox extends StatefulWidget {
  const ChekBox({Key? key}) : super(key: key);

  @override
  State<ChekBox> createState() => _ChekBoxState();
}

class _ChekBoxState extends State<ChekBox> {
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;
  @override
  Widget build(BuildContext context) {
    return Column (children: [    Padding(
      padding: const EdgeInsets.only(left: 12),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: "Purchase Limitation",
                style: TextStyle(
                    fontFamily: "Merriweather",
                    fontWeight: FontWeight.w700,
                    color: AppTheme.success900,
                    fontSize: 17.sp),
              ),
            ],
          ),
        ),
      ),
    ),
      Row(children: [
        Theme(
          data: Theme.of(context).copyWith(
            unselectedWidgetColor:AppTheme.success900,
          ),
          child: Checkbox(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            value: isChecked1,
            onChanged: (value) {
              setState(() => isChecked1 = value!);
            },
            activeColor: AppTheme.success900,
            checkColor: AppTheme.success100,
          ),
        ),
        Text("School-College kit",
          style: TextStyle(
              fontFamily: "Merriweather",
              fontWeight: FontWeight.w600,
              color: AppTheme.success900,
              fontSize: 12.sp),),
      ]),
      Row(children: [
        Theme(
          data: Theme.of(context).copyWith(
            unselectedWidgetColor:AppTheme.success900,
          ),
          child: Checkbox(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            value: isChecked2,
            onChanged: (value) {
              setState(() => isChecked2 = value!);
            },
            activeColor: AppTheme.success900,
            checkColor: AppTheme.success100,
          ),
        ),
        Text("Electronics",
          style: TextStyle(
              fontFamily: "Merriweather",
              fontWeight: FontWeight.w600,
              color: AppTheme.success900,
              fontSize: 12.sp),),
      ]),
      Row(children: [
        Theme(
          data: Theme.of(context).copyWith(
            unselectedWidgetColor:AppTheme.success900,
          ),
          child: Checkbox(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            value: isChecked3,
            onChanged: (value) {
              setState(() => isChecked3 = value!);
            },
            activeColor: AppTheme.success900,
            checkColor: AppTheme.success100,
          ),
        ),
        Text("Clothes",
          style: TextStyle(
              fontFamily: "Merriweather",
              fontWeight: FontWeight.w600,
              color: AppTheme.success900,
              fontSize: 12.sp),),
      ]),
      Row(children: [
        Theme(
          data: Theme.of(context).copyWith(
            unselectedWidgetColor:AppTheme.success900,
          ),
          child: Checkbox(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            value: isChecked4,
            onChanged: (value) {
              setState(() => isChecked4 = value!);
            },
            activeColor: AppTheme.success900,
            checkColor: AppTheme.success100,
          ),
        ),
        Text("Food",
          style: TextStyle(
              fontFamily: "Merriweather",
              fontWeight: FontWeight.w600,
              color: AppTheme.success900,
              fontSize: 12.sp),),
      ]),
    ],);
  }
}
