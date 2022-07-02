import 'package:flutter/material.dart';

import 'components/body.dart';

class SignInForPatnerScreen extends StatelessWidget {
  static String routeName = "/sign_in_for_patner";
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
