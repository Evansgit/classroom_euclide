import 'package:flutter/material.dart';

/// Component UI
class SplashScreen12 extends StatefulWidget {
  @override
  _SplashScreen12State createState() => _SplashScreen12State();
}

/// Component UI
class _SplashScreen12State extends State<SplashScreen12> {
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
                    "lib/Screen/FullApps/Coinbase/Assets/SplashScreen.jpg",
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
                          "lib/Screen/FullApps/AlliedWallet/Assets/icon_lnc.png",
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
