import 'package:flutter/material.dart';

import 'components/body.dart';

class VerifEmailSuccessScreen extends StatelessWidget {
  static String routeName = "/verif_email_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        // title: Text("Verification Email Success"),
      ),
      body: Body(),
    );
  }
}
