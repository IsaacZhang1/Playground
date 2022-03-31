import 'package:flutter/material.dart';
import 'package:freshcut_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Freshcut app',
      theme: ThemeData(
        fontFamily: 'AktivGrotesk',
      ),
      home: const HomeScreen(),
    );
  }
}
