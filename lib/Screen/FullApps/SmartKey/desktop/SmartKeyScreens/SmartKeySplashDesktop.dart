import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:crypto_template/Library/Constant/SmartKitColor.dart';

import 'SmartKeyLoginDesktop.dart';

class SmartKeySplashDesktop extends StatefulWidget {
  SmartKeySplashDesktop({Key? key}) : super(key: key);

  @override
  _SmartKeySplashDesktopState createState() => _SmartKeySplashDesktopState();
}

class _SmartKeySplashDesktopState extends State<SmartKeySplashDesktop> {
  @override
  void initState() {
    super.initState();
    print("==desk");
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: back(),
            // color: smartkey6,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/images/logoApps.png',
                    color: Colors.white,
                    fit: BoxFit.cover,
                    width: 150,
                    height: 150,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "SMARTKEY",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'open sans',
                        fontWeight: FontWeight.w700,
                        fontSize: 28),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  back() {
    return BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [smartkey2, smartkey3],
          stops: [0, 1]),
    );
  }

  startTime() async {
    var _duration = Duration(milliseconds: 1000);
    return Timer(_duration, navigationPage);
  }

  Future<void> navigationPage() async {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => SmartKeyLoginDesktop(),
      ),
    );
  }
}
