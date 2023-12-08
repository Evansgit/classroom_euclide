import 'dart:async';
import 'package:flutter/material.dart';

import 'OnBoarding_T2.dart';

/// Component UI
class SplashScreenSunriseMart extends StatefulWidget {
  @override
  _SplashScreenSunriseMartState createState() =>
      _SplashScreenSunriseMartState();
}

/// Component UI
class _SplashScreenSunriseMartState extends State<SplashScreenSunriseMart> {
  @override

  /// Setting duration in splash screen
  startTime() async {
    return new Timer(Duration(milliseconds: 4500), NavigatorPage);
  }

  /// To navigate layout change
  void NavigatorPage() {
    Navigator.of(context).pushReplacement(
        PageRouteBuilder(pageBuilder: (_, __, ___) => OnBoardingScreenT2()));
  }

  /// Declare startTime to InitState
  @override
  void initState() {
    super.initState();
    startTime();
  }

  /// Code Create UI Splash Screen
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: _height,

        /// Set Background image in splash screen layout (Click to open code)
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    'lib/Screen/FullApps/SunriseMart/Assets/splashBackground.jpg'),
                fit: BoxFit.cover)),
        child: Container(
          /// Set gradient black in image splash screen (Click to open code)

          child: SingleChildScrollView(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 120.0),
                  ),
                  Center(
                    child: Text(
                      "Sunrise Mart",
                      style: TextStyle(
                          fontFamily: "Sofia",
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF5FBD84),
                          fontSize: 35.0),
                    ),
                  ),

                  //   Image.asset("assets/Template2/logo.jpg",height: 250.0,)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
