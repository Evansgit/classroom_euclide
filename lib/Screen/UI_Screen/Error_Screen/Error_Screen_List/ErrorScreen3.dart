import 'package:flutter/material.dart';

/// Component UI
class ErrorScreen3 extends StatefulWidget {
  @override
  _ErrorScreen3State createState() => _ErrorScreen3State();
}

/// Component UI
class _ErrorScreen3State extends State<ErrorScreen3> {
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
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 0.0),
                    child: Container(
                      width: double.infinity,
                      height: _height,
                      child: Image.asset(
                        'assets/illustration/error_illustration/error33.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: _height - 330.0, left: 0.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 19.0),
                        ),
                        Center(
                          child: Text(
                            "Page Not Found",
                            style: TextStyle(
                                fontFamily: "Popins",
                                fontSize: 23.0,
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
                            "The page you are looking for \n doesn't seem to exist...",
                            style: TextStyle(
                                fontFamily: "Sofia",
                                fontSize: 17.0,
                                color: Colors.black26,
                                fontWeight: FontWeight.w400),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Container(
                            height: 50.0,
                            width: 140.0,
                            decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50.0))),
                            child: Center(
                              child: Text(
                                "Back",
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
