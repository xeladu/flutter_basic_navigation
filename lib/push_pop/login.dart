import 'package:flutter/material.dart';
import 'package:flutter_basic_navigation/push_pop/home.dart';
import 'package:flutter_basic_navigation/push_pop/settings.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Login")),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
              onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Settings())),
              child: const Text("Go to settings")),
          Container(height: 10),
          ElevatedButton(
              onPressed: () => Navigator.of(context).canPop()
                  ? Navigator.of(context).pop()
                  : null,
              child: const Text("Go back")),
          Container(height: 10),
          Text(
              "Can I go back? ${Navigator.of(context).canPop() ? "Yes" : "No"}"),
          Container(height: 10),
          ElevatedButton(
              onPressed: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const Home())),
              child: const Text("Go to Home and replace Login")),
        ])));
  }
}
