import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../utilites/theme/app_theme.dart';

class SettingItem extends StatelessWidget {
  const SettingItem({Key? key,required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.all( 5.sp,),
        decoration: BoxDecoration(
          border: Border.all(color: AppTheme.success900),
          color:AppTheme.success100,
          borderRadius :BorderRadius.circular(15.0),
        ),

        child: ListTile(
          leading: Text.rich(TextSpan(
            style: TextStyle(
                color: AppTheme.success900,
                fontFamily: 'Merriweather',
                fontSize: 15.sp
            ),
            text: text,
          ),
          ),
          // onTap: () {
          //   // Navigator.push(context, MaterialPageRoute(builder: (_){return Result('Best Sellers');}) );
          // },
          trailing:
          const Icon(Icons.arrow_forward_ios) ,


        ),
      ),
      onTap: (){
        Navigator.pushNamed(context,text);
      },
    );
  }
}