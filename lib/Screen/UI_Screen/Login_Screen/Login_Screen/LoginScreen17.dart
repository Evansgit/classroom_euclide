import 'package:flutter/material.dart';

class LoginScreen17 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var scrWidth = MediaQuery.of(context).size.width;
    var scrHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 40.0, top: 60),
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontFamily: 'Cardo',
                          fontSize: 35,
                          color: Color(0xff0C2551),
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      //
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 40, top: 5),
                    ),
                  ),

                  //

                  SizedBox(
                    height: 30,
                  ),
                  //
                  MyCustomInputBox(
                    label: 'Name',
                    inputHint: 'JeffDev',
                  ),
                  //
                  SizedBox(
                    height: 30,
                  ),
                  //
                  MyCustomInputBox(
                    label: 'Email',
                    inputHint: 'example@example.com',
                  ),
                  //
                  SizedBox(
                    height: 30,
                  ),
                  //
                  MyCustomInputBox(
                    label: 'Password',
                    inputHint: '8+ Characters,1 Capital letter',
                  ),
                  //
                  SizedBox(
                    height: 30,
                  ),
                  //

                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    width: scrWidth * 0.85,
                    height: 55,
                    decoration: BoxDecoration(
                      color: Color(0xff0962ff),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Center(
                      child: Text(
                        'Sigin',
                        style: TextStyle(
                          fontFamily: 'Sofia',
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Not have an account? ',
                          style: TextStyle(
                            fontFamily: 'Sofia',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff8f9db5).withOpacity(0.45),
                          ),
                        ),
                        TextSpan(
                          text: 'Sign Up',
                          style: TextStyle(
                            fontFamily: 'Sofia',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff90b7ff),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              ClipPath(
                clipper: OuterClippedPart(),
                child: Container(
                  color: Color(0xff0962ff),
                  width: scrWidth,
                  height: scrHeight,
                ),
              ),
              //
              ClipPath(
                clipper: InnerClippedPart(),
                child: Container(
                  color: Color(0xff0c2551),
                  width: scrWidth,
                  height: scrHeight,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Neu_button extends StatelessWidget {
  Neu_button({this.char});
  String? char;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 58,
      height: 58,
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.circular(13),
        boxShadow: [
          BoxShadow(
            offset: Offset(12, 11),
            blurRadius: 26,
            color: Color(0xffaaaaaa).withOpacity(0.1),
          )
        ],
      ),
      //
      child: Center(
        child: Text(
          char!,
          style: TextStyle(
            fontFamily: 'ProductSans',
            fontSize: 29,
            fontWeight: FontWeight.bold,
            color: Color(0xff0962FF),
          ),
        ),
      ),
    );
  }
}

class OuterClippedPart extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    //
    path.moveTo(size.width / 2, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height / 4);
    //
    path.cubicTo(size.width * 0.55, size.height * 0.16, size.width * 0.85,
        size.height * 0.05, size.width / 2, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

class InnerClippedPart extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    //
    path.moveTo(size.width * 0.7, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height * 0.1);
    //
    path.quadraticBezierTo(
        size.width * 0.8, size.height * 0.11, size.width * 0.7, 0);

    //
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

class MyCustomInputBox extends StatefulWidget {
  String? label;
  String? inputHint;

  MyCustomInputBox({this.label, this.inputHint});
  @override
  _MyCustomInputBoxState createState() => _MyCustomInputBoxState();
}

class _MyCustomInputBoxState extends State<MyCustomInputBox> {
  bool isSubmitted = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 50.0, bottom: 8),
            child: Text(
              widget.label!,
              style: TextStyle(
                fontFamily: 'Sofia',
                fontSize: 15,
                color: Color(0xff8f9db5),
              ),
            ),
          ),
        ),
        //
        Padding(
          padding: const EdgeInsets.fromLTRB(40, 0, 40, 5),
          child: TextFormField(
            obscureText: widget.label == 'Password' ? true : false,
            // this can be changed based on usage -
            // such as - onChanged or onFieldSubmitted
            onChanged: (value) {
              setState(() {
                isSubmitted = true;
              });
            },
            style: TextStyle(
                fontSize: 19,
                fontFamily: "Sofia",
                color: Color(0xff0962ff),
                fontWeight: FontWeight.bold),
            decoration: InputDecoration(
              hintText: widget.inputHint,
              hintStyle: TextStyle(
                  fontSize: 18,
                  fontFamily: "Sofia",
                  color: Colors.grey[350],
                  fontWeight: FontWeight.w600),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 18, horizontal: 25),
              focusColor: Color(0xff0962ff),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Color(0xff0962ff)),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  color: Colors.grey[350]!,
                ),
              ),
              suffixIcon: isSubmitted == true
                  // will turn the visibility of the 'checkbox' icon
                  // ON or OFF based on the condition we set before
                  ? Visibility(
                      visible: true,
                      child: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Icon(Icons.check_box)),
                    )
                  : Visibility(visible: false, child: Icon(Icons.check_box)),
            ),
          ),
        ),
        //
      ],
    );
  }
}
