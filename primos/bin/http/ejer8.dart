import 'dart:io';

import 'package:http/http.dart' as http;

main() async {
  //https://img.freepik.com/vector-gratis/noche-oceano-paisaje-luna-llena-estrellas-brillan_107791-7397.jpg
  var url = Uri.https('img.freepik.com',
      'fotos-premium/vector-gratis/noche-oceano-paisaje-luna-llena-estrellas-brillan_107791-7397.jpg');

  var response = await http.get(url);

  if (response.statusCode == 200) {
    var urlToCpy = "bin/http/prueba.png";
    var fichero = File(urlToCpy);
    fichero.writeAsBytesSync(response.bodyBytes);

  } else {
    print("estado del error ${response.statusCode}");
  }
}
