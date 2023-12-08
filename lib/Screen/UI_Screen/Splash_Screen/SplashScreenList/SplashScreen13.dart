import 'package:flutter/material.dart';

/// Component UI
class SplashScreen13 extends StatefulWidget {
  @override
  _SplashScreen13State createState() => _SplashScreen13State();
}

/// Component UI
class _SplashScreen13State extends State<SplashScreen13> {
  @override

  /// Code Create UI Splash Screen
  Widget build(BuildContext context) {
    ///
    /// Check connectivity
    ///
    return

        ///
        /// Layout if user connect internet
        ///

        Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "lib/Screen/FullApps/Coinluv/image/splashScreen.jpg",
                  ),
                  fit: BoxFit.cover)),
          child: Center(
            child: SingleChildScrollView(
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
