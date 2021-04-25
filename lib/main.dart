import 'package:flutter/material.dart';
import 'package:insta_clone/utils/router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Insta Clone',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouterManager.generateRoute,
      initialRoute: "/",
    );
  }
}


 