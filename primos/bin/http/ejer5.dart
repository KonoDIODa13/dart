import 'dart:convert';

import 'package:http/http.dart' as http;

main() async {
  var url =
      Uri.https('jsonplaceholder.typicode.com', 'posts/1', {'q': '{http}'});
  var response = await http.get(url);
  if (response.statusCode == 200) {
    print('estado de la respuesta ${response.statusCode}');
    var jsonResponse = jsonDecode(response.body) as Map<String, dynamic>;
    for (var element in jsonResponse.entries) {
      print("clave: ${element.key} , valor: ${element.value}.");
    }
  } else {
    print("estado del error ${response.statusCode}");
  }
}
