import 'package:bitcoin_ticker/price_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PriceScreen(),
        ),
      );
    });

    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Center(
            child: SpinKitWave(
              color: Colors.white,
              size: 50.0,
            ),
          ),
        ),
      ),
    );
  }
}
