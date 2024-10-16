import "dart:io";

void main() {

  print("CALCULADORA");
  print("introducza el primer numero");
  int num1 = int.parse(stdin.readLineSync().toString());
  print("introducza el segundo numero");
  int num2 = int.parse(stdin.readLineSync().toString());
  print("introduzca el tipo de operación que quieres realizar\n1- sumar\n2- restar\n3- multiplicar\n4- dividir\n");
  int tipo = int.parse(stdin.readLineSync().toString());
    print("El resultado es:");

  switch(tipo){
    case 1:
      print((num1 + num2));
      break;
      
        case 2:
      print((num1 - num2));
      break;

        case 3:
      print((num1 * num2));
      break;

        case 4:
      print((num1 / num2));
      break;
  }
}
