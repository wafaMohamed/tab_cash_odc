import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:tab_cash/utilites/route/router.dart';
import 'package:tab_cash/utilites/route/routes.dart';
import 'package:tab_cash/view_controller/cubits/login_cubit/login_cubit.dart';
import 'package:tab_cash/view_controller/cubits/register_cubit/register_cubit.dart';
import 'data/dio_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DioHelper.init();
  runApp(const TabCash());
}

class TabCash extends StatelessWidget {
  const TabCash({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientaion, deviceType) {
          return  MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (context) => LogInCubit(),
                ), BlocProvider(
                  create: (context) => RegisterCubit(),
                ),

              ],
              child: MaterialApp(

                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                ),
                onGenerateRoute: onGenerate,
                initialRoute: AppRoutes.splashPageRoute,
              ),
            );
        });
  }
}
