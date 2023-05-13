import 'package:flutter/material.dart';

// ignore: must_be_immutable
class StateLessWidget extends StatelessWidget {
  StateLessWidget({super.key});
  var x = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("StateFullwidget"))),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          child: Center(
            child: Text(x.toString(), style: TextStyle(fontSize: 50)),
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
