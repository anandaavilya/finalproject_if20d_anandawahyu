import 'package:flutter/material.dart';
import 'package:finalproj/screens/signin_as/signin_as_screen.dart';
import 'package:finalproj/screens/signup_as/signup_as_screen.dart';
import 'package:finalproj/size_config.dart';

// This is the best practice
import '../components/regis_or_login_content.dart';
import '../../../components/default_button.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Map<String, String>> splashData = [
    {
      "text": "Please register or login if you already have an account.",
      "image": "assets/images/regis_or_login.png"
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
                      text: "Register",
                      press: () {
                        Navigator.pushNamed(
                            context,
                            RegisasScreen
                                .routeName); // TODO : BUTTON NENG LOGIN SCREEN
                      },
                    ),
                    Spacer(),
                    DefaultButton(
                      text: "Login",
                      press: () {
                        Navigator.pushNamed(
                            context,
                            LoginasScreen
                                .routeName); // TODO : BUTTON NENG LOGIN SCREEN
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
