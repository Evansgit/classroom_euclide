import 'package:flutter/material.dart';

/// Component UI
class ErrorScreen7 extends StatefulWidget {
  @override
  _ErrorScreen7State createState() => _ErrorScreen7State();
}

/// Component UI
class _ErrorScreen7State extends State<ErrorScreen7> {
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
                        'assets/illustration/error_illustration/error37.jpg',
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
                            "Something Wrong!",
                            style: TextStyle(
                                fontFamily: "Popins",
                                fontSize: 26.0,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                                letterSpacing: 1.5),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20.0),
                          ),
                          Text(
                            "This product is mean for educational\npurpose only. Any resemblance to near\npersons, living or dead is purely",
                            style: TextStyle(
                                fontFamily: "Sofia",
                                fontSize: 15.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w300),
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
                              height: 50.0,
                              width: 150.0,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50.0))),
                              child: Center(
                                child: Text(
                                  "Continue",
                                  style: TextStyle(
                                      fontFamily: "Sofia",
                                      color: Colors.orange,
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
