import 'package:aspen/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailContent extends StatelessWidget {
  final String name;
  final String rating;
  const DetailContent({super.key, required this.name, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            Text(
              "Show map",
              style: TextStyle(
                fontSize: 14,
                color: AppColors.primary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        SizedBox(height: 8),
        Row(
          spacing: 4,
          children: [
            SvgPicture.asset("assets/icons/star2.svg"),
            Text(
              "$rating (355) Reviews",
              style: TextStyle(fontSize: 12, color: AppColors.textPrimary),
            ),
          ],
        ),
        SizedBox(height: 16),
        Text(
          "Aspen is as close as one can get to a storybook alpine town in America. The choose-your-own-adventure possibilities—skiing, hiking, dining shopping and ....",
          style: TextStyle(fontSize: 14, color: AppColors.textPrimary),
        ),
        SizedBox(height: 9),
        Row(
          spacing: 4,
          children: [
            Text(
              "Read more",
              style: TextStyle(
                fontSize: 14,
                color: AppColors.primary,
                fontWeight: FontWeight.w600,
              ),
            ),
            SvgPicture.asset("assets/icons/arrow_down2.svg"),
          ],
        ),
      ],
    );
  }
}
