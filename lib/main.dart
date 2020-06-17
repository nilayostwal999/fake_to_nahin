import 'package:fake_to_nahin/screens/MyPostsScreen.dart';
import 'package:fake_to_nahin/screens/SavedPostsScreen.dart';
import 'package:flutter/material.dart';
import 'screens/HomeScreen.dart';
import 'screens/SignInScreen.dart';
import 'screens/SignUpScreen.dart';
import 'screens/PostScreen.dart';
import 'screens/ProfileScreen.dart';

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
        'Home': (context) => HomeScreen(),
        //'CreatePost':(context) => CreatePostScreen(),
        'Profile': (context) => ProfileScreen(),
        //'EditProfile': (context) => EditProfileScreen(),
        'Post': (context) => PostScreen(),
        'MyPosts': (context) => MyPostsScreen(),
        'SavedPosts': (context) => SavedPostsScreen()
      },
    );
  }
}