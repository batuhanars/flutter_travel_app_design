import 'package:aspen/constants/app_colors.dart';
import 'package:aspen/screens/detail/screen/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PopularDestinationItem extends StatelessWidget {
  final String image;
  final String name;
  final String rating;
  const PopularDestinationItem({
    super.key,
    required this.image,
    required this.name,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                DetailScreen(image: image, name: name, rating: rating),
          ),
        );
      },
      child: Container(
        width: size.width * 0.45,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 6,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color: AppColors.darkGray,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Text(
                name,
                style: TextStyle(fontSize: 12, color: AppColors.textWhite),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.darkGray,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Row(
                    spacing: 4,
                    children: [
                      SvgPicture.asset("assets/icons/star.svg"),
                      Text(
                        rating,
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColors.textWhite,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: AppColors.backgroundWhite,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: SvgPicture.asset("assets/icons/heart.svg"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
