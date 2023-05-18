import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:understand_providers/provder/count_provider.dart';
import 'package:understand_providers/provder/screens/cout_example.dart';
import 'package:understand_providers/statefullwidget.dart';
import 'package:understand_providers/understand_provider.dart';

import 'statelesswidget.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_)=> CountProvider(),
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CountExample(),
      ),
    );

  }
}
