import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen8 extends StatefulWidget {
  @override
  _LoginScreen8State createState() => _LoginScreen8State();
}

class _LoginScreen8State extends State<LoginScreen8> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      size: size,
      child: SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Icon(
                  CupertinoIcons.back,
                  size: 35,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  "Welcome\nBack",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Sofia",
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: 80),
              CustomInputField(
                hint: "Email",
                size: size,
                prefixIcon: Icons.email,
              ),
              CustomInputField(
                hint: "Password",
                size: size,
                prefixIcon: Icons.lock,
                obscure: true,
              ),
              SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen8(),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    "Forgot your password?",
                    style: TextStyle(
                      fontFamily: "Sofia",
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Sign In",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Sofia",
                      fontSize: 39,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(70),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0, backgroundColor: Color(0xFF0b132b),
                        padding: EdgeInsets.all(20),
                      ),
                      onPressed: () {},
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 45,
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
    ;
  }
}

class Background extends StatelessWidget {
  const Background({
    Key? key,
    required this.size,
    this.child,
  }) : super(key: key);
  final Widget? child;

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: ClipPath(
              clipper: BottomClipper(),
              child: Container(
                height: size.height,
                width: size.width,
                color: Color(0xFF3a506b),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: ClipPath(
              clipper: TopClipper(),
              child: Container(
                height: size.height * 0.45,
                width: size.width,
                color: Color(0xFF0b132b),
              ),
            ),
          ),
          child!,
        ],
      ),
    );
  }
}

class BottomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width * 0.6, size.height);
    path.quadraticBezierTo(size.width * 0.45, size.height * 0.85,
        size.width * 0.7, size.height * 0.8);
    path.quadraticBezierTo(
        size.width * 0.95, size.height * 0.75, size.width, size.height * 0.7);
    path.lineTo(size.width, size.height * 0.75);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class TopClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0, size.height - 20);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.75,
        size.width * 0.5, size.height * 0.85);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.9, size.width, size.height * 0.6);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class CustomInputField extends StatelessWidget {
  const CustomInputField({
    Key? key,
    this.hint = "Enter Text",
    this.obscure = false,
    this.prefixIcon,
    this.size,
  }) : super(key: key);

  final String hint;
  final bool obscure;
  final IconData? prefixIcon;
  final Size? size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
      width: size!.width,
      child: Column(
        children: <Widget>[
          TextField(
            style: TextStyle(
                color: Colors.white,
                fontFamily: "Sofia",
                fontWeight: FontWeight.w400),
            obscureText: obscure,
            decoration: InputDecoration(
              icon: Icon(
                prefixIcon,
                color: Colors.white,
              ),
              hintText: hint,
              hintStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w300,
              ),
              border: InputBorder.none,
            ),
          ),
          Divider(
            color: Colors.white,
            thickness: 2,
          )
        ],
      ),
    );
  }
}
