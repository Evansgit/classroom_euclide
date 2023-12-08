import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen11 extends StatefulWidget {
  LoginScreen11({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _LoginScreen11State createState() => _LoginScreen11State();
}

class _LoginScreen11State extends State<LoginScreen11> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF3F51b5),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 70,
          ),
          _topheader(),
          Expanded(
              child: Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 32),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
              color: Colors.grey[50],
            ),
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 20),
                  _labelText('Email:'),
                  _inputTextField('example@email.com', false),
                  SizedBox(height: 16),
                  _labelText('Password:'),
                  _inputTextField('******', true),
                  SizedBox(height: 12),
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () {
                        //TODO
                      },
                      child: Text(
                        'Forgot Password ?',
                        style: TextStyle(
                            color: Colors.blue[900], fontFamily: "Sofia"),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 46,
                      width: 220,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0.0, backgroundColor: Color(0XFF303f9f),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                        onPressed: () {
                          //TODO
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: "Sofia",
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'OR',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Sofia",
                        fontWeight: FontWeight.w700,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  SizedBox(height: 18),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      _loginSocialMediaBtn(
                          FontAwesomeIcons.facebookF, facebookColor),
                      SizedBox(width: 16),
                      _loginSocialMediaBtn(
                          FontAwesomeIcons.google, googleColor),
                      SizedBox(width: 16),
                      _loginSocialMediaBtn(
                          FontAwesomeIcons.twitter, twitterColor),
                    ],
                  ),
                ],
              ),
            ),
          )),
        ],
      ),
    );
  }

  //button to login in using scial media,
  _loginSocialMediaBtn(IconData icon, Color bgColor) {
    return SizedBox.fromSize(
      size: Size(54, 54), //button width and height
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Material(
          elevation: 16,
          shadowColor: Colors.black,
          color: bgColor,
          child: InkWell(
            splashColor: Colors.white12,
            onTap: () {},
            child: Center(
              child: Icon(
                icon,
                color: Colors.white,
                size: 24,
              ),
            ),
          ),
        ),
      ),
    );
  }

  _inputTextField(hintText, bool obscuretext) {
    return Container(
      height: 56,
      padding: EdgeInsets.fromLTRB(16, 3, 16, 6),
      margin: EdgeInsets.all(8),
      decoration: raisedDecoration,
      child: Center(
        child: TextField(
          obscureText: obscuretext,
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: TextStyle(
                fontFamily: "Sofia",
                color: Colors.black38,
              )),
        ),
      ),
    );
  }

  _labelText(title) {
    return Padding(
      padding: EdgeInsets.only(left: 24),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          color: Colors.black,
          fontFamily: "Sofia",
          fontSize: 16,
        ),
      ),
    );
  }

  _topheader() {
    return Padding(
      padding: EdgeInsets.only(left: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'Login',
            style: TextStyle(
              fontFamily: "Sofia",
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 29,
            ),
          ),
          Image.asset(
            'assets/images/board2.png',
            height: MediaQuery.of(context).size.width / 2.4,
            fit: BoxFit.fitHeight,
          )
        ],
      ),
    );
  }
}

var raisedDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(16),
    border: Border.all(
      color: Colors.grey[50]!,
    ),
    boxShadow: [
      BoxShadow(
        color: Colors.black26,
        offset: Offset(5, 2),
        blurRadius: 3.0,
        spreadRadius: 0.0,
      ),
      BoxShadow(
        color: Colors.white,
        offset: Offset(-5, -2),
        blurRadius: 3.0,
        spreadRadius: 0.0,
      ),
    ]);

Color facebookColor = Color(0xFF416BC1);
Color googleColor = Color(0xFFCF4333);
Color twitterColor = Color(0xFF08A0E9);
