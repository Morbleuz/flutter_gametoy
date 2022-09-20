import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.black,
            title: const SizedBox(
              child: Text('gameToy'),
            )),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Bienvenue sur le meilleur émulateur au monde',
                style: TextStyle(),
              ),
              ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/route2'),
                  child: const Text('Taquin')),
              ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/route3'),
                  child: Text('Tic Tac Toe')),
            ],
          ),
        ));
  }
}
