import 'dart:io';

void main() {
  print("Escribe un numero");
  int limite = int.parse(stdin.readLineSync()!);
  bool esPrimo = true;
  print("");
  for (int numActual = 2; numActual <= limite; numActual++) {
    for (int i = 2; i < numActual; i++) {
      if (numActual % i == 0) {
        esPrimo = false;
      }
    }
    if (esPrimo) {
      print(numActual);
    }
    esPrimo = true;
  }
}
