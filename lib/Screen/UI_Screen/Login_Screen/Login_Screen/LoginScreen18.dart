import 'package:flutter/material.dart';

class LoginScreen18 extends StatefulWidget {
  @override
  _LoginScreen18State createState() => _LoginScreen18State();
}

class _LoginScreen18State extends State<LoginScreen18> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: SingleChildScrollView(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                    child: Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 80.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Sofia"),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(210.0, 115.0, 0.0, 0.0),
                    child: Text(
                      '.',
                      style: TextStyle(
                          fontSize: 80.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF16B7E5)),
                    ),
                  )
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.only(top: 65.0, left: 20.0, right: 20.0),
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'EMAIL',
                          labelStyle: TextStyle(
                              fontFamily: 'Sofia',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                          // hintText: 'EMAIL',
                          // hintStyle: ,
                          focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Color(0xFF16B7E5)))),
                    ),
                    SizedBox(height: 10.0),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'PASSWORD ',
                          labelStyle: TextStyle(
                              fontFamily: 'Sofia',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                          focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Color(0xFF16B7E5)))),
                      obscureText: true,
                    ),
                    SizedBox(height: 80.0),
                    Container(
                        height: 55.0,
                        child: Material(
                          borderRadius: BorderRadius.circular(20.0),
                          shadowColor: Color(0xFF16B7E5),
                          color: Color(0xFF16B7E5),
                          elevation: 7.0,
                          child: GestureDetector(
                            onTap: () {},
                            child: Center(
                              child: Text(
                                'SGININ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Sofia'),
                              ),
                            ),
                          ),
                        )),
                    SizedBox(height: 20.0),
                    Container(
                      height: 50.0,
                      color: Colors.transparent,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.black,
                                style: BorderStyle.solid,
                                width: 1.0),
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(20.0)),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Center(
                            child: Text('Sign Up Here',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Sofia')),
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ]),
    ));
  }
}
