// ignore_for_file: file_names

import 'dart:io';
import 'plateau.dart';
import 'tictactoe.dart';

class IHM {
  //Regarde si la partie est nul ou sinon cherche le gagnant avec le modulo
  static void voirGagnant(Tictactoe tictactoe) {
    if (tictactoe.nul() != true) {
      if (tictactoe.getTour() % 2 == 0) {
        print("Joueur O win ! ");
      } else {
        print("Joueur X win !");
      }
    } else {
      print("Aucun gagnant.");
    }
  }

  //Affichage du plateau
  static void affichePlateau(Plateau plateau) {
    print("---------------");
    for (int y = 0; y < 3; y++) {
      for (int x = 0; x < 3; x++) {
        stdout.write("| " + plateau.getList()[y][x].toString() + " |");
      }
      print("\n---------------");
    }
  }

  //Choix du joueur en fonction des cases déjà prise et du nombres de tours
  static void choixJoueur(Tictactoe tictactoe) {
    print("Choisir une valeur entre 1-9");

    bool valide = false;
    while (valide != true) {
      String choix = stdin.readLineSync().toString();
      while (choix != "1" &&
          choix != "2" &&
          choix != "3" &&
          choix != "4" &&
          choix != "5" &&
          choix != "6" &&
          choix != "7" &&
          choix != "8" &&
          choix != "9") {
        print("Saisir une valeur valide");
        choix = stdin.readLineSync().toString();
      }
      //Vérifier que la valeur n'est pas déjà prise
      if (choix == "1") {
        if (tictactoe.getPlateau().casePrise(0, 0) == false) {
          tictactoe.getPlateau().getList()[0][0] = tictactoe.choixJoueur();
          valide = true;
        } else {
          print("case déjà prise");
        }
      }
      if (choix == "2") {
        if (tictactoe.getPlateau().casePrise(0, 1) == false) {
          tictactoe.getPlateau().getList()[0][1] = tictactoe.choixJoueur();
          valide = true;
        } else {
          print("case déjà prise");
        }
      }
      if (choix == "3") {
        if (tictactoe.getPlateau().casePrise(0, 2) == false) {
          tictactoe.getPlateau().getList()[0][2] = tictactoe.choixJoueur();
          valide = true;
        } else {
          print("case déjà prise");
        }
      }
      if (choix == "4") {
        if (tictactoe.getPlateau().casePrise(1, 0) == false) {
          tictactoe.getPlateau().getList()[1][0] = tictactoe.choixJoueur();
          valide = true;
        } else {
          print("case déjà prise");
        }
      }
      if (choix == "5") {
        if (tictactoe.getPlateau().casePrise(1, 1) == false) {
          tictactoe.getPlateau().getList()[1][1] = tictactoe.choixJoueur();
          valide = true;
        } else {
          print("case déjà prise");
        }
      }
      if (choix == "6") {
        if (tictactoe.getPlateau().casePrise(1, 2) == false) {
          tictactoe.getPlateau().getList()[1][2] = tictactoe.choixJoueur();
          valide = true;
        } else {
          print("case déjà prise");
        }
      }
      if (choix == "7") {
        if (tictactoe.getPlateau().casePrise(2, 0) == false) {
          tictactoe.getPlateau().getList()[2][0] = tictactoe.choixJoueur();
          valide = true;
        } else {
          print("case déjà prise");
        }
      }
      if (choix == "8") {
        if (tictactoe.getPlateau().casePrise(2, 1) == false) {
          tictactoe.getPlateau().getList()[2][1] = tictactoe.choixJoueur();
          valide = true;
        } else {
          print("case déjà prise");
        }
      }
      if (choix == "9") {
        if (tictactoe.getPlateau().casePrise(2, 2) == false) {
          tictactoe.getPlateau().getList()[2][2] = tictactoe.choixJoueur();
          valide = true;
        } else {
          print("case déjà prise");
        }
      }
    }
  }
}
