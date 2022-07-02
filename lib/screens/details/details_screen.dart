import 'package:flutter/material.dart';

import '../../models/rent.dart';
import 'components/body.dart';
import 'components/custom_app_bar.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";

  @override
  Widget build(BuildContext context) {
    final RentCarDetailsArguments agrs =
        ModalRoute.of(context)!.settings.arguments as RentCarDetailsArguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(rating: agrs.rentcar.rating),
      ),
      body: Body(rentcar: agrs.rentcar),
    );
  }
}

class RentCarDetailsArguments {
  final RentCar rentcar;

  RentCarDetailsArguments({required this.rentcar});
}
