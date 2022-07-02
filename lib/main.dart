import 'package:flutter/material.dart';
import './routes.dart';
import './screens/splash/splash_screen.dart';
import './theme.dart';

import 'package:firebase_core/firebase_core.dart';

void main() async {
  runApp(MyApp());
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyAPc6xWZm6uMvPECAqmbetGF9188ri0oQI",
      appId: "rent-cars-ced82",
      messagingSenderId: "997561684147",
      projectId: "rent-cars-ced82",
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'finalproj',
      theme: theme(),
      // tutustk use routeName so that we dont need to remember the name
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
