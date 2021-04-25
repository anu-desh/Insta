import 'package:flutter/material.dart';
import 'package:insta_clone/screens/auth_ui/login.dart';
import 'package:insta_clone/screens/auth_ui/signup/email_signup.dart';
import 'package:insta_clone/screens/auth_ui/signup/signup.dart';
import 'package:insta_clone/screens/splash.dart';

class RouterManager {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // final args = settings.arguments;

    switch (settings.name) {

      //uncomment and import screens as they are created

      case '/':
        return MaterialPageRoute(builder: (context) => SplashScreen());
      // case '/loading':
      //   return MaterialPageRoute(
      //       builder: (context) => Loading());
      case '/login':
        return MaterialPageRoute(builder: (context) => Login());
      case '/signup':
        return MaterialPageRoute(builder: (context) => SignUp());
      case "/emailSignup":
        return MaterialPageRoute(builder: (context) => EmailSignUp());
    }
    return MaterialPageRoute(builder: (context) => SplashScreen());
  }
}
