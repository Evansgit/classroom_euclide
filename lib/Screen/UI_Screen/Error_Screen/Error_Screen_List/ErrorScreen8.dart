import 'package:flutter/material.dart';

/// Component UI
class ErrorScreen8 extends StatefulWidget {
  @override
  _ErrorScreen8State createState() => _ErrorScreen8State();
}

/// Component UI
class _ErrorScreen8State extends State<ErrorScreen8> {
  @override

  /// Code Create UI Splash Screen
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: _height,
        child: Container(
          /// Set gradient black in image splash screen (Click to open code)

          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Container(
                      width: double.infinity,
                      height: _height / 1.8,
                      child: Image.asset(
                        'assets/illustration/error_illustration/error8.jpg',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 19.0),
                      ),
                      Center(
                        child: Text(
                          "Lagging Sorry!",
                          style: TextStyle(
                              fontFamily: "Popins",
                              fontSize: 28.0,
                              fontWeight: FontWeight.w800,
                              color: Colors.black87,
                              letterSpacing: 1.5),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.0),
                      ),
                      Center(
                        child: Text(
                          "This product is mean for educational\npurpose only. Any resemblance to near\npersons, living or dead is purely",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              fontSize: 15.0,
                              color: Colors.black26,
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          height: 50.0,
                          width: 150.0,
                          decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50.0))),
                          child: Center(
                            child: Text(
                              "Continue",
                              style: TextStyle(
                                  fontFamily: "Sofia",
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14.5),
                            ),
                          ),
                        ),
                      )
                    ],
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
