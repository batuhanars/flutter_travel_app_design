import 'package:aspen/entities/category.dart';
import 'package:aspen/entities/popular_destination.dart';
import 'package:aspen/entities/recommended_destination.dart';

class MockData {
  static final List<Category> categories = [
    Category(name: "Location"),
    Category(name: "Hotels"),
    Category(name: "Food"),
    Category(name: "Adventure"),
    Category(name: "Activities"),
  ];

  static final List<PopularDestination> popularDestinations = [
    PopularDestination(
      name: "Alley Palace",
      image: "assets/images/alley-image.png",
      rating: 4.1,
    ),
    PopularDestination(
      name: "Coeurdes Alpes",
      image: "assets/images/coeurdes-image.png",
      rating: 4.5,
    ),
  ];

  static final List<RecommendedDestination> recommendedDestinations = [
    RecommendedDestination(
      name: "Explore Aspen",
      image: "assets/images/explore-image.png",
      time: "4N/5D",
    ),
    RecommendedDestination(
      name: "Luxurious Aspen",
      image: "assets/images/luxurious-image.png",
      time: "2N/3D",
    ),
  ];
}
