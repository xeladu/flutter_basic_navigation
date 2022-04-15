import 'package:flutter/material.dart';

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
              onPressed: () => Navigator.of(context).pushNamed("/settings"),
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
              onPressed: () =>
                  Navigator.of(context).pushReplacementNamed("/home"),
              child: const Text("Go to Home and replace Login")),
        ])));
  }
}
