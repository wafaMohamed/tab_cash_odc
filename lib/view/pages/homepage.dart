import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tab_cash/utilites/theme/app_theme.dart';
import '../../utilites/route/routes.dart';
import '../widget/homeWidget.dart';
import '../widget/transfer_widget.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const HomeWalletWidget(),
              SizedBox(
                height: 2.h,
              ),
              const TransferWidget(),
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    const Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "Last Transiction",
                            style: TextStyle(
                                fontFamily: "Merriweather",
                                fontWeight: FontWeight.w600,
                                color: AppTheme.neutral900,
                                fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 25.w,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.statisticsRoute);
                      },
                      child: const Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "View All",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: AppTheme.success900,
                                  fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              ListTile(
                leading: ClipOval(
                  clipBehavior: Clip.antiAlias,
                  child: Image.network(
                      "https://th.bing.com/th/id/OIP.o-MG0BUdIv_XjBckA5fcugHaHa?pid=ImgDet&rs=1"),
                ),
                title: Text(
                  "Zara",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp,
                  ),
                ),
                subtitle: Text(
                  "Shopping Store",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp,
                  ),
                ),
                trailing: Text(
                  r"$150",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 12.sp,
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
