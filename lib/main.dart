import 'package:flutter/material.dart';
import 'package:understand_providers/statefullwidget.dart';

import 'statelesswidget.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home:  StateFullWidget(),);
  }
}
