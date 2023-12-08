import 'dart:async';

import 'package:flutter/material.dart';

/// Component UI
class SplashScreenExpensa extends StatefulWidget {
  @override
  _SplashScreenExpensaState createState() => _SplashScreenExpensaState();
}

/// Component UI
class _SplashScreenExpensaState extends State<SplashScreenExpensa> {
  @override

  /// Setting duration in splash screen
  startTime() async {
    return new Timer(Duration(milliseconds: 4500), NavigatorPage);
  }

  /// To navigate layout change
  void NavigatorPage() {}

  /// Declare startTime to InitState
  @override
  void initState() {
    super.initState();
  }

  /// Code Create UI Splash Screen
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,

        /// Set Background image in splash screen layout (Click to open code)
        decoration: BoxDecoration(
            color: Colors.black38,
            image: DecorationImage(
              image: AssetImage(
                  'lib/Screen/UI_Screen/Expensa_Apps/assets/img/background.png'),
              fit: BoxFit.cover,
            )),
        child: Container(
          /// Set gradient black in image splash screen (Click to open code)
//          decoration: BoxDecoration(
//              gradient: LinearGradient(
//                  colors: [
//                    Color.fromRGBO(0, 0, 0, 0.3),
//                    Color.fromRGBO(0, 0, 0, 0.4)
//                  ],
//                  begin: FractionalOffset.topCenter,
//                  end: FractionalOffset.bottomCenter)),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                /// Animation text marketplace to choose Login with Hero Animation (Click to open code)
                Hero(
                  tag: "market",
                  child: Image.asset(
                    "lib/Screen/UI_Screen/Expensa_Apps/assets/icon/splash_logo.png",
                    height: 120.0,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
