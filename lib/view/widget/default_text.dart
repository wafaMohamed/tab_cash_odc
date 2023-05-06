import 'package:flutter/material.dart';
class DefaultText extends StatelessWidget {
  const DefaultText({Key? key,required this.text,this.color,this.size, this.maxLines, this.overflow, this.textAlign, this.textScaleFactor, this.fontWeight, this.fontSize, this.textDecoration, required this.fontFamily, this.style}) : super(key: key);
  final  String text;
  final Color? color;
  final double? size;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextAlign? textAlign;
  final double? textScaleFactor;
  final FontWeight? fontWeight;
  final double? fontSize;
  final TextDecoration? textDecoration;
  final String fontFamily;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: size
      ),
    );
  }
}