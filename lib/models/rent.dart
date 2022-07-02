class RentCar {
  final int id;
  final String title, description;
  final List<String> images;
  final double rating;
  final bool isPopular;

  RentCar({
    required this.id,
    required this.images,
    this.rating = 0.0,
    this.isPopular = false,
    required this.title,
    required this.description,
  });
}

// Our demo Rent Cars

List<RentCar> demoRentCar = [
  RentCar(
    id: 1,
    images: [
      "assets/images/car_1_1.png",
      "assets/images/car_1_2.png",
      "assets/images/car_1_3.png",
    ],
    title: "Innova Reborn",
    description: descriptioncar1,
    rating: 4.7,
    isPopular: true,
  ),
  RentCar(
    id: 2,
    images: [
      "assets/images/car_2_1.png",
      "assets/images/car_2_2.png",
      "assets/images/car_2_3.png",
    ],
    title: "Toyota Alphard",
    description: descriptioncar2,
    rating: 4.1,
    isPopular: true,
  ),
  RentCar(
    id: 3,
    images: [
      "assets/images/car_3_1.png",
      "assets/images/car_3_2.png",
    ],
    title: "Avanza",
    description: descriptioncar3,
    rating: 4.1,
    isPopular: true,
  ),
  RentCar(
    id: 4,
    images: [
      "assets/images/car_4_1.png",
      "assets/images/car_4_2.png",
      "assets/images/car_4_3.png",
      "assets/images/car_4_4.png",
    ],
    title: "Toyota Hiace",
    description: descriptioncar4,
    rating: 4.1,
    isPopular: true,
  ),
];

const String descriptioncar1 =
    "This is description of Innova Reborn.";
const String descriptioncar2 =
    "This is description of Toyota Alphard.";
const String descriptioncar3 =
    "This is description of Toyota Avanza.";
const String descriptioncar4 =
    "This is description of Toyota Hiace.";
