import 'package:flutter/material.dart';
import 'dart:math';

class LoginScreen13 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            //   height: size.height,
            width: size.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xFF77A1D3), Color(0xff48b1bf)])),
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Stack(
                  children: [
                    ClipPath(
                      clipper: DrawClip(),
                      child: Container(
                        height: 560,
                        width: size.width - 50,
                        color: Colors.white,
                      ),
                    ),
                    Positioned(
                      left: 10,
                      top: 110,
                      child: Text("Login",
                          style: TextStyle(
                            fontFamily: "Sofia",
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    input("Email", false),
                    input("Password", true),
                    Positioned(
                      right: 30,
                      top: 380,
                      child: Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xFF77A1D3),
                                  offset: Offset(3.0, 3.0),
                                  blurRadius: 5.0,
                                  spreadRadius: 1.0),
                              BoxShadow(
                                  color: Colors.white,
                                  offset: Offset(-3.0, -3.0),
                                  blurRadius: 15.0,
                                  spreadRadius: 1.0)
                            ],
                            color: Color(0xFF77A1D3)),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Login",
                                  style: TextStyle(
                                      fontFamily: "Sofia",
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 40,
                      child: Transform.rotate(
                        angle: pi / 6.4,
                        child: Container(
                          width: 300,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              social(
                                  'https://i.postimg.cc/HxFdTLVG/google-plus.jpg'),
                              social(
                                  'https://i.postimg.cc/0y4tWK3q/facebook-2.jpg'),
                              social(
                                  'https://i.postimg.cc/GpsXZhwT/twitter-3.jpg'),
                              social(
                                  'https://i.postimg.cc/7YYmqNrk/linkedin.jpg'),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 50.0,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget social(String url) {
  return Material(
    borderRadius: BorderRadius.circular(8),
    elevation: 10,
    child: Padding(
        padding: EdgeInsets.all(8),
        child: Image.network(
          url,
          width: 28,
          height: 28,
        )),
  );
}

Widget input(String name, bool pass) {
  return Positioned(
    left: 10,
    right: 10.0,
    top: pass ? 290 : 210,
    child: Material(
      elevation: 3,
      child: Container(
        width: 320,
        child: TextFormField(
            decoration: InputDecoration(
                filled: true,
                labelText: name,
                labelStyle: TextStyle(
                  fontFamily: "Sofia",
                  fontWeight: FontWeight.bold,
                ),
                prefixIcon: pass
                    ? Icon(Icons.lock_outline_sharp, color: Color(0xFF77A1D3))
                    : Icon(
                        Icons.email,
                        color: Color(0xFF77A1D3),
                      ),
                border: UnderlineInputBorder(borderSide: BorderSide.none))),
      ),
    ),
  );
}

class DrawClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, 50);
    path.quadraticBezierTo(0, 0, 50, 30);
    path.lineTo(size.width, size.height / 3);
    path.lineTo(size.width, size.height - 50);
    path.quadraticBezierTo(
        size.width, size.height, size.width - 50, size.height - 30);
    path.lineTo(0, size.height * 2 / 3);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
