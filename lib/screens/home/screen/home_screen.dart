import 'package:aspen/screens/home/widgets/category/home_category.dart';
import 'package:aspen/screens/home/widgets/home_header.dart';
import 'package:aspen/screens/home/widgets/home_search.dart';
import 'package:aspen/screens/home/widgets/popular/popular_destination.dart';
import 'package:aspen/screens/home/widgets/recommended/recommended_destination.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            HomeHeader(),
            const SizedBox(height: 24),
            HomeSearch(),
            const SizedBox(height: 32),
            HomeCategory(),
            const SizedBox(height: 32),
            PopularDestination(),
            const SizedBox(height: 32),
            RecommendedDestination(),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
