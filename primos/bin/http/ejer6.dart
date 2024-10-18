import "dart:io";

Future<void> main() async {
  var nombreArchivo = 'bin/http/prueba.txt'; //es la ruta (relativa)
  var file = File(nombreArchivo);
  var directory = file.parent;
  var content = await file.readAsString();
  var lastModified = await file.lastModified();
  directory.watch().listen((event) {
    switch (event.type) {
      case FileSystemEvent.create:
        print("el archivo ${event.path} se ha creado");
        break;
      case FileSystemEvent.modify:
        print("el archivo ${event.path} se ha modificado");
        break;
      case FileSystemEvent.delete:
        print("el archivo ${event.path} se ha eliminado");
        break;
      case FileSystemEvent.move:
        print("el archivo ${event.path} se ha movido");
        break;
    }
  });
  print(content);
  print("longitud del archivo ${content.length}");
  print(lastModified);
}
