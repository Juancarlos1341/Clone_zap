import 'package:clone_do_zap/screens/first_screen.dart';
import 'package:clone_do_zap/screens/select_theme_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clone do Zap',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      initialRoute: '/',
      routes: {
        '/Personalização': (context) => ThemeChoice(),

      },
      home: HomeScreen(),
    );
  }
}