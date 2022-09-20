import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_gametoy/home.dart';
import 'package:flutter_gametoy/homepage.dart';

class SplashScreenState extends State<HomePage> {
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: ((context) => Home()))));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            child: Image.asset('assets/images/logo.png'),
          ),
          const CircularProgressIndicator(
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
