import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

main() async {
  var url =
      Uri.https('jsonplaceholder.typicode.com', 'posts/1', {'q': '{http}'});

  var response = await http.get(url);
  if (response.statusCode == 200) {
    var fichero = File.fromUri(url);
    var nuevaUrl = "bin/http/";
    fichero.copy(nuevaUrl);
  } else {
    print("estado del error ${response.statusCode}");
  }
}
// chinese-dragon-zodiac-png-5690513.svg
