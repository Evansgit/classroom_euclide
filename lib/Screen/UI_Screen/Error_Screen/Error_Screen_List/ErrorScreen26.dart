import 'package:flutter/material.dart';

/// Component UI
class ErrorScreen26 extends StatefulWidget {
  @override
  _ErrorScreen26State createState() => _ErrorScreen26State();
}

/// Component UI
class _ErrorScreen26State extends State<ErrorScreen26> {
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
                        'assets/illustration/error_illustration/error26.jpg',
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
                            padding: EdgeInsets.only(top: 9.0),
                          ),
                          Center(
                            child: Text(
                              "Somethings Not Right..",
                              style: TextStyle(
                                  fontFamily: "Popins",
                                  fontSize: 22.0,
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
                              "Please check the status of your\ndevice and try.",
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
                                  height: 55.0,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      color:
                                          Colors.indigoAccent.withOpacity(0.3),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(50.0))),
                                  child: Center(
                                      child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 30.0, right: 30.0),
                                          child: Text("Retry",
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
