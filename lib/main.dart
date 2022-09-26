import 'package:flutter/material.dart';
import 'package:flutter_gametoy/home.dart';
import 'package:flutter_gametoy/jeu/taquin/homepage.dart';
import 'package:flutter_gametoy/jeu/tictactoe/main.dart';
import 'package:hive_flutter/adapters.dart';
import 'homepage.dart';

void main() async {
  await Hive.initFlutter();
  //open de la box
  var box = await Hive.openBox('taquin');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GameToy',
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
