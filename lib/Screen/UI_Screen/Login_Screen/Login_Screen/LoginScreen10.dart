import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen10 extends StatefulWidget {
  LoginScreen10({Key? key}) : super(key: key);

  @override
  _LoginScreen10State createState() => _LoginScreen10State();
}

class _LoginScreen10State extends State<LoginScreen10> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            height: size.height * .47,
            width: size.width,
            child: Image.asset(
              "lib/Screen/UI_Screen/Login_Screen/Assets/login10.jpg",
              scale: 1,
              fit: BoxFit.fitWidth,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0 * 5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height * .2,
                ),
                Text('Welcome\nBack',
                    style: TextStyle(
                        fontFamily: "Sofia",
                        fontSize: 40.0,
                        fontWeight: FontWeight.w800,
                        color: Colors.white)),
                SizedBox(
                  height: size.height * .15,
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(hintText: 'Email'),
                ),
                SizedBox(
                  height: size.height * .05,
                ),
                TextField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(hintText: 'Password'),
                ),
                SizedBox(
                  height: size.height * .1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Sign In',
                        style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.w900,
                            fontFamily: "Sofia")),
                    Container(
                      height: 80,
                      width: 80,
                      child: FloatingActionButton(
                        backgroundColor: Colors.green[300],
                        onPressed: () {},
                        child: Icon(
                          CupertinoIcons.arrow_right,
                          size: 32.0,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
