import 'package:flutter/material.dart';

class LoginScreen24 extends StatefulWidget {
  @override
  _LoginScreen24State createState() => _LoginScreen24State();
}

class _LoginScreen24State extends State<LoginScreen24> {
  final blueColor = Color(0XFF5e92f3);
  final yellowColor = Color(0XFFfdd835);

  late bool _showSignIn;

  @override
  void initState() {
    super.initState();
    _showSignIn = true;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        buildBackgroundTopCircle(),
        buildBackgroundBottomCircle(),
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: SingleChildScrollView(
              padding:
                  EdgeInsets.only(left: 16, right: 16, top: 50, bottom: 40),
              child: Column(
                children: [
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    _showSignIn ? "SIGN IN" : "CREATE ACCOUNT",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: "Sofia",
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 100.0,
                  ),
                  AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOutBack,
                    height: _showSignIn ? 240 : 400,
                    margin: EdgeInsets.only(top: _showSignIn ? 40 : 30),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 2,
                            spreadRadius: 1,
                            offset: Offset(0, 1),
                          )
                        ]),
                    child: SingleChildScrollView(
                      child: _showSignIn
                          ? buildSignInTextFieldSection()
                          : buildSignUpTextFieldSection(),
                    ),
                  ),
                  _showSignIn
                      ? buildSingInBottomSection()
                      : buildSingUpBottomSection(),
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }

  Container buildSingInBottomSection() {
    return Container(
      margin: EdgeInsets.only(top: 50),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              print("Forget Password");
            },
            child: Text(
              "Forget Password ?",
              style: TextStyle(
                fontFamily: "Sofia",
                color: Colors.black,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              elevation: 10,
              padding: EdgeInsets.symmetric(horizontal: 70, vertical: 12),
            ),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "LOGIN",
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: "Sofia",
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          RichText(
            text: TextSpan(
                text: "Don't have an account? ",
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                      text: "Create an Account",
                      style: TextStyle(
                        fontFamily: "Sofia",
                        decoration: TextDecoration.underline,
                        color: blueColor,
                        fontWeight: FontWeight.bold,
                      ))
                ]),
          )
        ],
      ),
    );
  }

  Container buildSingUpBottomSection() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 10.0, backgroundColor: yellowColor,
              padding: EdgeInsets.symmetric(horizontal: 60, vertical: 12),
            ),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "SUBMIT",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.arrow_right,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 18,
          ),
          RichText(
            text: TextSpan(
                text: "Already have an account? ",
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                      text: "Sing in",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: blueColor,
                        fontWeight: FontWeight.bold,
                      ))
                ]),
          )
        ],
      ),
    );
  }

  Column buildSignInTextFieldSection() {
    return Column(
      children: [
        buildTextField("EMAIL ADDRESS", "example@gmail.com", false),
        SizedBox(
          height: 30,
        ),
        buildTextField("PASSWORD", "*******", true),
      ],
    );
  }

  Column buildSignUpTextFieldSection() {
    return Column(
      children: [
        buildTextField("USERNAME", "test123", false),
        SizedBox(
          height: 20,
        ),
        buildTextField("EMAIL ADDRESS", "test123", false),
        SizedBox(
          height: 20,
        ),
        buildTextField("MOBILE NUMBER", "test123", false),
        SizedBox(
          height: 20,
        ),
        buildTextField("PASSWORD", "*******", true),
      ],
    );
  }

  Container buildTextField(
      String labelText, String placeholder, bool isPassword) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontFamily: "Sofia",
                fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 5,
          ),
          TextField(
              obscureText: isPassword,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(16),
                filled: true,
                fillColor: Colors.grey[200],
                hintText: placeholder,
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[300]!),
                ),
              ))
        ],
      ),
    );
  }

  Container buildAvatarContainer() {
    return Container(
      margin: EdgeInsets.only(top: 24),
      width: 130,
      height: 130,
      decoration: BoxDecoration(
          color: _showSignIn ? Colors.grey[800] : Colors.grey[800],
          borderRadius: BorderRadius.circular(65),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 4,
              blurRadius: 20,
            ),
          ]),
      child: Center(
        child: Stack(
          children: [
            Positioned(
              left: 1.0,
              top: 3.0,
              child: Icon(
                Icons.person_outline,
                size: 60,
                color: Colors.black.withOpacity(.1),
              ),
            ),
            Icon(
              Icons.person_outline,
              size: 60,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  Positioned buildBackgroundBottomCircle() {
    return Positioned(
      top: MediaQuery.of(context).size.height -
          MediaQuery.of(context).size.width,
      right: MediaQuery.of(context).size.width / 2,
      child: Container(
        height: MediaQuery.of(context).size.width,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.15),
            borderRadius: BorderRadius.circular(
              MediaQuery.of(context).size.width,
            )),
      ),
    );
  }

  Positioned buildBackgroundTopCircle() {
    return Positioned(
      top: 0,
      child: Transform.translate(
        offset: Offset(0.0, -MediaQuery.of(context).size.width / 1.3),
        child: Transform.scale(
          scale: 1.35,
          child: Container(
            height: MediaQuery.of(context).size.width,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: _showSignIn ? Colors.grey[800] : Colors.black,
                borderRadius: BorderRadius.circular(
                  MediaQuery.of(context).size.width,
                )),
          ),
        ),
      ),
    );
  }
}
