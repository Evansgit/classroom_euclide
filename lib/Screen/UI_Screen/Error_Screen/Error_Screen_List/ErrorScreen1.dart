import 'package:flutter/material.dart';

/// Component UI
class ErrorScreen1 extends StatefulWidget {
  @override
  _ErrorScreen1State createState() => _ErrorScreen1State();
}

/// Component UI
class _ErrorScreen1State extends State<ErrorScreen1> {
  @override

  /// Declare startTime to InitState
  @override
  void initState() {
    super.initState();
  }

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
                        'assets/illustration/error_illustration/error31.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: _height - 310.0, left: 40.0),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 19.0),
                          ),
                          Text(
                            "No Files!",
                            style: TextStyle(
                                fontFamily: "Popins",
                                fontSize: 28.0,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                                letterSpacing: 1.5),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15.0),
                          ),
                          Text(
                            "Opps! The file you are looking for \ncannot be found....",
                            style: TextStyle(
                                fontFamily: "Sofia",
                                fontSize: 16.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                            textAlign: TextAlign.start,
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
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50.0))),
                              child: Center(
                                child: Text(
                                  "Back",
                                  style: TextStyle(
                                      fontFamily: "Sofia",
                                      color: Colors.deepPurple,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14.5),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
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
