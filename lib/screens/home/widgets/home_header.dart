import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Explore", style: TextStyle(fontSize: 14)),
            Row(
              spacing: 6,
              children: [
                SvgPicture.asset("assets/icons/location.svg"),
                Text("Aspen, USA", style: TextStyle(fontSize: 12)),
                SvgPicture.asset("assets/icons/arrow-down.svg"),
              ],
            ),
          ],
        ),
        Text(
          "Aspen",
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
