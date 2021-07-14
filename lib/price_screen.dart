import 'package:bitcoin_ticker/coin_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String selectedCurrency = 'USD';

  DropdownButton androidDropdown() {
    List<DropdownMenuItem<String>> dropdownItems = [];
    for (String currency in currenciesList) {
      var newItem = DropdownMenuItem<String>(
        child: Text(currency),
        value: currency,
      );

      dropdownItems.add(newItem);
    }

    return DropdownButton<String>(
      value: selectedCurrency,
      items: dropdownItems,
      onChanged: (value) {
        setState(() {
          selectedCurrency = value!;
        });
      },
    );
  }

  CupertinoPicker iOSPicker() {
    List<Widget> cupertinoDrop = [];

    for (String currency in currenciesList) {
      var newItem = Text(currency);
      cupertinoDrop.add(newItem);
    }

    return CupertinoPicker(
        itemExtent: 32.0,
        onSelectedItemChanged: (selectedIndex) {
          print(selectedIndex);
        },
        children: cupertinoDrop);
  }

  String selectedText = 'USD';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('🤑 Coin Ticker'),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Card(
              color: Color(0xFF001515),

            ),
          ),
        ],
      ),
    );
  }
}






















//   body: Column(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     crossAxisAlignment: CrossAxisAlignment.stretch,
      //     children: <Widget>[
      //       Padding(
      //         padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
      //         child: Card(
      //           color: Color(0xFF001515),
      //           elevation: 5.0,
      //           shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(10.0),
      //           ),
      //           child: Padding(
      //             padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
      //             child: Text(
      //               '1 BTC = ? USD',
      //               textAlign: TextAlign.center,
      //               style: TextStyle(
      //                 fontSize: 20.0,
      //                 color: Colors.white,
      //               ),
      //             ),
      //           ),
      //         ),
      //       ),
      //       Container(
      //         height: 150.0,
      //         alignment: Alignment.center,
      //         padding: EdgeInsets.only(bottom: 30.0),
      //         color: Color(0xFF001515),
      //         child: Platform.isIOS ? iOSPicker() : androidDropdown(),
      //       ),
      //     ],
      //   ),
      // );
