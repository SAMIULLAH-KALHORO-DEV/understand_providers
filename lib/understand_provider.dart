import 'dart:async';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UnderstandProvider extends StatefulWidget {
  UnderstandProvider({super.key});

  @override
  State<UnderstandProvider> createState() => _UnderstandProviderState();
}

class _UnderstandProviderState extends State<UnderstandProvider> {
  var x = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      x++;
      print(x);
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("StateFullwidget"))),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          child: Center(
            child: Text(
                x.toString() +
                    "\n" +
                    DateTime.now().hour.toString() +
                    ":" +
                    DateTime.now().minute.toString() +
                    ":" +
                    DateTime.now().second.toString(),
                style: TextStyle(fontSize: 50)),
          ),
        )
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          x++;
          print(x);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
