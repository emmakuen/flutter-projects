import 'package:flutter/material.dart';
import 'package:bitcoin_ticker/coin_data.dart';

Widget getTicker(
    {String exchangeData = "?",
    String selectedCurrency = "USD",
    String cryptoName = 'BTC'}) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
    child: Card(
      color: Colors.lightBlueAccent,
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
        child: Text(
          '1 $cryptoName = $exchangeData $selectedCurrency',
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
      ),
    ),
  );
}
