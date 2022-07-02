import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'banner.dart';
import 'home_header.dart';
import 'popular_car.dart';
import 'recent_tour.dart';
import 'special_offers.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(10)),
            ThisRentCar(),
            SpecialRentCarOffers(),
            SizedBox(height: getProportionateScreenWidth(30)),
            Popular(),
            SizedBox(height: getProportionateScreenWidth(30)),
            Recent(),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}
