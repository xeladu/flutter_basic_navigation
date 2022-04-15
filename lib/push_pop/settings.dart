import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Settings")),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text("Go back")),
          Container(height: 10),
          Text(
              "Can I go back? ${Navigator.of(context).canPop() ? "Yes" : "No"}")
        ])));
  }
}
