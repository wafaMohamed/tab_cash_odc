import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../constants/end-points.dart';
import '../../../data/dio_helper.dart';
import '../../../utilites/constant/flutter_toast.dart';
import '../../../utilites/route/routes.dart';

part 'child_state.dart';

class ChildCubit extends Cubit<ChildState> {
  ChildCubit() : super(ChildInitial());

  static ChildCubit get(context) => BlocProvider.of(context);

  bool childVisiblePassword = true;
  bool childConfirmPassword = true;



  /// function to change password visibility
  void childChangePasswordVisibility() {
    childVisiblePassword = !childVisiblePassword;
    emit(ChildVisiblePasswordState());
  }

  /// function to change password visibility
  void childChangeConfirmPasswordVisibility() {
    childConfirmPassword = !childConfirmPassword;
    emit(ChildVisibleConfirmPasswordState());
  }

  String gender = 'm';
  void changeGender(value){
    gender = value;
    emit(ChildChangeGenderState());
  }

  Future postRegister(
      {required String name,
        required String email,
        required String password,
        required String phoneNumber,
        required String gender,
        required context}) async {
    emit(ChildLoadingState());
    DioHelper.postData(url: registerEndPoint, data: {
      "name": name,
      "email": email,
      "password": password,
      "phoneNumber": phoneNumber,
      "gender": gender,
    }).then((value) {
      if (value.statusCode == 200) {

        flutterToast(msg: 'Registered Successfully', color: Colors.green);
        Navigator.pushNamed(context, AppRoutes.loginRoute);
        emit(ChildSuccessState());
      }
      // print(value);
    }).catchError((error) {
      if (kDebugMode) {
        flutterToast(msg: error.toString(), color: Colors.red);
        print(error.toString());
      }
      emit(ChildErrorState());
    });
  }
}
