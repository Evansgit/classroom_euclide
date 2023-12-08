import 'package:flutter/material.dart';

/// Component UI
class SplashScreen21 extends StatefulWidget {
  @override
  _SplashScreen21State createState() => _SplashScreen21State();
}

/// Component UI
class _SplashScreen21State extends State<SplashScreen21> {
  @override

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
                      "Application",
                      style: TextStyle(
                          fontFamily: "Lemon",
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
