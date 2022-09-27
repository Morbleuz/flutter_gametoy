import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
            actions: const [
              IconButton(onPressed: null, icon: Icon(Icons.info))
            ],
            backgroundColor: Colors.indigo,
            title: SizedBox(
              child: Row(
                children: [
                  SizedBox(
                    height: 32,
                    child: Image.asset('assets/images/logo.png'),
                  ),
                  const Padding(padding: EdgeInsets.all(10)),
                  const Text(
                    'G a m e To y',
                    style: TextStyle(fontSize: 30, fontFamily: 'Arcade'),
                  )
                ],
              ),
            )),
        body: Center(
          child: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Card(
                  color: Color.fromARGB(255, 76, 98, 221),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: const [
                        Text(
                          'Bienvenue sur GameToy ! 🎮',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          'Une solution simple pour jouer à vos jeux retro.',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  )),
              const Padding(padding: EdgeInsets.all(20)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        const Text(
                          'Morpion',
                          style: TextStyle(
                              fontFamily: 'Arcade',
                              color: Colors.black,
                              fontSize: 40),
                        ),
                        const Padding(padding: EdgeInsets.all(2)),
                        const Text(
                            'Jeu développé pendant ma 1ère année de BTS SIO, découverte de Flutter.'),
                        const Padding(padding: EdgeInsets.all(2)),
                        SizedBox(
                          width: 200,
                          height: 40,
                          child: ElevatedButton(
                              style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll<Color>(
                                        Color.fromARGB(255, 76, 98, 221)),
                              ),
                              onPressed: () =>
                                  Navigator.pushNamed(context, '/route3'),
                              child: const Text(
                                'PLAY',
                                style: TextStyle(
                                    fontFamily: 'Arcade', fontSize: 35),
                              )),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      width: 150,
                      height: 150,
                      child: Image.asset('assets/images/morpion.jpg'),
                    ),
                  )
                ]),
              ),
              const Padding(padding: EdgeInsets.all(10)),
              Padding(
                padding: EdgeInsets.all(8),
                child: Row(children: [
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      width: 150,
                      height: 150,
                      child: Image.asset('assets/images/taquin.png'),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        const Text(
                          'Taquin',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontFamily: 'Arcade'),
                        ),
                        const Padding(padding: EdgeInsets.all(2)),
                        const Text(
                            'Jeu développé en 2ème année, découverte de nouveaux composants et intégration de package (Hive, confetti)'),
                        const Padding(padding: EdgeInsets.all(2)),
                        SizedBox(
                          width: 200,
                          height: 40,
                          child: ElevatedButton(
                              style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll<Color>(
                                        Color.fromARGB(255, 76, 98, 221)),
                              ),
                              onPressed: () =>
                                  Navigator.pushNamed(context, '/route2'),
                              child: const Text(
                                'PLAY',
                                style: TextStyle(
                                    fontFamily: 'Arcade', fontSize: 35),
                              )),
                        ),
                      ],
                    ),
                  ),
                ]),
              )
            ]),
          ),
        ));
  }
}
