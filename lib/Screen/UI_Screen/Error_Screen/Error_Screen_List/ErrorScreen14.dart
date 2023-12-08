import 'package:flutter/material.dart';

/// Component UI
class ErrorScreen14 extends StatefulWidget {
  @override
  _ErrorScreen14State createState() => _ErrorScreen14State();
}

/// Component UI
class _ErrorScreen14State extends State<ErrorScreen14> {
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
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0, left: 20.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(
                        Icons.close,
                        size: 32.0,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Container(
                      width: double.infinity,
                      height: _height / 1.8,
                      child: Image.asset(
                        'assets/illustration/error_illustration/error14.jpg',
                        fit: BoxFit.cover,
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
                          "Opps, Sorry!",
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
