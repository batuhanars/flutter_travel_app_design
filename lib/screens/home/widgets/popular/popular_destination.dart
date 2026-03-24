import 'package:aspen/constants/app_colors.dart';
import 'package:aspen/constants/mock_data.dart';
import 'package:aspen/screens/home/widgets/popular/popular_destination_item.dart';
import 'package:flutter/material.dart';

class PopularDestination extends StatelessWidget {
  const PopularDestination({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Popular",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            Text(
              "See All",
              style: TextStyle(
                color: AppColors.primary,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 260,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: MockData.popularDestinations.length,
            separatorBuilder: (context, index) {
              return const SizedBox(width: 28);
            },
            itemBuilder: (context, index) {
              final destination = MockData.popularDestinations[index];
              return PopularDestinationItem(
                image: destination.image,
                name: destination.name,
                rating: destination.rating.toString(),
              );
            },
          ),
        ),
      ],
    );
  }
}
