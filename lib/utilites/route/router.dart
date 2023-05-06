import 'package:flutter/material.dart';
import 'package:tab_cash/utilites/route/routes.dart';
import '../../view/layout/navebar.dart';
import '../../view/pages/IntroScreen/onboarding_page.dart';
import '../../view/pages/IntroScreen/page1.dart';
import '../../view/pages/IntroScreen/page2.dart';
import '../../view/pages/IntroScreen/page3.dart';
import '../../view/pages/auth/forgetPassword/change_password.dart';
import '../../view/pages/auth/forgetPassword/forget_mail.dart';
import '../../view/pages/auth/forgetPassword/verifaction_forget.dart';
import '../../view/pages/auth/login.dart';
import '../../view/pages/auth/register.dart';
import '../../view/pages/child_screen.dart';
import '../../view/pages/credit card.dart';
import '../../view/pages/homepage.dart';
import '../../view/pages/settings.dart';
import '../../view/pages/smart_wallet_page.dart';
import '../../view/pages/splash.dart';
import '../../view/pages/statistics.dart';
import '../../view/pages/transferpage.dart';

Route<dynamic> onGenerate(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AppRoutes.splashPageRoute:
      return MaterialPageRoute(
          builder: (_) => const SplashScreen(), settings: routeSettings);
    case AppRoutes.onBoardingRoute:
      return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(), settings: routeSettings);
    case AppRoutes.page1Route:
      return MaterialPageRoute(
          builder: (_) => const Page1(), settings: routeSettings);
    case AppRoutes.page2Route:
      return MaterialPageRoute(
          builder: (_) => const Page2(), settings: routeSettings);
    case AppRoutes.page3Route:
      return MaterialPageRoute(
          builder: (_) => const Page3(), settings: routeSettings);
    case AppRoutes.navBarRoute:
      return MaterialPageRoute(
          builder: (_) => const NavBar(), settings: routeSettings);
    case AppRoutes.loginRoute:
      return MaterialPageRoute(
          builder: (_) => const Login(), settings: routeSettings);
    case AppRoutes.registerScreenRoute:
      return MaterialPageRoute(
          builder: (_) => const RegisterScreen(), settings: routeSettings);
    case AppRoutes.homepageRoute:
      return MaterialPageRoute(
          builder: (_) => const Homepage(), settings: routeSettings);
    case AppRoutes.transferPageRoute:
      return MaterialPageRoute(
          builder: (_) => const TransferPage(), settings: routeSettings);
    case AppRoutes.settingPageRoute:
      return MaterialPageRoute(
          builder: (_) => const SettingPage(), settings: routeSettings);
    case AppRoutes.changePasswordPageRoute:
      return MaterialPageRoute(
          builder: (_) => const ChangePassword(), settings: routeSettings);
    case AppRoutes.forgetPasswordMailRoute:
      return MaterialPageRoute(
          builder: (_) => const ForgetPasswordMail(), settings: routeSettings);
    case AppRoutes.verificationScreenRoute:
      return MaterialPageRoute(
          builder: (_) => const VerificationScreen(), settings: routeSettings);
    case AppRoutes.childRoute:
      return MaterialPageRoute(
          builder: (_) => const ChildScreen(), settings: routeSettings);
    case AppRoutes.creditCardRoute:
      return MaterialPageRoute(
          builder: (_) => const CreditCard(), settings: routeSettings);
    case AppRoutes.statisticsRoute:
      return MaterialPageRoute(
          builder: (_) => const StatisticsScreen(), settings: routeSettings);
    case AppRoutes.smartWalletPageRoute:
    default:
      return MaterialPageRoute(
          builder: (_) => const SmartWalletPage(), settings: routeSettings);
  }
}
