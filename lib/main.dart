import 'package:bitcoin_ticker/home.dart';
import 'package:flutter/material.dart';
import 'price_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF001515),
          scaffoldBackgroundColor: Colors.white),
      home: PriceScreen(),
    );
  }
}
