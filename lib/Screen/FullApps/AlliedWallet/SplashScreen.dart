import 'dart:async';

import 'package:flutter/material.dart';

import 'OnBoarding.dart';

/// Component UI
class SplashScreenAllied extends StatefulWidget {
  @override
  _SplashScreenAlliedState createState() => _SplashScreenAlliedState();
}

/// Component UI
class _SplashScreenAlliedState extends State<SplashScreenAllied> {
  @override
  void initState() {
    super.initState();
    startTime();

    @override
    void dispose() {
      super.dispose();
    }
  }

  /// Check user
  bool _checkUser = true;

  bool loggedIn = false;

  @override

  /// Setting duration in splash screen
  startTime() async {
    return new Timer(Duration(milliseconds: 4500), NavigatorPage);
  }

  /// Navigate user if already login or no
  void NavigatorPage() {
    Navigator.of(context).pushReplacement(
        PageRouteBuilder(pageBuilder: (_, __, ___) => OnboardingScreen()));
  }

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
                    "lib/Screen/FullApps/AlliedWallet/Assets/SplashScreen.jpg",
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
                          "Allied Wallet",
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
