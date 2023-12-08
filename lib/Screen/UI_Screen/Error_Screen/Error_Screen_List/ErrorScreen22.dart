import 'package:flutter/material.dart';

/// Component UI
class ErrorScreen22 extends StatefulWidget {
  @override
  _ErrorScreen22State createState() => _ErrorScreen22State();
}

/// Component UI
class _ErrorScreen22State extends State<ErrorScreen22> {
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
                        'assets/illustration/error_illustration/error22.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: _height - 280.0, left: 0.0),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 19.0),
                          ),
                          Center(
                            child: Text(
                              "Missing Article",
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
                              "Article you are looking for\nis not available",
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
                              height: 45.0,
                              width: 130.0,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
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
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
