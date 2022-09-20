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
              const Padding(padding: EdgeInsets.all(20)),
              SizedBox(
                width: 200,
                height: 60,
                child: ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(Colors.black),
                    ),
                    onPressed: () => Navigator.pushNamed(context, '/route2'),
                    child: const Text('Taquin')),
              ),
              const Padding(padding: EdgeInsets.all(10)),
              SizedBox(
                width: 200,
                height: 60,
                child: ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(Colors.black),
                    ),
                    onPressed: () => Navigator.pushNamed(context, '/route3'),
                    child: const Text('Tic Tac Toe')),
              ),
            ],
          ),
        ));
  }
}
