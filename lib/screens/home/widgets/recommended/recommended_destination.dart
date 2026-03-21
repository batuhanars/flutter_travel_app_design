import 'package:aspen/constants/mock_data.dart';
import 'package:aspen/screens/home/widgets/recommended/recommended_destination_item.dart';
import 'package:flutter/material.dart';

class RecommendedDestination extends StatelessWidget {
  const RecommendedDestination({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Recommended",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 12),
        SizedBox(
          height: size.height * 0.15,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: MockData.recommendedDestinations.length,
            separatorBuilder: (context, index) {
              return SizedBox(width: 16);
            },
            itemBuilder: (context, index) {
              final destination = MockData.recommendedDestinations[index];
              return RecommendedDestinationItem(
                image: destination.image,
                name: destination.name,
                time: destination.time,
              );
            },
          ),
        ),
      ],
    );
  }
}
