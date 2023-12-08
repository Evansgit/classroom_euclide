
import 'package:flutter/material.dart';

class LoginScreen7 extends StatefulWidget {
  @override
  _LoginScreen7State createState() => _LoginScreen7State();
}

class _LoginScreen7State extends State<LoginScreen7> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
          height: screenSize.height,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    'lib/Screen/UI_Screen/Login_Screen/Assets/login7.jpg'),
                fit: BoxFit.cover),
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 119.9,
              ),
              Text(
                "Qubicle Tech",
                style: TextStyle(
                    fontFamily: "Sofia",
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 32.0),
              ),
              Padding(
                padding: EdgeInsets.only(top: 100),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                    ),
                    Flexible(
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                              color: Colors.white, fontFamily: "Sofia"),
                          hintText: 'Enter your email',
                          icon: Icon(Icons.person, color: Colors.white),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                    ),
                    Flexible(
                      child: TextField(
                        obscureText: true,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'Enter your password',
                          hintStyle: TextStyle(
                              color: Colors.white, fontFamily: "Sofia"),
                          icon: Icon(Icons.lock, color: Colors.white),
                          suffixIcon:
                              Icon(Icons.visibility, color: Colors.white),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                width: screenSize.width,
                child: Text(
                  'Forgot your password?',
                  style: TextStyle(
                      color: Colors.white, fontFamily: "Sofia", fontSize: 14.0),
                  textAlign: TextAlign.right,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 70),
              ),
              Container(
                  width: screenSize.width * 0.8,
                  height: screenSize.width * 0.14,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0.0, backgroundColor: Color(0xFF5DCCC2),
                          padding: EdgeInsets.symmetric(horizontal: 30),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Sofia",
                              fontWeight: FontWeight.w700,
                              fontSize: 18.0),
                        )),
                  )),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Don\'t have an account? ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: "Sofia")),
                    Text('Sign up',
                        style: TextStyle(
                            color: Color(0xFF5DCCC2),
                            fontSize: 15,
                            fontFamily: "Sofia",
                            fontWeight: FontWeight.bold))
                  ],
                ),
              ),
            ],
          )),
    ));
  }
}
