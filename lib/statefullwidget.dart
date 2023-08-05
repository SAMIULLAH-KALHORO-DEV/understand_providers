import 'package:flutter/material.dart';

// ignore: must_be_immutable
class StateFullWidget extends StatefulWidget {
  StateFullWidget({super.key});

  @override
  State<StateFullWidget> createState() => _StateFullWidgetState();
}

class _StateFullWidgetState extends State<StateFullWidget> {
  var x = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("StatefullWidget"))),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(DateTime.now().toString()),
          Container(
            child: Center(
              child: Text(
                x.toString(),
                style: TextStyle(fontSize: 50),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          x++;
          print(x);
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
