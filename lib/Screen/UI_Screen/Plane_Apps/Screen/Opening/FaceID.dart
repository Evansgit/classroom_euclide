import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'IDVerification.dart';

class FaceID extends StatefulWidget {
  FaceID({Key? key}) : super(key: key);

  @override
  _FaceIDState createState() => _FaceIDState();
}

class _FaceIDState extends State<FaceID> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECF2F9),
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 0.0, right: 10.0),
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 0.0, top: 10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: InkWell(
                        onTap: () => Navigator.of(context).pop(),
                        child: Container(
                          height: 65.0,
                          width: 110.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/backContainer.png",
                                  ),
                                  fit: BoxFit.cover)),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 25.0),
                            child: Icon(
                              Icons.arrow_back,
                              color: Color(0xFF0979FF),
                              size: 25.0,
                            ),
                          ),
                        )),
                  ),
                ),
                SizedBox(
                  height: 80.0,
                ),
                Text(
                  'Face ID',
                  style: TextStyle(
                    color: Color(0xFF0979FF),
                    fontSize: 24.0,
                    fontWeight: FontWeight.w800,
                    fontFamily: "Sofia",
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Enable it?',
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Sofia",
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 40.0,
                ),
                Lottie.asset(
                    "lib/Screen/UI_Screen/Plane_Apps/Assets/faceId.json",
                    height: 100.0,
                    width: 500.0),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 32.0, right: 32.0, top: 110.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(PageRouteBuilder(
                            pageBuilder: (_, __, ___) => new Verification()));
                      },
                      child: Container(
                        height: 48.0,
                        width: 215.0,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(40.0)),
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xFF16B1FF),
                                  Color(0xFF0979FF),
                                  Color(0xFF0979FF),
                                ]),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12.withOpacity(0.08),
                                blurRadius: 10.0,
                                spreadRadius: 3.0,
                              )
                            ]),
                        child: Center(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Next",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Sofia",
                                  letterSpacing: 0.9),
                            ),
                          ],
                        )),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  'Skip Face ID',
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 13.0,
                    fontWeight: FontWeight.w800,
                    fontFamily: "Sofia",
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
