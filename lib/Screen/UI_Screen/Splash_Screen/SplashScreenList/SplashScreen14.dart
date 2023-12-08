import 'package:flutter/material.dart';

/// Component UI
class SplashScreen14 extends StatefulWidget {
  @override
  _SplashScreen14State createState() => _SplashScreen14State();
}

/// Component UI
class _SplashScreen14State extends State<SplashScreen14> {
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
                    'lib/Screen/FullApps/FreshChoice/assets/splashscreen.jpg'),
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
                  Text(
                    "Application",
                    style: TextStyle(
                        fontFamily: "Lemon",
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                        fontSize: 38.0),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
