import 'package:flutter/material.dart';

import '../../../size_config.dart';

class ThisRentCar extends StatelessWidget {
  const ThisRentCar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 90,
      width: double.infinity,
      margin: EdgeInsets.all(getProportionateScreenWidth(20)),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
        vertical: getProportionateScreenWidth(15),
      ),
      decoration: BoxDecoration(
        color: Color(0xFF9143FF),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text.rich(
        TextSpan(
          style: TextStyle(color: Colors.white),
          children: [
            TextSpan(
              text: "Kontol\n",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(20),
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: "You can find the best patner here, enjoy !",
              // style: TextStyle(
              //   fontSize: getProportionateScreenWidth(20),
              //   fontWeight: FontWeight.bold,
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
