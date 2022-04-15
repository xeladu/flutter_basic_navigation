import 'package:flutter/material.dart';
import 'package:flutter_basic_navigation/push_pop/help.dart';
import 'package:flutter_basic_navigation/push_pop/login.dart';
import 'package:flutter_basic_navigation/push_pop/settings.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _State();
}

class _State extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              ElevatedButton(
                  onPressed: _pushLogin, child: const Text("Go to login")),
              Container(height: 10),
              ElevatedButton(
                  onPressed: _pushSettings,
                  child: const Text("Go to settings")),
              Container(height: 10),
              ElevatedButton(
                  onPressed: _pushHelp,
                  child: const Text("Go to help and wait for result")),
              Container(height: 10),
              Text(
                  "Can I go back? ${Navigator.of(context).canPop() ? "Yes" : "No"}"),
              Container(height: 10),
              ElevatedButton(
                  onPressed: _pushLoginAndReplaceHome,
                  child: const Text("Go to login and replace Home")),
            ])));
  }

  void _pushLogin() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const Login()));
  }

  void _pushSettings() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const Settings()));
  }

  Future _pushHelp() async {
    Map<String, dynamic> res = await Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const Help()));

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("${res["result"]}, ${res["data"]}"),
    ));
  }

  void _pushLoginAndReplaceHome() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const Login()));
  }
}
