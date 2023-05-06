import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String? onPressed;
  final String text;
  final int? maxLines;
  final TextOverflow? overflow;
  final Color color;
  final TextAlign? textAlign;
  final double? textScaleFactor;
  final FontWeight? fontWeight;
  final double? fontSize;
  final TextDecoration? textDecoration;
  final String fontFamily;
  final TextStyle? style;
  final VoidCallback onpressed;

  const CustomText({
    Key? key,
    required this.text,
    this.maxLines,
    this.color = Colors.black,
    this.textAlign,
    this.textScaleFactor,
    this.fontWeight = FontWeight.normal,
    this.overflow = TextOverflow.ellipsis,
    this.textDecoration,
    this.fontSize,
    required this.fontFamily,
    this.style,
    this.onPressed, required this.onpressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed:onpressed,
      child: Text(
        text,
        textDirection: TextDirection.ltr,
        style: style,
        maxLines: maxLines,
        overflow: overflow,
        textAlign: textAlign,
        textScaleFactor: textScaleFactor,
      ),
    );
  }
}
