import 'dart:async';

import 'package:crypto_template/Screen/FullApps/RecipesMeat/Screen/Home/home.dart';
import 'package:flutter/material.dart';

/// Component UI
class RecipesMeat extends StatefulWidget {
  @override
  _RecipesMeatState createState() => _RecipesMeatState();
}

/// Component UI
class _RecipesMeatState extends State<RecipesMeat> {
  /// Check user
  bool _checkUser = true;

  @override

  /// Setting duration in splash screen
  startTime() async {
    return new Timer(Duration(milliseconds: 4500), NavigatorPage);
  }

  /// To navigate layout change
  void NavigatorPage() {
    Navigator.of(context)
        .pushReplacement(PageRouteBuilder(pageBuilder: (_, __, ___) => home()));
  }

  /// Declare startTime to InitState
  @override
  void initState() {
    super.initState();
    startTime();
  }

  /// Code Create UI Splash Screen
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        /// Set Background image in splash screen layout (Click to open code)
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    'lib/Screen/FullApps/RecipesMeat/Assets/splash.jpg'),
                fit: BoxFit.cover)),
        child: Container(
          /// Set gradient black in image splash screen (Click to open code)
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                Color.fromRGBO(0, 0, 0, 0.3),
                Color.fromRGBO(0, 0, 0, 0.4)
              ],
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter)),
          child: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              height: _height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: _height / 5),
                  ),

                  /// Text header "Welcome To" (Click to open code)
                  Text(
                    "Welcome To",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w200,
                      fontFamily: "Heart",
                      fontSize: 45.0,
                    ),
                  ),

                  /// Animation text Treva Shop to choose Login with Hero Animation (Click to open code)
                  Hero(
                    tag: "Treva",
                    child: Center(
                      child: Text(
                        "Recipe Meat",
                        style: TextStyle(
                          fontFamily: 'Heart',
                          fontWeight: FontWeight.w500,
                          fontSize: 80.0,
                          letterSpacing: 4.4,
                          color: Colors.white,
                        ),
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
