import 'package:flutter/material.dart';
import 'package:scryfall_app/pages/main_page.dart';

import 'resources/globals.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            backgroundColor: kgrey,
            centerTitle: true,
            foregroundColor: kwhite
          ),
        scaffoldBackgroundColor: kpurple,
      ),
      home: MainPage(),
    );
  }
}
