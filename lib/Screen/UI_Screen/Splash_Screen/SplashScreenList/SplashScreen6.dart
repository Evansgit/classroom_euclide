import 'package:flutter/material.dart';

/// Component UI
class SplashScreen6 extends StatefulWidget {
  @override
  _SplashScreen6State createState() => _SplashScreen6State();
}

/// Component UI
class _SplashScreen6State extends State<SplashScreen6> {
  @override

  /// Declare startTime to InitState
  @override
  void initState() {
    super.initState();
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
                    'assets/illustration/SplashScreen_illustration/Splash6.jpg'),
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
                          fontFamily: "Sofia",
                          fontWeight: FontWeight.w800,
                          color: Colors.black87,
                          fontSize: 39.0),
                    ),
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
