import 'package:flutter/material.dart';

/// Component UI
class SplashScreen10 extends StatefulWidget {
  @override
  _SplashScreen10State createState() => _SplashScreen10State();
}

/// Component UI
class _SplashScreen10State extends State<SplashScreen10> {
  @override

  /// Code Create UI Splash Screen
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        /// Set Background image in splash screen layout (Click to open code)
        // decoration: BoxDecoration(
        //     image: DecorationImage(
        //         image: AssetImage('lib/Screen/FullApps/Cafeku/assets/images/SplashScreen10.jpg'),
        //         fit: BoxFit.cover)),
        child: Container(
          child: Center(
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    /// Animation text Treva Shop to choose Login with Hero Animation (Click to open code)
                    Column(
                      children: [
                        Center(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 20.0,
                              ),
                              Text(
                                "Application",
                                style: TextStyle(
                                    fontFamily: "Sofia",
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 2.5,
                                    fontSize: 40.00),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
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
