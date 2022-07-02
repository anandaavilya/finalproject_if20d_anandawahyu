import 'package:flutter/material.dart';

import 'components/body.dart';

class TourRegisterScreen extends StatelessWidget {
  static String routeName = "/register";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Sign Up"),
      // ),
      body: Body(),
    );
  }
}
