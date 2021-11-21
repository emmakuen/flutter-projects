import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'KRW',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

class CoinData {
  Future<dynamic> getExchangeRate(String currency) async {
    String key = dotenv.get('KEY').toString();
    String baseUrl = dotenv.get('BASE_URL').toString();
    Map<String, String> requestHeaders = {'X-CoinAPI-Key': key};
    Map<String, dynamic> allExchangeData = {};
    var client = http.Client();
    try {
      for (String crypto in cryptoList) {
        var url = Uri.parse("$baseUrl/$crypto/$currency");
        var res = await http.get(url, headers: requestHeaders);
        if (res.statusCode == 200) {
          var jsonResponse = convert.jsonDecode(res.body);
          allExchangeData[crypto] = jsonResponse;
        } else {
          print('Request for $crypto failed with status: ${res.statusCode}');
        }
      }
      return allExchangeData;
    } finally {
      client.close();
    }
  }
}
