import 'IHM.dart';
import 'tictactoe.dart';

void main(List<String> arguments) {
  Tictactoe tictactoe = new Tictactoe();

  while (tictactoe.getTour() < 9 && tictactoe.fini() != true) {
    IHM.affichePlateau(tictactoe.getPlateau());
    IHM.choixJoueur(tictactoe);
    tictactoe.incrementTours();
  }
  IHM.affichePlateau(tictactoe.getPlateau());
  IHM.voirGagnant(tictactoe);
}
