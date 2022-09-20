import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:numberapi/number_api_reso/number_api_reso.dart';

Future<NumberApiReso> getNumberFact({required String number}) async {
  final _response =
      await http.get(Uri.parse("http://numbersapi.com/$number?json"));
  final _bodyAsJson = jsonDecode(_response.body) as Map<String, dynamic>;
  final _data = NumberApiReso.fromJson(_bodyAsJson);
  print(_bodyAsJson);
  return _data;
}
