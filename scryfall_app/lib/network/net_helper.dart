import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.urlBase);

  final String urlBase;

  /// Request to get data
  Future getData(String endpoint) async {
    http.Response response = await http.get(Uri.parse(urlBase + endpoint));

    if (response.statusCode == 200) {
      String data = response.body;

      return jsonDecode(data);
    } else {
      // ignore: avoid_print
      print(response.statusCode);
    }
  }
}