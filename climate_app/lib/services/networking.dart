import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'dart:convert';
import 'package:climate_app/utilities/constants.dart';

String baseUrl = dotenv.env['BASE_URL'].toString();
String key = dotenv.env['KEY'].toString();

Future getLocationWeatherData(double lat, double lon) async {
  var requestUrl =
      Uri.parse('$baseUrl?lat=$lat&lon=$lon&units=$kTempUnit&appid=$key');
  http.Response response = await http.get(requestUrl);
  if (response.statusCode == 200) {
    String data = response.body;
    return jsonDecode(data);
  } else {
    print(response.statusCode);
  }
}

Future getCityWeatherData(String cityName) async {
  var requestUrl =
      Uri.parse('$baseUrl?q=$cityName&units=$kTempUnit&appid=$key');
  http.Response response = await http.get(requestUrl);
  if (response.statusCode == 200) {
    String data = response.body;
    return jsonDecode(data);
  } else {
    print(response.statusCode);
  }
}
