import 'package:flutter/material.dart';

import 'components/body.dart';

class RegisSuccessScreen extends StatelessWidget {
  static String routeName = "/regis_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text("Registrasion Success"),
      ),
      body: Body(),
    );
  }
}
