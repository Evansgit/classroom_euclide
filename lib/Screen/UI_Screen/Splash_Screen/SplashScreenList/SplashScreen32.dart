import 'dart:async';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen32 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new SplashScreen32State();
  }
}

class SplashScreen32State extends State<SplashScreen32> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      // Navigator.pushReplacement(context,
      //     new MaterialPageRoute(builder: (context) => IntroductionMobile()));
    });
  
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.blueAccent,
      resizeToAvoidBottomInset: false,
      body: new Container(
          child: Center(
              child: SvgPicture.network(
                  'https://smartkit.wrteam.in/smartkit/eStudy/splashlogo.svg',
                  color: Colors.white))),
    );
  }
}
