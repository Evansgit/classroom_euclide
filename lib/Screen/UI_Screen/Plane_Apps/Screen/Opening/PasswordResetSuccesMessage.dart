import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'FaceID.dart';

class PasswordResetSucces extends StatefulWidget {
  PasswordResetSucces({Key? key}) : super(key: key);

  @override
  _PasswordResetSuccesState createState() => _PasswordResetSuccesState();
}

class _PasswordResetSuccesState extends State<PasswordResetSucces> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECF2F9),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 60.0,
            ),
            Lottie.asset(
                "lib/Screen/UI_Screen/Plane_Apps/Assets/confirmation.json",
                height: 250.0,
                width: 500.0),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0.0, top: 0.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: InkWell(
                    // onTap: () => Navigator.of(context).pushReplacement(
                    // PageRouteBuilder(
                    //     pageBuilder: (_, __, ___) =>
                    //         signinTemplate1())),
                    child: Container(
                  height: 200.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/boxReset.png",
                          ),
                          fit: BoxFit.cover)),
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 80.0, right: 80.0),
                    child: Text(
                      "Password Reset Successful",
                      style: TextStyle(
                        color: Color(0xFF0979FF),
                        fontSize: 21.0,
                        fontWeight: FontWeight.w800,
                        fontFamily: "Sofia",
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )),
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 32.0, right: 32.0, top: 25.0, bottom: 30.0),
              child: Align(
                alignment: Alignment.center,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(PageRouteBuilder(
                        pageBuilder: (_, __, ___) => new FaceID()));
                  },
                  child: Container(
                    height: 45.0,
                    width: 125.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40.0)),
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
                          "Login",
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
          ],
        ),
      ),
    );
  }
}
