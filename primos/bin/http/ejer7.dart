import 'dart:io';

main() {
  print("Escribe un numero");
  int max = int.parse(stdin.readLineSync()!);
  Stream<int> contador =
      Stream.periodic(const Duration(seconds: 1), (x) => (max - x))
          .takeWhile((valor) => valor >= 0);
  contador.listen((data) {
    print("segundos para irme a casa $data");
  }).onDone(() => print("Ya `tas en casa"));
}
