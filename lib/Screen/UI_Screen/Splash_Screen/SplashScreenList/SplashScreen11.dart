import 'package:flutter/material.dart';

class SplashScreen11 extends StatefulWidget {
  SplashScreen11({Key? key}) : super(key: key);

  @override
  _SplashScreen11State createState() => _SplashScreen11State();
}

class _SplashScreen11State extends State<SplashScreen11> {
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
                    "lib/Screen/FullApps/Coinapult/assets/SplashScreen.jpg",
                  ),
                  fit: BoxFit.cover)),
          child: Center(
            child: SingleChildScrollView(
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: [
                        Image.asset(
                          "lib/Screen/FullApps/AlliedWallet/Assets/icon_bee.png",
                          color: Colors.white,
                          height: 29.0,
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          "Application",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w200,
                            fontSize: 36.0,
                            letterSpacing: 1.5,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
