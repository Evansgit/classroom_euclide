import 'package:flutter/material.dart';

import 'package:nb_utils/nb_utils.dart';

class SplashScreen26 extends StatefulWidget {
  static String tag = '/SplashScreen26';

  @override
  SplashScreen26State createState() => SplashScreen26State();
}

class SplashScreen26State extends State<SplashScreen26> {
  @override
  void initState() {
    super.initState();
  }

  Future<void> init() async {
    setStatusBarColor(Colors.transparent);
    await 2.seconds.delay;
    finish(context);
  }

  @override
  void dispose() {
    // setStatusBarColor(context.scaffoldBackgroundColor);

    super.dispose();
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: boxDecorationWithRoundedCorners(
          borderRadius: radius(0),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.1, 0.5],
            colors: [
              Colors.blueAccent,
              Colors.lightBlue,
            ],
          ),
        ),
        child: Text('Helio',
            style: TextStyle(
  fontFamily: "Poppins",fontSize: 48, color: white)),
      ),
    );
  }
}
