import 'package:flutter/material.dart';

/// Component UI
class ErrorScreen40 extends StatefulWidget {
  @override
  _ErrorScreen40State createState() => _ErrorScreen40State();
}

/// Component UI
class _ErrorScreen40State extends State<ErrorScreen40> {
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
                        'assets/illustration/error_illustration/error40.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: _height - 300.0, left: 0.0),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 0.0),
                          ),
                          Center(
                            child: Text(
                              "Location Access",
                              style: TextStyle(
                                  fontFamily: "Popins",
                                  fontSize: 29.0,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black,
                                  letterSpacing: 1.5),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20.0),
                          ),
                          Center(
                            child: Text(
                              "Please enable location access\nto use this feature",
                              style: TextStyle(
                                  fontFamily: "Sofia",
                                  fontSize: 15.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Center(
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 30.0, right: 30.0),
                                child: Container(
                                  height: 45.0,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(50.0))),
                                  child: Center(
                                      child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 30.0, right: 30.0),
                                          child: Text("Back",
                                              style: TextStyle(
                                                fontFamily: "Sofia",
                                                fontWeight: FontWeight.w800,
                                                color: Colors.white,
                                              )))),
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
