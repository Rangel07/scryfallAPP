import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:scryfall_app/globals/globals.dart';

class NetworkHelper {

  /// Request to get from fuzzy search
  Future getFuzzy(String endpoint) async {
    http.Response response = await http.get(Uri.parse(urlFuzzy + endpoint));

    if (response.statusCode == 200) {
      String data = response.body;

      return jsonDecode(data);
    } else {
      // ignore: avoid_print
      print(response.statusCode);
    }
  }

  /// Request to get from normal search
  Future getSearch(String endpoint) async {
    http.Response response = await http.get(Uri.parse(urlSearch + endpoint));

    if (response.statusCode == 200) {
      String data = response.body;

      return jsonDecode(data);
    } else {
      // ignore: avoid_print
      print(response.statusCode);
    }
  }
}