import 'package:aspen/constants/app_colors.dart';
import 'package:aspen/screens/main/screen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 32),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/onboarding.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
                    children: [
                      const SizedBox(height: 32),
                      Image.asset("assets/images/logo.png"),
                      const Spacer(),
                      Container(
                        margin: const EdgeInsets.only(bottom: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          spacing: 24,
                          children: [
                            SizedBox(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Plan your",
                                    style: TextStyle(
                                      color: AppColors.textWhite,
                                      fontSize: 24,
                                      height: 1.3,
                                    ),
                                  ),
                                  Text(
                                    "Luxurious\nVacation",
                                    style: TextStyle(
                                      color: AppColors.textWhite,
                                      fontSize: 40,
                                      fontWeight: FontWeight.w500,
                                      height: 1.3,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const MainScreen(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.primary,
                                foregroundColor: AppColors.textWhite,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                padding: const EdgeInsets.symmetric(vertical: 16),
                                minimumSize: const Size(double.infinity, 56),
                              ),
                              child: const Text(
                                "Explore",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
