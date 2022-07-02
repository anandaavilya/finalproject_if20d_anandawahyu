import 'package:flutter/material.dart';
import 'package:finalproj/components/rent_card.dart';
import 'package:finalproj/models/rent.dart';

import '../../../size_config.dart';
import 'section_title.dart';

class Popular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(title: "Popular Car", press: () {}),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoRentCar.length,
                (index) {
                  if (demoRentCar[index].isPopular)
                    return RentCarCard(rentcar: demoRentCar[index]);

                  return SizedBox
                      .shrink(); // here by default width and height is 0
                },
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        )
      ],
    );
  }
}
