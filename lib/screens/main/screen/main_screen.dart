import 'package:aspen/constants/app_colors.dart';
import 'package:aspen/screens/home/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const Center(child: Text("Ticket Screen")),
    const Center(child: Text("Favorites Screen")),
    const Center(child: Text("Profile Screen")),
  ];

  Widget _buildNavItem(String icon, int index) {
    return IconButton(
      onPressed: () {
        setState(() {
          _currentIndex = index;
        });
      },
      icon: _currentIndex == index
          ? SvgPicture.asset(icon, width: 24, height: 24)
          : SvgPicture.asset(icon, width: 20, height: 20),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        backgroundColor: AppColors.backgroundWhite,
        body: _screens[_currentIndex],
        bottomNavigationBar: Container(
          padding: const EdgeInsets.only(top: 16, left: 24, right: 24),
          decoration: BoxDecoration(
            color: AppColors.backgroundWhite,
            borderRadius: BorderRadius.circular(32),
            boxShadow: [
              BoxShadow(
                color: AppColors.textPrimary.withValues(alpha: 0.05),
                blurRadius: 10,
                offset: const Offset(0, -2),
              ),
            ],
          ),
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildNavItem("assets/icons/home.svg", 0),
                _buildNavItem("assets/icons/ticket.svg", 1),
                _buildNavItem("assets/icons/liked.svg", 2),
                _buildNavItem("assets/icons/profile.svg", 3),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
