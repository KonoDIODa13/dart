import 'dart:io';

void main() {
  bool esPrimo(num) {
    if (num < 2) {
      return false;
    }
    for (int i = 2; i < num / 2; i++) {
      if (num % i == 0) {
        return false;
      }
    }
    return true;
  }

  print("Escriba un número\n");

  int num = int.parse(stdin.readLineSync()!);
  print("num maximo $num");
  print("lista:");
  for (int i = 2; i < num; i++) {
    if (esPrimo(i)) {
      print(i);
    }
  }
}
