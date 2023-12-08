import 'package:flutter/material.dart';

class LoginScreen30 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipPath(
                    clipper: DrawClip(),
                    child: Container(
                      height: size.height / 2.4,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xffff5f6d), Color(0xffffc371)],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight)),
                    ),
                  ),
                  Container(
                      height: size.height / 2.4,
                      width: double.infinity,
                      child: Image.network(
                          'https://i.postimg.cc/Gt0VM7MY/tinder.jpg'))
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                child: Text(
                  "SIGN IN",
                  style: TextStyle(
                      fontFamily: "Sofia",
                      color: Color(0xffff5f6d),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.1, vertical: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(borderSide: BorderSide.none),
                      fillColor: Colors.grey[200],
                      hintText: 'Email Address',
                      filled: true),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.1, vertical: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(borderSide: BorderSide.none),
                      fillColor: Colors.grey[200],
                      hintText: 'Password',
                      suffixIcon: Icon(Icons.remove_red_eye),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      filled: true),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 210),
                child: Text("Forgot Password?",
                    style: TextStyle(
                        fontFamily: "Sofia",
                        color: Colors.grey[500]!,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.1, vertical: 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0.0, backgroundColor: Colors.transparent,
                  ),
                  onPressed: null,
                  child: Material(
                    elevation: 10,
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xffff5f6d),
                          borderRadius: BorderRadius.circular(8)),
                      height: 50,
                      child: Center(
                          child: Text(
                        "SIGN IN",
                        style: TextStyle(
                            fontFamily: "Sofia",
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  "OR",
                  style: TextStyle(
                      fontFamily: "Sofia",
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    social('https://i.postimg.cc/HxFdTLVG/google-plus.jpg'),
                    social('https://i.postimg.cc/0y4tWK3q/facebook-2.jpg'),
                    social('https://i.postimg.cc/GpsXZhwT/twitter-3.jpg'),
                    social('https://i.postimg.cc/7YYmqNrk/linkedin.jpg'),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Text(
                  "Don't have an account?",
                  style: TextStyle(
                      fontFamily: "Sofia",
                      fontSize: 18,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Center(
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                      fontFamily: "Sofia",
                      fontSize: 18,
                      color: Color(0xffff5f6d),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
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
        height: 28,
        width: 28,
      ),
    ),
  );
}

class DrawClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width * 0.1, size.height - 50);
    path.lineTo(size.width * 0.9, size.height - 50);
    path.lineTo(size.width, size.height - 100);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
