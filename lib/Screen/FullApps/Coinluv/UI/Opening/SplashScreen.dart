import 'dart:async';
import 'package:crypto_template/Screen/FullApps/Coinluv/UI/Opening/OnBoarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CoinLuv extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    /// To set orientation always portrait
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    ///Set color status bar
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent, //or set color with: Color(0xFF0000FF)
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
         
        primarySwatch: Colors.blue,
      ),
      home: onBoarding(),
    );
  }
}

/// Component UI
class SplashScreenCoinluv extends StatefulWidget {
  @override
  _SplashScreenCoinluvState createState() => _SplashScreenCoinluvState();
}

/// Component UI
class _SplashScreenCoinluvState extends State<SplashScreenCoinluv> {
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
        PageRouteBuilder(pageBuilder: (_, __, ___) => onBoarding()));
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
