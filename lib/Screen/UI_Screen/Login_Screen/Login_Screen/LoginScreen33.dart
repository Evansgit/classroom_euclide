import 'package:flutter/material.dart';

class LoginScreen33 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              ClipPath(
                clipper: DrawClip1(),
                child: Container(
                  height: size.height,
                  width: size.width,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Color(0xff46ddbf).withOpacity(0.5),
                    Color(0xff3088e2).withOpacity(0.5)
                  ], begin: Alignment.topLeft, end: Alignment.bottomLeft)),
                ),
              ),
              ClipPath(
                clipper: DrawClip(),
                child: Container(
                  height: size.height,
                  width: size.width,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xff46ddbf), Color(0xff3088e2)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomLeft)),
                ),
              ),
              Container(
                height: size.height,
                width: size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40, top: 60),
                      child: Text(
                        "Welcome",
                        style: TextStyle(
                            fontFamily: "Sofia",
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40, top: 0),
                      child: Text(
                        "Back",
                        style: TextStyle(
                            fontFamily: "Sofia",
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 40, top: 120, right: 50),
                      child: input("E-mail Address", false),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 40, top: 10, right: 50),
                      child: input("Password", true),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: size.width / 2, top: 20),
                      child: Text(
                        "FORGOT PASSWORD ?",
                        style: TextStyle(
                            fontFamily: "Sofia",
                            fontSize: 12,
                            color: Color(0xff46ddbf),
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0.0, backgroundColor: Colors.transparent,
                          padding: EdgeInsets.only(
                              top: 100, left: 50.0, right: 50.0),
                        ),
                        onPressed: null,
                        child: Material(
                          elevation: 0,
                          borderRadius: BorderRadius.circular(50),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      Color(0xff46ddbf),
                                      Color(0xff46ddbf).withOpacity(0.8)
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight),
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                    color: Color(0xff31b8b1).withOpacity(0.5),
                                    width: 2)),
                            height: 50,
                            child: Center(
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    fontFamily: "Sofia",
                                    color: Colors.white,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: size.width / 3, right: size.width / 3, top: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Material(
                              elevation: 10,
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                  "https://i.postimg.cc/zG2dhf5X/twitter-1.jpg",
                                  height: 40,
                                  width: 40)),
                          Material(
                              elevation: 10,
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                  "https://i.postimg.cc/L4vj5bmm/facebook-1.jpg",
                                  height: 40,
                                  width: 40)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget input(String hint, bool pass) {
  return Container(
    child: TextFormField(
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(fontFamily: "Sofia", color: Colors.grey),
          contentPadding: EdgeInsets.only(top: 15, bottom: 15),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey[300]!, width: 2.0)),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xff46ddbf), width: 1.0))),
    ),
  );
}

class DrawClip1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Path path = Path();
    path.addOval(
        Rect.fromCircle(center: Offset(size.width, 50.0), radius: 150));
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}

class DrawClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Path path = Path();
    path.addOval(
        Rect.fromCircle(center: Offset(size.width * 0.3, 50.0), radius: 200));
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
