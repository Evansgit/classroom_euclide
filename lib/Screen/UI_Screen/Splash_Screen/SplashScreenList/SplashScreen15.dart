import 'package:flutter/material.dart';

/// Component UI
class SplashScreen15 extends StatefulWidget {
  @override
  _SplashScreen15State createState() => _SplashScreen15State();
}

/// Component UI
class _SplashScreen15State extends State<SplashScreen15> {
  @override

  /// Code Create UI Splash Screen
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        /// Set Background image in splash screen layout (Click to open code)
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    'lib/Screen/FullApps/Marketplace/assets/img/splashScreen.jpg'),
                fit: BoxFit.cover)),
        child: Container(
          /// Set gradient black in image splash screen (Click to open code)
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                Color.fromRGBO(0, 0, 0, 0.3),
                Color.fromRGBO(0, 0, 0, 0.4)
              ],
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter)),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                /// Animation text marketplace to choose Login with Hero Animation (Click to open code)
                Padding(
                  padding: EdgeInsets.only(top: mediaQuery.padding.top + 100.0),
                  child: Hero(
                    tag: "market",
                    child: Text(
                      "Application",
                      style: TextStyle(
                        fontFamily: 'Lemon',
                        fontWeight: FontWeight.w400,
                        fontSize: 33.0,
                        color: Colors.white,
                      ),
                    ),
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
