import 'package:aspen/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailFacilities extends StatelessWidget {
  const DetailFacilities({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Facilities",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 16),
        Row(
          spacing: 14,
          children: [
            Container(
              width: size.width * 0.20,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              decoration: BoxDecoration(
                color: AppColors.secondaryBackground,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                spacing: 6,
                children: [
                  SvgPicture.asset(
                    "assets/icons/wifi.svg",
                    width: 32,
                    height: 32,
                  ),
                  Text(
                    "1 Heater",
                    style: TextStyle(fontSize: 10, color: AppColors.textLight),
                  ),
                ],
              ),
            ),
            Container(
              width: size.width * 0.20,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              decoration: BoxDecoration(
                color: AppColors.secondaryBackground,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                spacing: 6,
                children: [
                  SvgPicture.asset(
                    "assets/icons/food.svg",
                    width: 32,
                    height: 32,
                  ),
                  Text(
                    "Dinner",
                    style: TextStyle(fontSize: 10, color: AppColors.textLight),
                  ),
                ],
              ),
            ),
            Container(
              width: size.width * 0.20,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              decoration: BoxDecoration(
                color: AppColors.secondaryBackground,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                spacing: 6,
                children: [
                  SvgPicture.asset(
                    "assets/icons/bath.svg",
                    width: 32,
                    height: 32,
                  ),
                  Text(
                    "1 Tub",
                    style: TextStyle(fontSize: 10, color: AppColors.textLight),
                  ),
                ],
              ),
            ),
            Container(
              width: size.width * 0.20,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              decoration: BoxDecoration(
                color: AppColors.secondaryBackground,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                spacing: 6,
                children: [
                  SvgPicture.asset(
                    "assets/icons/pool.svg",
                    width: 32,
                    height: 32,
                  ),
                  Text(
                    "Pool",
                    style: TextStyle(fontSize: 10, color: AppColors.textLight),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
