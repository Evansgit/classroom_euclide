import 'package:flutter/material.dart';

class LoginScreen15 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: DrawClip2(),
                  child: Container(
                    width: size.width,
                    height: size.height * 0.83,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xFFFFE5A8), Color(0xFFFBAEDE)],
                          begin: Alignment.bottomCenter,
                          end: Alignment.bottomRight),
                    ),
                  ),
                ),
                ClipPath(
                  clipper: DrawClip(),
                  child: Container(
                    width: size.width,
                    height: size.height * 0.84,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xFFFFE5A8), Color(0xFFFBAEDE)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60.0),
                  child: Column(
                    children: [
                      Text(
                        "Login",
                        style: TextStyle(
                            fontFamily: "Sofia",
                            color: Colors.white,
                            fontSize: 42,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      input("Username", false),
                      input("Password", true),
                      SizedBox(
                        height: 25,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0.0, backgroundColor: Colors.transparent,
                        ),
                        // null for now , since its just UI
                        onPressed: null,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 40),
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.pink,
                                  borderRadius: BorderRadius.circular(30)),
                              height: 50,
                              child: Center(
                                  child: Text("Login",
                                      style: TextStyle(
                                        fontFamily: "Sofia",
                                        fontWeight: FontWeight.bold,
                                      )))),
                        ),
                      ),
                      Text("Forgot your password?",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 520.0),
                  child: Column(
                    children: [
                      Text("Connect with us",
                          style: TextStyle(
                            fontFamily: "Sofia",
                            fontWeight: FontWeight.bold,
                          )),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        child: Row(
                          children: [
                            Expanded(
                              child: AppOutlineButton(
                                asset:
                                    "lib/Screen/FullApps/SunriseMart/Assets/google.jpg",
                                onTap: () {},
                              ),
                            ),
                            SizedBox(width: 12),
                            Expanded(
                              child: AppOutlineButton(
                                asset:
                                    "lib/Screen/FullApps/SunriseMart/Assets/facebook.jpg",
                                onTap: () {},
                              ),
                            ),
                            SizedBox(width: 12),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have an account? ",
                              style: TextStyle(
                                  fontFamily: "Sofia",
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueGrey)),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Sign Up",
                              style: TextStyle(
                                  fontFamily: "Sofia",
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueGrey))
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget input(String hint, bool pass) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: TextFormField(
          decoration: InputDecoration(
              hintText: hint,
              hintStyle: TextStyle(
                  fontFamily: "Sofia",
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
              contentPadding: EdgeInsets.only(top: 13, bottom: 13),
              border: UnderlineInputBorder(borderSide: BorderSide.none)),
        ),
      ),
    ),
  );
}

class DrawClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * 0.80);
    path.cubicTo(size.width / 4, size.height, 3 * size.width / 4,
        size.height / 2, size.width, size.height * 0.8);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class DrawClip2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * 0.08);
    path.cubicTo(size.width / 4, size.height, 3 * size.width / 4,
        size.height / 2, size.width, size.height * 0.9);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class AppOutlineButton extends StatelessWidget {
  final String asset;
  final VoidCallback onTap;

  AppOutlineButton({required this.asset, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Image.asset(
          asset,
          height: 24,
        ),
      ),
      onPressed: onTap,
    );
  }
}
