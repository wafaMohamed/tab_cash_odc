import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

flutterToast(
    {
      required String msg,
      required Color color,
    }
    ){
  return Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 4,
      backgroundColor: color,
      textColor: Colors.white,
      fontSize: 16.0
  );
}