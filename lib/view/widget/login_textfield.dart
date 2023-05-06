import 'package:flutter/material.dart';

import '../../utilites/theme/app_theme.dart';
import '../../view_controller/cubits/login_cubit/login_cubit.dart';


class LoginTextField extends StatefulWidget {
  LoginTextField({Key? key,required this.controller,required this.icon,required this.label,required this.type,required this.validation
    ,required this.login_password}) : super(key: key);
  final TextEditingController controller;
  final IconData icon;
  final String label;
  final TextInputType type;
  Function validation;
  LogInCubit login_password;

  @override
  State<LoginTextField> createState() => _LoginTextFieldState();
}

class _LoginTextFieldState extends State<LoginTextField> {


  @override
  Widget build(BuildContext context) {
    // RegisterCubit registerCubit = RegisterCubit.get(context);
    return TextFormField(
      validator: (value) => widget.validation(value),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(color: AppTheme.success900, width: 0.5),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(color: AppTheme.success900, width: 0.5),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(color: AppTheme.success900, width: 0.5),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(color:AppTheme.success900, width: 0.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(color: AppTheme.success900, width: 0.5),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(color:AppTheme.success900, width: 0.5),
        ),
        prefixIcon: Icon(widget.icon as IconData?, color:AppTheme.success900, size: 20.0,),
        labelText: widget.label,
        labelStyle: const TextStyle(
            color: AppTheme.success700, fontSize: 15.0, fontWeight: FontWeight.bold),
        suffixIcon: widget.label == 'Password'? IconButton(
          icon: const Icon(Icons.visibility_off),
          color: AppTheme.success800,
          iconSize: 20.0,
          onPressed: () {
            widget.login_password.changePasswordVisibility();

          },
        ) : null,
      ),
      keyboardType: widget.type,
      textInputAction: TextInputAction.done,
      controller: widget.controller,
      obscureText: widget.label == 'E-mail' ? false : widget.login_password.visiblePassword,
    );
  }

}