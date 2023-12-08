import 'package:flutter/material.dart';
import 'dart:math';


class SplashScreen24 extends StatefulWidget {
  SplashScreen24({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _SplashScreen24State createState() => _SplashScreen24State();
}

class _SplashScreen24State extends State<SplashScreen24> {
  Widget _title() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: Center(
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                text: 'App',
                style: TextStyle(
                  fontFamily: "Sofia",
                  fontSize: 35,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF77A1D3),
                ),
                children: [
                  TextSpan(
                    text: 'lica',
                    style: TextStyle(color: Color(0xff2872ba), fontSize: 35),
                  ),
                  TextSpan(
                    text: 'tion',
                    style: TextStyle(color: Color(0xFF77A1D3), fontSize: 35),
                  ),
                ]),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      height: height,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          Positioned(
              top: -height * .15,
              right: -MediaQuery.of(context).size.width * .4,
              child: BezierContainer()),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: height * .2),
                  _title(),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

class BezierContainer extends StatelessWidget {
  const BezierContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Transform.rotate(
      angle: -pi / 3.5,
      child: ClipPath(
        clipper: ClipPainter(),
        child: Container(
          height: MediaQuery.of(context).size.height * .5,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFF79CBCA), Color(0xFF77A1D3)])),
        ),
      ),
    ));
  }
}

class ClipPainter extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var height = size.height;
    var width = size.width;
    var path = new Path();

    path.lineTo(0, size.height);
    path.lineTo(size.width, height);
    path.lineTo(size.width, 0);

    /// [Top Left corner]
    var secondControlPoint = Offset(0, 0);
    var secondEndPoint = Offset(width * .2, height * .3);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    /// [Left Middle]
    var fifthControlPoint = Offset(width * .3, height * .5);
    var fiftEndPoint = Offset(width * .23, height * .6);
    path.quadraticBezierTo(fifthControlPoint.dx, fifthControlPoint.dy,
        fiftEndPoint.dx, fiftEndPoint.dy);

    /// [Bottom Left corner]
    var thirdControlPoint = Offset(0, height);
    var thirdEndPoint = Offset(width, height);
    path.quadraticBezierTo(thirdControlPoint.dx, thirdControlPoint.dy,
        thirdEndPoint.dx, thirdEndPoint.dy);

    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
