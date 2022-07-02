import 'package:flutter/material.dart';
import 'package:finalproj/screens/sign_up_for_user/sign_up_for_user_screen.dart';
import 'package:finalproj/screens/sign_up_for_admin/sign_up_for_admin_screen.dart';
import 'package:finalproj/screens/sign_up_for_patner/sign_up_for_patner_screen.dart';
import 'package:finalproj/size_config.dart';

// This is the best practice
import 'regis_as_content.dart';
import '../../../components/default_button.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Map<String, String>> splashData = [
    {
      "text": "Please register as Admin, User or Patner",
      "image": "assets/images/regis_as.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"],
                  text: splashData[index]['text'],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Spacer(),
                    DefaultButton(
                      text: "Register as User",
                      press: () {
                        Navigator.pushNamed(
                            context,
                            SignUpForUserScreen
                                .routeName); // TODO : BUTTON NENG REGISTER SCREEN
                      },
                    ),
                    Spacer(),
                    DefaultButton(
                      text: "Register as Admin",
                      press: () {
                        Navigator.pushNamed(
                            context,
                            SignUpForAdminScreen
                                .routeName); // TODO : BUTTON NENG REGISTER SCREEN
                      },
                    ),
                    Spacer(),
                    DefaultButton(
                      text: "Register as Partner",
                      press: () {
                        Navigator.pushNamed(
                            context,
                            SignUpForPatnerScreen
                                .routeName); // TODO : BUTTON NENG REGISTER SCREEN
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
