import 'package:flutter/material.dart';
import 'package:finalproj/screens/sign_in_for_user/sign_in_for_user_screen.dart';
import 'package:finalproj/screens/sign_in_for_admin/sign_in_for_admin_screen.dart';
import 'package:finalproj/screens/sign_in_for_patner/sign_in_for_patner_screen.dart';
import 'package:finalproj/size_config.dart';

// This is the best practice
import 'login_as_content.dart';
import '../../../components/default_button.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Map<String, String>> splashData = [
    {
      "text": "Please login as Admin, User or Patner",
      "image": "assets/images/login_as.png"
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
                    Spacer(flex: 2),
                    DefaultButton(
                      text: "Login as User",
                      press: () {
                        Navigator.pushNamed(
                            context,
                            SignInForUserScreen
                                .routeName); // TODO : BUTTON LOGIN AS USER
                      },
                    ),
                    Spacer(),
                    DefaultButton(
                      text: "Login as Admin",
                      press: () {
                        Navigator.pushNamed(
                            context,
                            SignInForAdminScreen
                                .routeName); // TODO : BUTTON LOGIN AS ADMIN
                      },
                    ),
                    Spacer(),
                    DefaultButton(
                      text: "Login as Partner",
                      press: () {
                        Navigator.pushNamed(
                            context,
                            SignInForPatnerScreen
                                .routeName); // TODO : BUTTON LOGIN AS PATNER
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
