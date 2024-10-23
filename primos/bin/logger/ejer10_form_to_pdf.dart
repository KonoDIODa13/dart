import 'dart:io';
import 'package:pdf/widgets.dart' as pdf_creator;

Future<void> main(List<String> args) async {
  print("Escriba el nombre");
  var nombre = stdin.readLineSync().toString();
  print("Escriba el apellidos");
  var apellidos = stdin.readLineSync().toString();
  print("Escriba el gmail");
  var gmail = stdin.readLineSync().toString();
  print("Escriba el direccion");
  var direccion = stdin.readLineSync().toString();

  print("$nombre, $apellidos, $gmail, $direccion");

  final pdf = pdf_creator.Document();
  pdf.addPage(pdf_creator.Page(
      build: (pdf_creator.Context context) => pdf_creator.Center(
          child: pdf_creator.Text("Nombre: $nombre\nApellidos: $apellidos\nGmail: $gmail\nDireccion: $direccion"))));
  final file = File("./bin/logger/$nombre.pdf");
  await file.writeAsBytes(await pdf.save());
}
