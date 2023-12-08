import 'package:flutter/material.dart';

class LoginScreen16 extends StatelessWidget {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 100.0,
              ),
              RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: 'LOG',
                      style: TextStyle(
                        fontFamily: "Sofia",
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: 'IN',
                      style: TextStyle(
                        fontFamily: "Sofia",
                        color: Color(0xFF27D29C),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 70.0,
              ),
              Container(
                height: 45.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF282828),
                ),
                child: TextField(
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter your Email",
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.white,
                      size: 19.0,
                    ),
                    hintStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontFamily: "Sofia"),
                  ),
                ),
              ),
              Container(
                height: 45.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF282828),
                ),
                child: TextField(
                  obscureText: _isObscure,
                  style: TextStyle(
                      color: Colors.white, fontSize: 17.0, fontFamily: "Sofia"),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Password",
                    prefixIcon: Icon(
                      Icons.lock,
                      size: 19.0,
                      color: Colors.white,
                    ),
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: Row(
                  children: [
                    Text(
                      "Forget Password?",
                      style: TextStyle(
                          color: Color(0xFF27D29C), fontFamily: "Sofia"),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 90,
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF27D29C),
                ),
                child: Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Sofia",
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: "Don't have an account?",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Sofia",
                          fontWeight: FontWeight.w400),
                    ),
                    TextSpan(
                      text: ' Sign up',
                      style: TextStyle(
                        color: Color(0xFF27D29C),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
