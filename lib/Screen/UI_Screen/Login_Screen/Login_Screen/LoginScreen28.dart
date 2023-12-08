import 'package:flutter/material.dart';

class LoginScreen28 extends StatelessWidget {
  static final String path = "lib/src/pages/login/login5.dart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16.0),
        height: double.infinity,
        decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: [Colors.lightGreen, Colors.green])),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 110.0,
            ),
            Text(
              "Login".toUpperCase(),
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: 40.0,
                  fontFamily: "Sofia",
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 100.0),
            TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(16.0),
                prefixIcon: Container(
                    padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                    margin: const EdgeInsets.only(right: 8.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            bottomLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0),
                            bottomRight: Radius.circular(10.0))),
                    child: Icon(
                      Icons.person,
                      color: Colors.lightGreen,
                    )),
                hintText: "Enter your email",
                hintStyle:
                    TextStyle(color: Colors.white54, fontFamily: "Sofia"),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none),
                filled: true,
                fillColor: Colors.white.withOpacity(0.1),
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(16.0),
                prefixIcon: Container(
                    padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                    margin: const EdgeInsets.only(right: 8.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            bottomLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0),
                            bottomRight: Radius.circular(10.0))),
                    child: Icon(
                      Icons.lock,
                      color: Colors.lightGreen,
                    )),
                hintText: "Enter your password",
                hintStyle:
                    TextStyle(color: Colors.white54, fontFamily: "Sofia"),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none),
                filled: true,
                fillColor: Colors.white.withOpacity(0.1),
              ),
              obscureText: true,
            ),
            SizedBox(height: 100.0),
            SizedBox(
              width: double.infinity,
              height: 55.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0, backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                ),
                child: Text(
                  "Login".toUpperCase(),
                  style: TextStyle(
                      fontFamily: "Sofia",
                      fontSize: 19.0,
                      color: Colors.lightGreen,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0.0, backgroundColor: Colors.white70,
                  ),
                  child: Text(
                    "Create Account".toUpperCase(),
                    style: TextStyle(
                      fontFamily: "Sofia",
                      fontSize: 13.0,
                    ),
                  ),
                  onPressed: () {},
                ),
                Container(
                  color: Colors.white54,
                  width: 2.0,
                  height: 20.0,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0.0, backgroundColor: Colors.white70,
                  ),
                  child: Text(
                    "Forgot Password".toUpperCase(),
                    style: TextStyle(fontFamily: "Sofia", fontSize: 13.0),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}
