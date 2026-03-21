import 'package:aspen/constants/mock_data.dart';
import 'package:aspen/screens/home/widgets/category/category_item.dart';
import 'package:flutter/material.dart';

class HomeCategory extends StatefulWidget {
  const HomeCategory({super.key});

  @override
  State<HomeCategory> createState() => _HomeCategoryState();
}

class _HomeCategoryState extends State<HomeCategory> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: MockData.categories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                _currentIndex = index;
              });
            },
            child: CategoryItem(
              category: MockData.categories[index].name,
              isActive: index == _currentIndex,
            ),
          );
        },
      ),
    );
  }
}
