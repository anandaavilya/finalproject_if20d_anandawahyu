import 'package:flutter/material.dart';
import 'package:finalproj/screens/signup_as/components/body.dart';
import 'package:finalproj/size_config.dart';

class RegisasScreen extends StatelessWidget {
  static String routeName = "/regis_as";
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
