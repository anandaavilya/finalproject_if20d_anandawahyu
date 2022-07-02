import 'package:flutter/material.dart';

import 'components/body.dart';

class RentRegisSuccessScreen extends StatelessWidget {
  static String routeName = "/rent_regis_success";
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
