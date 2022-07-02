import 'package:flutter/material.dart';

import 'components/body.dart';

class SignUpForUserScreen extends StatelessWidget {
  static String routeName = "/sign_up_for_user";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: Body(),
    );
  }
}