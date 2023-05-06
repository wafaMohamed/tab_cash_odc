import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import '../../utilites/theme/app_theme.dart';
import '../pages/homepage.dart';
import '../pages/settings.dart';
import '../pages/smart_wallet_page.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int current = 0;
  List screens = [const Homepage(), const SmartWalletPage(),const SettingPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: current,
        onTap: (i) => setState(() => current = i),
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: const Icon(Icons.home),
            title: const Text("Home"),
            selectedColor:AppTheme.success900,
          ),
          ///Smart Wallet
          SalomonBottomBarItem(
            icon: const Icon(Icons.credit_card),
            title: const Text("Smart Cart"),
            selectedColor:AppTheme.success900,
          ),
          /// Profile
          SalomonBottomBarItem(
            icon: const Icon(Icons.settings),
            title: const Text("Setting"),
            selectedColor:AppTheme.success900,
          ),
        ],
      ),
      body: screens[current],
    );
  }
}
