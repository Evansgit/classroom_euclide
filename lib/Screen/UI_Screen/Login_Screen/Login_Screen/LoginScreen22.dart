import 'package:flutter/material.dart';

class LoginScreen22 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      "Hello, There!",
                      style: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.w800,
                          fontFamily: "Sofia"),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                  ],
                ),
                SizedBox(
                  height: 70.0,
                ),
                Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Email ID",
                        labelStyle: TextStyle(
                            fontSize: 14, color: Colors.grey.shade400),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.grey.shade300,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.red,
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(
                            fontSize: 14, color: Colors.grey.shade400),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.grey.shade300,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.red,
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        "Forgot Password ?",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(
                      height: 90,
                    ),
                    Container(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0.0, backgroundColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        onPressed: () {},
                        child: Ink(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Color(0xFF093667),
                                Color(0xFF16B7E5),
                              ],
                            ),
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            constraints: BoxConstraints(
                                maxWidth: double.infinity, minHeight: 50),
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0.0, backgroundColor: Colors.indigo.shade50,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              "lib/Screen/FullApps/SunriseMart/Assets/facebook.jpg",
                              height: 18,
                              width: 18,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Connect with Facebook",
                              style: TextStyle(
                                  color: Colors.indigo,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "I'm a new user ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontFamily: "Sofia"),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "Sofia",
                              color: Color(0xFF093667)),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
