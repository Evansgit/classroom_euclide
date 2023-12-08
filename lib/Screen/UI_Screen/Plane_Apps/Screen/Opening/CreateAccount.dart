import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'Registering.dart';
import 'TypeLogin.dart';

class Signup extends StatefulWidget {
  Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECF2F9),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Lottie.asset(
                      "lib/Screen/UI_Screen/Plane_Apps/Assets/signin.json",
                      height: 300.0,
                      width: 500.0),
                  SizedBox(
                    height: 60.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 32.0, right: 32.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(PageRouteBuilder(
                            pageBuilder: (_, __, ___) => new CreateAccount()));
                      },
                      child: Container(
                        height: 50.0,
                        width: double.infinity,
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
                            child: Text(
                          "Create an account",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Sofia",
                              letterSpacing: 0.9),
                        )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(PageRouteBuilder(
                            pageBuilder: (_, __, ___) => new Login()));
                      },
                      child: Center(
                        child: Text("I already have an account",
                            style: TextStyle(
                                fontFamily: "Sofia",
                                color: Colors.black38,
                                fontSize: 16.0)),
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "By selecting getting “Getting Started” you agree to the",
                      style: TextStyle(
                          fontFamily: "Sofia",
                          color: Colors.black45,
                          fontSize: 12.1),
                    ),
                    SizedBox(
                      height: 3.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Terms of Service",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              color: Colors.blueAccent,
                              fontSize: 12.5),
                        ),
                        Text(
                          " and ",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              color: Colors.black45,
                              fontSize: 12.5),
                        ),
                        Text(
                          "Privacy Policy",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              color: Colors.blueAccent,
                              fontSize: 12.5),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "All rights reserved @BizSecure",
                      style: TextStyle(
                          fontFamily: "Sofia",
                          color: Colors.black26,
                          fontSize: 11.0),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
