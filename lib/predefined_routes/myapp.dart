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
      initialRoute: "/home",
      routes: {
        "/home": (context) => const Home(),
        "/login": (context) => const Login(),
        "/settings": (context) => const Settings(),
        "/help": (context) => const Help(),
      },
    );
  }
}
