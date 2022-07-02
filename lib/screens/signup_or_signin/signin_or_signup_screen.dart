import 'package:flutter/material.dart';
import 'package:finalproj/screens/signup_or_signin/components/body.dart';
import 'package:finalproj/size_config.dart';

class RegisOrLoginScreen extends StatelessWidget {
  static String routeName = "/regis_or_login";
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
