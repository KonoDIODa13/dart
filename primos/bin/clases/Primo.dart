class Primo {
  late int num;

  Primo(this.num);

  void getPrimos() {
    bool esPrimo = true;
    print("");
    for (int numActual = 2; numActual <= num; numActual++) {
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
}
