import 'package:aspen/screens/detail/widgets/detail_facilities.dart';
import 'package:aspen/screens/detail/widgets/detail_footer.dart';
import 'package:aspen/screens/detail/widgets/detail_header.dart';
import 'package:aspen/screens/detail/widgets/detail_content.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String image;
  final String name;
  final String rating;

  const DetailScreen({
    super.key,
    required this.image,
    required this.name,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              DetailHeader(image: image),
              const SizedBox(height: 32),
              DetailContent(name: name, rating: rating),
              const SizedBox(height: 32),
              const DetailFacilities(),
              const SizedBox(height: 32),
              const DetailFooter(),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
