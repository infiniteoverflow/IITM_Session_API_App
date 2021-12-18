import 'dart:convert';

import 'package:api_test/models/api.dart';
import 'package:http/http.dart' as http;

Future fetchApi() async {
  final url = "https://musical-api.herokuapp.com/api";

  final response = await http.put(Uri.parse(url));

  if(response.statusCode!=200) {
    return null;
  } else {
    Map<String,dynamic> jsonResponse = json.decode(response.body);
    Rows rows = Rows.fromList(jsonResponse["rows"]);

    return rows;
  }
}