import 'package:flutter/material.dart';

/// Component UI
class ErrorScreen24 extends StatefulWidget {
  @override
  _ErrorScreen24State createState() => _ErrorScreen24State();
}

/// Component UI
class _ErrorScreen24State extends State<ErrorScreen24> {
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
                        'assets/illustration/error_illustration/error24.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: _height - 280.0, left: 40.0),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 9.0),
                          ),
                          Text(
                            "No Result",
                            style: TextStyle(
                                fontFamily: "Popins",
                                fontSize: 29.0,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                                letterSpacing: 1.5),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20.0),
                          ),
                          Text(
                            "Sorry, there are no result for this search, \nPlease try again.",
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
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 0.0, right: 30.0),
                              child: Container(
                                height: 55.0,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(50.0))),
                                child: Center(
                                    child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 30.0, right: 30.0),
                                  child: TextFormField(
                                    decoration:
                                        InputDecoration(hintText: "Search"),
                                  ),
                                )),
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
