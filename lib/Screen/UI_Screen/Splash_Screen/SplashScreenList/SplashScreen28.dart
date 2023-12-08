import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen28 extends StatefulWidget {
  @override
  SplashScreen28State createState() => SplashScreen28State();
}

class SplashScreen28State extends State<SplashScreen28> {
  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.pop(context);

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
      ),
    );
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset('assets/images/logoApps.png',
            height: 150, width: 150, fit: BoxFit.contain),
      ),
    );
  }
}
