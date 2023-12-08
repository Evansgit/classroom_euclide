import 'package:flutter/material.dart';

class LoginScreen4 extends StatefulWidget {
  @override
  _LoginScreen4State createState() => _LoginScreen4State();
}

class _LoginScreen4State extends State<LoginScreen4> {
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  bool rememberMe = true;

  Widget _title() {
    return Text(
      "Welcome Back!",
      style: TextStyle(
        fontFamily: "Sofia",
        fontSize: 33,
        fontWeight: FontWeight.w700,
        color: Color(0xFF8E9873),
      ),
    );
  }

  Widget _subtitle() {
    return Text(
      "Sign in to your account",
      style: TextStyle(
        fontFamily: "Sofia",
        wordSpacing: -0.5,
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: Colors.grey,
      ),
    );
  }

  Widget _textField(controller, title, bool isPassword) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          SizedBox(
            height: 5,
          ),
          TextField(
            obscureText: isPassword,
            keyboardType: TextInputType.emailAddress,
            controller: controller,
            autofocus: false,
            decoration: InputDecoration(
              hintText: "Enter your $title",
              border: InputBorder.none,
              fillColor: Color(0xfff3f3f4),
              filled: true,
            ),
          )
        ],
      ),
    );
  }

  Widget _rememberCheck() {
    return Row(
      children: <Widget>[
        Container(
            child: Checkbox(
          value: rememberMe,
          onChanged: (bool? value) {},
        )),
        _remember()
      ],
    );
  }

  Widget _remember() {
    return Text(
      "Remember me",
      style: TextStyle(
        fontFamily: "Sofia",
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: Colors.black,
      ),
    );
  }

  Widget _forget() {
    return Text(
      "Forgot Password?",
      style: TextStyle(
          fontFamily: "Sofia",
          fontSize: 12,
          fontWeight: FontWeight.w700,
          color: Color(0xFF8E9873)),
    );
  }

  Widget _submitButton() {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 15),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.grey.shade200,
                offset: Offset(2, 4),
                blurRadius: 5,
                spreadRadius: 2)
          ],
          color: Color(0xFF8E9873)),
      child: Text(
        'Sign In ',
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    );
  }

  Widget _signupTitle() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: "Not an account yet? ",
          style: TextStyle(
            fontFamily: "Sofia",
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color(0xff00234B),
          ),
          children: [
            TextSpan(
              text: "Sign Up",
              style: TextStyle(color: Color(0xFF8E9873), fontSize: 16),
            ),
          ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: <Widget>[
          Positioned(
              top: 0,
              right: 0,
              height: 150,
              child: Image.asset(
                  'lib/Screen/UI_Screen/Login_Screen/Assets/login4a.jpg')),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                child: Image.asset(
                    "lib/Screen/UI_Screen/Login_Screen/Assets/login4b.jpg"),
                height: 120,
              )
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: SizedBox(),
                ),
                _title(),
                SizedBox(
                  height: 5,
                ),
                _subtitle(),
                SizedBox(
                  height: 20,
                ),
                _textField(emailController, "Email", false),
                _textField(passwordController, "Password", true),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    _rememberCheck(),
                    GestureDetector(onTap: () {}, child: _forget()),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                _submitButton(),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: _signupTitle(),
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(),
                ),
              ],
            ),
          ),
        ],
      ),
    )));
  }
}
