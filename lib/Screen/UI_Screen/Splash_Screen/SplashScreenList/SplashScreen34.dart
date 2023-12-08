import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen34 extends StatefulWidget {
  SplashScreen34({Key? key}) : super(key: key);

  @override
  _SplashScreen34State createState() => _SplashScreen34State();
}

class _SplashScreen34State extends State<SplashScreen34> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.center,
            colors: [
              Colors.blueAccent.withOpacity(0.8),
              Colors.lightBlue.withOpacity(0.8)
            ],
          ),
        ),
        child: Center(
          child: Image.network(
            'https://images2.imgbox.com/eb/38/Lj9XMPYT_o.png',
            color: Colors.white,
            height: 100.0,
            width: 100.0,
          ),
        ),
      ),
    );
  }

  startTime() async {
    var _duration = Duration(milliseconds: 1000);
    return Timer(_duration, navigationPage);
  }

  Future<void> navigationPage() async {}
}
