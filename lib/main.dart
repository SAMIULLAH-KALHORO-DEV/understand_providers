import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:understand_providers/provder/count_provider.dart';
import 'package:understand_providers/provder/example_one_provider.dart';
import 'package:understand_providers/provder/favorite_provider.dart';
import 'package:understand_providers/provder/screens/cout_example.dart';
import 'package:understand_providers/provder/screens/dark_theme.dart';
import 'package:understand_providers/provder/screens/example_one.dart';
import 'package:understand_providers/provder/screens/favorite/favorite_screen.dart';
import 'package:understand_providers/provder/screens/notify_lister_screen.dart';
import 'package:understand_providers/provder/theme_changer_provider.dart';
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
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => CountProvider()),
          ChangeNotifierProvider(create: (_) => ExampleOneProvider()),
          ChangeNotifierProvider(create: (_) => FavoriteItemProvider()),
          ChangeNotifierProvider(create: (_) => ThemeChanger()),
        ],
        child: Builder(builder: (BuildContext context) {
          final themeChanger = Provider.of<ThemeChanger>(context);

          return MaterialApp(
            themeMode: themeChanger.themeMode,
            theme: ThemeData(brightness: Brightness.light),
            darkTheme: ThemeData(brightness: Brightness.dark),
            debugShowCheckedModeBanner: false,
            home: NotifyListenerScreen(),
          );
        }));
  }
}
