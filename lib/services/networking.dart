import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkHelper {
  NetworkHelper(
      {required this.site, required this.path, required this.parameters});

  final String site;
  final String path;
  final Map<String, String> parameters;

  Future getData() async {
    var url = Uri.https(
      site,
      path,
      parameters,
    );
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      String data = response.body;

      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
