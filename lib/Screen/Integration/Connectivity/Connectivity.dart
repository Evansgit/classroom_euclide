import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';

class ConnectivityScreen extends StatefulWidget {
  @override
  _ConnectivityScreenState createState() => _ConnectivityScreenState();
}

class _ConnectivityScreenState extends State<ConnectivityScreen> {
  var _connectionStatus = 'Unknown';
  Connectivity? connectivity;
  StreamSubscription<ConnectivityResult>? subscription;

  bool _connection = false;

  @override
  void initState() {
    super.initState();

    ///
    /// Check connectivity
    ///
    connectivity = new Connectivity();
    subscription =
        connectivity?.onConnectivityChanged.listen((ConnectivityResult result) {
      _connectionStatus = result.toString();
      print(_connectionStatus);
      if (result == ConnectivityResult.wifi ||
          result == ConnectivityResult.mobile) {
        setState(() {
          _connection = false;
        });
      } else {
        setState(() {
          _connection = true;
        });
      }
    });

    @override
    void dispose() {
      subscription?.cancel();
      super.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    return _connection

        ///
        /// Layout if user not connect internet
        ///
        ? Scaffold(
            body: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
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
                            height: MediaQuery.of(context).size.height,
                            child: Image.asset(
                              'assets/illustration/error_illustration/error20.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height - 280.0,
                              left: 0.0),
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
                                    "Connection Failed",
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
                                    height: 45.0,
                                    width: 130.0,
                                    decoration: BoxDecoration(
                                        color: Colors.black38,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(50.0))),
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
          )
        : Scaffold(
            backgroundColor: Colors.white,
            body: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
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
                            height: MediaQuery.of(context).size.height,
                            child: Image.asset(
                              'assets/illustration/error_illustration/error37.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height - 310.0,
                              left: 40.0),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(top: 19.0),
                                ),
                                Text(
                                  "Check Connectivity",
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
                                  "To use this feature please turn on \nor turn of your internet",
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
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(50.0))),
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
