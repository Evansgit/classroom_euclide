import 'package:flutter/material.dart';

class SplashScreen23 extends StatefulWidget {
  @override
  _SplashScreen23State createState() => _SplashScreen23State();
}

class _SplashScreen23State extends State<SplashScreen23> {
  Widget _title() {
    return Text(
      "Application",
      style: TextStyle(
        fontFamily: "Sofia",
        fontSize: 37,
        fontWeight: FontWeight.w700,
        color: Color(0xFF8E9873),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          Positioned(
              top: 0,
              right: 0,
              height: 150,
              child: Image.asset(
                  'lib/Screen/UI_Screen/Login_Screen/Assets/login4a.jpg')),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                child: Image.asset(
                    "lib/Screen/UI_Screen/Login_Screen/Assets/login4b.jpg"),
                height: 120,
              )
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(child: _title()),
              ],
            ),
          ),
        ],
      ),
    )));
  }
}
