import 'package:flutter/material.dart';
import 'package:finalproj/screens/signin_as/components/body.dart';
import 'package:finalproj/size_config.dart';

class LoginasScreen extends StatelessWidget {
  static String routeName = "/login_as";
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
