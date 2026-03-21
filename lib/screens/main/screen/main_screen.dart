import 'package:aspen/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const Center(child: Text("Home Screen")),
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
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(top: 16, left: 24, right: 24),
        decoration: BoxDecoration(
          color: AppColors.backgroundWhite,
          borderRadius: BorderRadius.circular(32),
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
    );
  }
}
