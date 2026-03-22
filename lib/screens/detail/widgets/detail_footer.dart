import 'package:aspen/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailFooter extends StatelessWidget {
  const DetailFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Price",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
              ),
              Text(
                "\$199",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: AppColors.priceGreen,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              foregroundColor: AppColors.textWhite,
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 2,
              shadowColor: AppColors.primary,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 10,
              children: [
                Text(
                  "Book Now",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                SvgPicture.asset("assets/icons/arrow-right.svg"),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
