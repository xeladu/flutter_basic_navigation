import 'package:flutter/material.dart';

class Help extends StatefulWidget {
  const Help({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Help")),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
              onPressed: () =>
                  Navigator.of(context).pop({"result": true, "data": "123"}),
              child: const Text("Go back")),
          Container(height: 10),
          Text(
              "Can I go back? ${Navigator.of(context).canPop() ? "Yes" : "No"}")
        ])));
  }
}
