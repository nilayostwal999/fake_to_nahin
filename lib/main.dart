import 'package:fake_to_nahin/screen/HomeScreen.dart' as Home;
import 'package:fake_to_nahin/screen/SignInScreen.dart';
import 'package:fake_to_nahin/screen/SignUPScreen.dart';
import 'package:flutter/material.dart';
import 'util/drawer.dart' as drew;
import 'screen/homepage.dart' as homepage;
// import 'screen/newsview.dart' as newsview;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fake To Nahin',
      theme: ThemeData(
        primarySwatch: Colors.green,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: 'SignIn',
      routes: {
        'SignIn': (context) => SignInScreen(),
        'SignUp': (context) => SignUpScreen(),
        'Home': (context) => Home.HomeScreen(),
      },
    );
  }
}