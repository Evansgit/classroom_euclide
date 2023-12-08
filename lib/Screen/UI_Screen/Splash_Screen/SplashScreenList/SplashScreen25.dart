
import 'package:flutter/material.dart';

class SplashScreen25 extends StatefulWidget {
  @override
  _SplashScreen25State createState() => _SplashScreen25State();
}

class _SplashScreen25State extends State<SplashScreen25> {
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://images2.imgbox.com/da/d3/abzPq6ez_o.png"),
                fit: BoxFit.cover)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 60.0),
            child: Text(
              "Trevatel",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 44.0,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Berlin"),
            ),
          ),
        ),
      ),
    );
  }
}
