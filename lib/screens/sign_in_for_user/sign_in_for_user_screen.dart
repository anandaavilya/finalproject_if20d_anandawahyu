import 'package:flutter/material.dart';

import 'components/body.dart';

class SignInForUserScreen extends StatelessWidget {
  static String routeName = "/sign_in_for_user";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
      ),
      body: Body(),
    );
  }
}
