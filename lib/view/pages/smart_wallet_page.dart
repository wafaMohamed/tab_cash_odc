import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import '../../utilites/asset/app_asset.dart';
import '../../utilites/theme/app_theme.dart';
import '../widget/list_payment.dart';


class SmartWalletPage extends StatefulWidget {
  const SmartWalletPage({Key? key}) : super(key: key);

  @override
  State<SmartWalletPage> createState() => _SmartWalletPageState();
}

class _SmartWalletPageState extends State<SmartWalletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.success100,
        automaticallyImplyLeading: false,
        title: Center(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "Online payments",
                  style: TextStyle(
                      fontFamily: "Merriweather",
                      fontWeight: FontWeight.bold,
                      color: AppTheme.success900,
                      fontSize: 17.sp),
                ),
              ],
            ),
          ),
        ),
        actions: [
          Lottie.asset(AppAssets.cartAsset, width: 70, height: 70),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(children: [
          SizedBox(height: 1.h,),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            decoration: BoxDecoration(
                color: AppTheme.success900,
                borderRadius: BorderRadius.circular(24)),
            child: Row(children: [
              Expanded(
                  flex: 1,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 3.h),
                      const Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "Balance",
                              style: TextStyle(
                                  fontFamily: "Merriweather",
                                  fontWeight: FontWeight.w700,
                                  color: AppTheme.success100,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                       SizedBox(
                        width: 4.w,
                      ),
                      const Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: r"$52.50",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: AppTheme.success100,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            ]),
          ),
          SizedBox(height: 1.h,),
          const ListOnlinePayment(text: 'Vezeeta', image: AppAssets.vezeetaAsset,),
          const ListOnlinePayment(text: 'Amazon', image: AppAssets.amazonAsset,),
          const ListOnlinePayment(text: 'Carrefour', image: AppAssets.carrefourAsset,),
          const ListOnlinePayment(text: 'B.Tech', image: AppAssets.btechAsset,),

        ]),
      ),
    );
  }
}
