import 'package:flutter/material.dart';

class NotifyListenerScreen extends StatelessWidget {
  NotifyListenerScreen({super.key});

  ValueNotifier<int> _counter = ValueNotifier<int>(0);
  ValueNotifier<bool> toggle = ValueNotifier<bool>(true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Notify Listener")),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        ValueListenableBuilder(
          valueListenable: _counter,
          builder: (context, value, child) {
            return Center(
              child: Text(
                _counter.value.toString(),
                style: TextStyle(fontSize: 50),
              ),
            );
          },
        ),
        ValueListenableBuilder(
          valueListenable: toggle,
          builder: (context, value, child) {
            return TextFormField(
              obscureText: toggle.value,
              decoration: InputDecoration(
                  hintText: "Passowrd",
                  suffix: InkWell(
                    onTap: () {
                      toggle.value = !toggle.value;
                    },
                    child: Icon(toggle.value
                        ? Icons.visibility_off_outlined
                        : Icons.visibility),
                  )),
            );
          },
        )
      ]),
      floatingActionButton: FloatingActionButton(onPressed: () {
        _counter.value++;
        print(_counter.value.toString());
      }),
    );
  }
}
