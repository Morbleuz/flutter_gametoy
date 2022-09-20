import 'package:flutter/material.dart';
import 'package:flutter_gametoy/home.dart';
import 'package:flutter_gametoy/jeu/taquin/taquinpage.dart';
import 'package:flutter_gametoy/jeu/tictactoe/main.dart';
import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: <String, WidgetBuilder>{
        '/route1': ((context) => Home()),
        '/route2': ((context) => TaquinPage()),
        '/route3': ((context) => TicTacToePage())
      },
    );
  }
}
