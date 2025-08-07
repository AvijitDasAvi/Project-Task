import 'package:flutter/material.dart';
import 'package:project_task/feature/home/screen/home_screen.dart';
import 'package:project_task/feature/community/screen/community_screen.dart';
import 'package:project_task/feature/wallet/screen/wallet_screen.dart';
import 'package:project_task/feature/nearby/screen/nearby_screen.dart';
import 'package:project_task/widget/custom_bottom_navigation.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const CommunityScreen(),
    const WalletScreen(),
    const NearbyScreen(),
  ];

  void _onNavItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _screens[_currentIndex],
      bottomNavigationBar: CustomBottomNavigation(
        currentIndex: _currentIndex,
        onTap: _onNavItemTapped,
      ),
    );
  }
}
