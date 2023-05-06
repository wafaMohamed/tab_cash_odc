import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sizer/sizer.dart';
import '../../utilites/route/routes.dart';
import '../../utilites/theme/app_theme.dart';
import '../../view_controller/cubits/register_cubit/register_cubit.dart';
import '../../view_controller/cubits/register_cubit/register_state.dart';
import 'button_home_widget.dart';
import 'defaultTextField.dart';

class TransferWidget extends StatefulWidget {
  const TransferWidget({Key? key}) : super(key: key);

  @override
  State<TransferWidget> createState() => _TransferWidgetState();
}

class _TransferWidgetState extends State<TransferWidget> {
  final TextEditingController amountController = TextEditingController();
  final TextEditingController accountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    RegisterCubit registerCubit = RegisterCubit.get(context);
    return BlocBuilder<RegisterCubit, RegisterState>(builder: (context, state) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ButtonHomeWidget(
              text: 'Transfer',
              icon: Iconsax.convert,
              callback: () {
                showDialog(
                    context: context,
                    // barrierDismissible: false,
                    builder: (BuildContext context) {
                      return AlertDialog(
                          backgroundColor: AppTheme.success100,
                          shape: RoundedRectangleBorder(
                              side:
                                  const BorderSide(color: AppTheme.success900),
                              borderRadius: BorderRadius.circular(15.0)),
                          title: Center(
                              child: Column(
                            children: [
                              DefaultTextField(
                                  controller: accountController,
                                  register_password: registerCubit,
                                  icon: Icons.account_circle_outlined,
                                  label: 'Account Number',
                                  type: TextInputType.text,
                                  validation: (value) {
                                    if (value.isEmpty) {
                                      return 'Account Number';
                                    }
                                  }),
                              SizedBox(height: 2.h,),
                              DefaultTextField(
                                  controller: amountController,
                                  register_password: registerCubit,
                                  icon: Icons.monetization_on_outlined,
                                  label: 'Amount ',
                                  type: TextInputType.number,
                                  validation: (value) {
                                    if (value.isEmpty) {
                                      return 'Please Enter Amount';
                                    }
                                  }),
                            ],
                          )),
                          actions: [
                            TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15.0))),
                                ),
                                child: const Text(
                                  'Transfer Done',
                                  style: TextStyle(
                                      color: AppTheme.success900,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0),
                                )),
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                style: TextButton.styleFrom(
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15.0))),
                                ),
                                child: const Text(
                                  'cancel',
                                  style: TextStyle(
                                      color: AppTheme.danger600,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0),
                                )),
                          ]);
                    });
              },
            ),
            ButtonHomeWidget(
              text: 'Payment',
              icon: Iconsax.export,
              callback: () {
                Navigator.pushNamed(context, AppRoutes.creditCardRoute);
              },
            ),
            ButtonHomeWidget(
              text: 'Pay out',
              icon: Iconsax.money_send,
              callback: () {},
            ),
            ButtonHomeWidget(
              text: 'Top up',
              icon: Iconsax.add,
              callback: () {},
            ),
          ],
        ),
      );
    });
  }
}
