import 'package:flutter/material.dart';
import 'package:finalproj/models/rent.dart';
import 'package:finalproj/screens/details/details_screen.dart';

import '../constants.dart';
import '../size_config.dart';

class RentCarCard extends StatelessWidget {
  const RentCarCard({
    Key? key,
    this.width = 180,
    this.aspectRetio = 1.02,
    required this.rentcar,
  }) : super(key: key);

  final double width, aspectRetio;
  final RentCar rentcar;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(width),
        child: GestureDetector(
          onTap: () => Navigator.pushNamed(
            context,
            DetailsScreen.routeName,
            arguments: RentCarDetailsArguments(rentcar: rentcar),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1.45,
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                  decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Hero(
                    tag: rentcar.id.toString(),
                    child: Image.asset(rentcar.images[0]),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                rentcar.title,
                style: TextStyle(color: Colors.black),
                maxLines: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
