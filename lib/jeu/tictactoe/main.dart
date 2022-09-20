import 'package:flutter/material.dart';
import 'model/tictactoe.dart';

class TicTacToePage extends StatefulWidget {
  const TicTacToePage({Key? key}) : super(key: key);
  @override
  State<TicTacToePage> createState() => _TicTacToePage();
}

class _TicTacToePage extends State<TicTacToePage> {
  Tictactoe tictactoe = Tictactoe();
  String etat = " ";
  void _vide() {
    setState(() {
      tictactoe.vide();
      tictactoe.setTour();
      _etat();
    });
  }

  void _etat() {
    setState(() {
      //Si les tours sont égales à 9 alors il faut regarder si il est nul
      if (tictactoe.getTour() == 0) {
        etat = "Appuyez sur une case ! (Début avec les X) ";
      } else if (tictactoe.getTour() < 9 && !tictactoe.fini()) {
        etat = "C'est au joueur " + tictactoe.choixJoueur() + " de jouer !";
      } else {
        if (tictactoe.nul()) {
          etat = "Nul";
        } else if (tictactoe.getTour() % 2 == 0) {
          etat = "Joueur O win ! ";
        } else {
          etat = "Joueur X win !";
        }
      }
    });
  }

  void _change(int y, int x) {
    setState(() {
      if (!tictactoe.getPlateau().casePrise(y, x) &&
          tictactoe.getTour() < 9 &&
          !tictactoe.fini()) {
        tictactoe.getPlateau().getList()[y][x] = tictactoe.choixJoueur();
        tictactoe.incrementTours();
        _etat();
      } else {
        etat = "Attention vous ne pouvez pas jouer ici.";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    _etat();
    return Scaffold(
      appBar: AppBar(
        title: Text('Tic Tac Toe'),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.fromLTRB(40, 0, 40, 40),
            child: Text(
              etat,
            ),
          ),

          //Première ligne
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    height: 120,
                    padding: const EdgeInsets.all(20),
                    child: TextButton(
                        onPressed: () => _change(0, 0),
                        child: Text(tictactoe.getPlateau().getList()[0][0])),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    height: 120,
                    padding: const EdgeInsets.all(20),
                    child: TextButton(
                        onPressed: () => _change(0, 1),
                        child: Text(tictactoe.getPlateau().getList()[0][1])),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    height: 120,
                    padding: const EdgeInsets.all(20),
                    child: TextButton(
                        onPressed: () => _change(0, 2),
                        child: Text(tictactoe.getPlateau().getList()[0][2])),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                  ),
                ],
              )
            ],
          ),
          //deuxième ligne
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    height: 120,
                    padding: const EdgeInsets.all(20),
                    child: TextButton(
                        onPressed: () => _change(1, 0),
                        child: Text(tictactoe.getPlateau().getList()[1][0])),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    height: 120,
                    padding: const EdgeInsets.all(20),
                    child: TextButton(
                        onPressed: () => _change(1, 1),
                        child: Text(tictactoe.getPlateau().getList()[1][1])),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    height: 120,
                    padding: const EdgeInsets.all(20),
                    child: TextButton(
                        onPressed: () => _change(1, 2),
                        child: Text(tictactoe.getPlateau().getList()[1][2])),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                  ),
                ],
              )
            ],
          ),
          //
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    height: 120,
                    padding: const EdgeInsets.all(20),
                    child: TextButton(
                        onPressed: () => _change(2, 0),
                        child: Text(tictactoe.getPlateau().getList()[2][0])),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    height: 120,
                    padding: const EdgeInsets.all(20),
                    child: TextButton(
                        onPressed: () => _change(2, 1),
                        child: Text(tictactoe.getPlateau().getList()[2][1])),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    height: 120,
                    padding: const EdgeInsets.all(20),
                    child: TextButton(
                        onPressed: () => _change(2, 2),
                        child: Text(tictactoe.getPlateau().getList()[2][2])),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: _vide,
        tooltip: 'Recommencer',
        child: const Icon(Icons.restart_alt),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
