import 'package:flutter/material.dart';
import 'package:finalproj/components/default_button.dart';
import 'package:finalproj/models/rent.dart';
import 'package:finalproj/size_config.dart';
import 'package:finalproj/screens/register/register_rent_screen.dart'; // TODO : TO REGISTER RENT SCREEN

import 'description.dart';
import 'top_rounded_container.dart';
import 'images.dart';

class Body extends StatelessWidget {
  final RentCar rentcar;

  const Body({Key? key, required this.rentcar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        RentCarImages(rentcar: rentcar),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              RentCarDescription(
                rentcar: rentcar,
                pressOnSeeMore: () {},
              ),
              TopRoundedContainer(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: SizeConfig.screenWidth * 0.15,
                    right: SizeConfig.screenWidth * 0.15,
                    bottom: getProportionateScreenWidth(150),
                    top: getProportionateScreenWidth(140),
                  ),
                  child: DefaultButton(
                    text: "Register Rent",
                    press: () {
                      Navigator.pushNamed(
                          context, TourRegisterScreen.routeName);
                    }, // TODO : BUTTON TO REGISTER RENT SCREEN
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
