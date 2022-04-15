import 'package:flutter/material.dart';
import 'package:flutter_basic_navigation/predefined_routes/help.dart';
import 'package:flutter_basic_navigation/predefined_routes/login.dart';
import 'package:flutter_basic_navigation/predefined_routes/settings.dart';
import 'package:flutter_basic_navigation/predefined_routes/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case "/home":
            return MaterialPageRoute(builder: (context) => const Home());
          case "/login":
            return MaterialPageRoute(builder: (context) => const Login());
          case "/settings":
            return MaterialPageRoute(builder: (context) => const Settings());
          case "/help":
            return MaterialPageRoute(builder: (context) => const Help());
          default:
            return MaterialPageRoute(builder: (context) => const Home());
        }
      },
    );
  }
}
