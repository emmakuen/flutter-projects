import 'package:flutter/material.dart';
import 'package:bitcoin_ticker/coin_data.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;
import 'package:bitcoin_ticker/components/ticker.dart';

class PriceScreen extends StatefulWidget {
  const PriceScreen({Key? key}) : super(key: key);

  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  @override
  initState() {
    super.initState();
    setState(() {
      updateExchangeRate();
    });
  }

  String btcExchangeData = '?';
  String ethExchangeData = '?';
  String ltcExchangeData = '?';
  String selectedCurrency = currenciesList[0];

  void updateExchangeRate() async {
    var data = await CoinData().getExchangeRate(selectedCurrency);
    setState(() {
      btcExchangeData = data['BTC']['rate'].toStringAsFixed(0);
      ethExchangeData = data['ETH']['rate'].toStringAsFixed(0);
      ltcExchangeData = data['LTC']['rate'].toStringAsFixed(0);
    });
  }

  DropdownButton<String> androidDropdown() {
    List<DropdownMenuItem<String>> dropdownItems = [];
    for (String currency in currenciesList) {
      dropdownItems.add(DropdownMenuItem(
        value: currency,
        child: Text(currency),
      ));
    }

    return DropdownButton<String>(
      value: selectedCurrency,
      items: dropdownItems,
      onChanged: (value) {
        setState(() {
          selectedCurrency = value!;
          updateExchangeRate();
        });
      },
    );
  }

  CupertinoPicker iosPicker() {
    List<Widget> cupertinoPickerItems = [];
    for (String currency in currenciesList) {
      cupertinoPickerItems.add(Text(
        currency,
        style: const TextStyle(color: Colors.white),
      ));
    }

    return CupertinoPicker(
      backgroundColor: Colors.lightBlue,
      itemExtent: 32.0,
      onSelectedItemChanged: (idx) {
        setState(() {
          selectedCurrency = currenciesList[idx];
          updateExchangeRate();
        });
      },
      children: cupertinoPickerItems,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('🤑 Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          getTicker(
              exchangeData: btcExchangeData,
              selectedCurrency: selectedCurrency,
              cryptoName: cryptoList[0]),
          getTicker(
              exchangeData: ethExchangeData,
              selectedCurrency: selectedCurrency,
              cryptoName: cryptoList[1]),
          getTicker(
              exchangeData: ltcExchangeData,
              selectedCurrency: selectedCurrency,
              cryptoName: cryptoList[2]),
          Expanded(child: Container()),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: const EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: Platform.isIOS ? iosPicker() : androidDropdown(),
          ),
        ],
      ),
    );
  }
}
