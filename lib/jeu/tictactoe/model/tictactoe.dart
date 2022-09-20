import 'plateau.dart';

class Tictactoe {
  Plateau _plateau = new Plateau();
  int _nombreTour = 0;

  Tictactoe();

  void setTour(){
    this._nombreTour = 0;
  }
  int getTour() {
    return this._nombreTour;
  }

  //Définir les choix des joueurs
  String choixJoueur() {
    String choix = "O";
    if (this._nombreTour % 2 == 0) {
      choix = "X";
    }
    return choix;
  }

  Plateau getPlateau() {
    return this._plateau;
  }
  void vide(){
    this._plateau.vide();
    this._nombreTour = 0;
  }
  //Increment le tour
  void incrementTours() {
    this._nombreTour++;
  }

  //Vrai si il y un nul
  bool nul() {
    bool nul = false;
    if (fini() != true && getTour() ==9) {
      nul = true;
    }
    return nul;
  }

  //Vérification des règles
  bool fini() {
    bool fini = false;
    //En haut
    if (this._plateau.getList()[0][0] != " " &&
        this._plateau.getList()[0][0] == this._plateau.getList()[0][1] &&
        this._plateau.getList()[0][0] == this._plateau.getList()[0][2]) {
      fini = true;
    }
    //Milieu
    else if (this._plateau.getList()[1][0] != " " &&
        this._plateau.getList()[1][0] == this._plateau.getList()[1][1] &&
        this._plateau.getList()[1][0] == this._plateau.getList()[1][2]) {
      fini = true;
    }
    //Bas
    else if (this._plateau.getList()[2][0] != " " &&
        this._plateau.getList()[2][0] == this._plateau.getList()[2][1] &&
        this._plateau.getList()[2][0] == this._plateau.getList()[2][2]) {
      fini = true;
    }
    //Vertical gauche
    else if (this._plateau.getList()[0][0] != " " &&
        this._plateau.getList()[0][0] == this._plateau.getList()[1][0] &&
        this._plateau.getList()[0][0] == this._plateau.getList()[2][0]) {
      fini = true;
    }
    //Vertical milieu
    else if (this._plateau.getList()[0][1] != " " &&
        this._plateau.getList()[0][1] == this._plateau.getList()[1][1] &&
        this._plateau.getList()[0][1] == this._plateau.getList()[2][1]) {
      fini = true;
    }
    //Vertial droite
    else if (this._plateau.getList()[0][2] != " " &&
        this._plateau.getList()[0][2] == this._plateau.getList()[1][2] &&
        this._plateau.getList()[0][2] == this._plateau.getList()[2][2]) {
         
      fini = true;
    }
    //Diagonale gauche
    else if (this._plateau.getList()[0][0] != " " &&
        this._plateau.getList()[0][0] == this._plateau.getList()[1][1] &&
        this._plateau.getList()[0][0] == this._plateau.getList()[2][2]) {
      fini = true;
    }
    //Diagonale droite
    else if (this._plateau.getList()[0][2] != " " &&
        this._plateau.getList()[0][2] == this._plateau.getList()[1][1] &&
        this._plateau.getList()[0][2] == this._plateau.getList()[2][0]) {
      fini = true;
    }
    return fini;
  }
}
