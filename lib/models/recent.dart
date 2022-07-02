import 'rent.dart';

class Cart {
  final RentCar rencar;
  final int numOfItem;

  Cart({required this.rencar, required this.numOfItem});
}

// Demo data for our cart

List<Cart> demoCarts = [
  Cart(rencar: demoRentCar[0], numOfItem: 2),
  Cart(rencar: demoRentCar[1], numOfItem: 1),
  Cart(rencar: demoRentCar[3], numOfItem: 1),
];
