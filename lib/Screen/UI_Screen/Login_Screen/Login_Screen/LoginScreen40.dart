import 'package:crypto_template/Screen/FullApps/VinckierFoods/Screens/B1_HomeScreen/Home_ScreenT4.dart';
import 'package:flutter/material.dart';

import '../../../../Library/Constant/Slideanimation.dart';

class LoginScreen40 extends StatefulWidget {
  LoginScreen40({Key? key}) : super(key: key);

  @override
  _LoginScreen40State createState() => _LoginScreen40State();
}

class _LoginScreen40State extends State<LoginScreen40>
    with SingleTickerProviderStateMixin {
  ///
  /// Create Show Password
  ///
  void _toggleLoginScreen40() {
    setState(() {
      _obscureTextLoginScreen40 = !_obscureTextLoginScreen40;
    });
  }

  bool _obscureTextLoginScreen40 = true;

  AnimationController? _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 2000));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECF2F9),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SlideAnimation(
                position: 1,
                itemCount: 8,
                slideDirection: SlideDirection.fromLeft,
                animationController: _animationController,
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.only(top: 150.0),
                  child: Text(
                    "Welcome!",
                    style: TextStyle(
                        fontFamily: "Sofia",
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF0979FF),
                        fontSize: 44.0),
                  ),
                )),
              ),
              SizedBox(
                height: 40.0,
              ),
              SlideAnimation(
                position: 1,
                itemCount: 8,
                slideDirection: SlideDirection.fromLeft,
                animationController: _animationController,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Login in to continue",
                    style: TextStyle(
                        fontFamily: "Sofia",
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF0979FF),
                        fontSize: 16.0),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              SlideAnimation(
                position: 1,
                itemCount: 8,
                slideDirection: SlideDirection.fromLeft,
                animationController: _animationController,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10.0, left: 40.0, right: 15.0),
                      child: Container(
                        height: 40.0,
                        width: 33.0,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xFF16B1FF),
                                  Color(0xFF0979FF),
                                  Color(0xFF0979FF),
                                ]),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12.withOpacity(0.08),
                                blurRadius: 10.0,
                                spreadRadius: 3.0,
                              )
                            ]),
                        child: Center(
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                            size: 19,
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 50.0),
                        child: Theme(
                          data: new ThemeData(
                              primaryColor: Colors.red,
                               
                              hintColor: Color(0xFF0979FF).withOpacity(0.1)),
                          child: TextFormField(
                            style: new TextStyle(color: Color(0xFF0979FF)),
                            textAlign: TextAlign.start,
                            keyboardType: TextInputType.emailAddress,
                            autocorrect: false,
                            autofocus: false,
                            decoration: InputDecoration(
                                border: new UnderlineInputBorder(
                                    borderSide: new BorderSide(
                                        color: Colors.blueAccent)),
                                contentPadding: EdgeInsets.all(0.0),
                                filled: true,
                                fillColor: Colors.transparent,
                                labelText: 'hello@gmail.com',
                                hintStyle: TextStyle(
                                    color: Color(0xFF0979FF).withOpacity(0.1)),
                                labelStyle: TextStyle(
                                  color: Color(0xFF0979FF).withOpacity(0.9),
                                )),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              SlideAnimation(
                position: 1,
                itemCount: 8,
                slideDirection: SlideDirection.fromLeft,
                animationController: _animationController,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10.0, left: 40.0, right: 15.0),
                      child: Container(
                        height: 40.0,
                        width: 33.0,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xFF16B1FF),
                                  Color(0xFF0979FF),
                                  Color(0xFF0979FF),
                                ]),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12.withOpacity(0.08),
                                blurRadius: 10.0,
                                spreadRadius: 3.0,
                              )
                            ]),
                        child: Center(
                          child: Icon(
                            Icons.lock,
                            color: Colors.white,
                            size: 17,
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 50.0),
                        child: Theme(
                          data: new ThemeData(
                              primaryColor: Colors.blueAccent,
                               
                              hintColor: Color(0xFF0979FF).withOpacity(0.1)),
                          child: TextFormField(
                            style: new TextStyle(color: Color(0xFF0979FF)),
                            textAlign: TextAlign.start,
                            keyboardType: TextInputType.visiblePassword,
                            autocorrect: false,
                            autofocus: false,
                            obscureText: _obscureTextLoginScreen40,
                            decoration: InputDecoration(
                                suffixIcon: GestureDetector(
                                  onTap: _toggleLoginScreen40,
                                  child: Icon(
                                    Icons.remove_red_eye,
                                    size: 15.0,
                                    color: Colors.black54,
                                  ),
                                ),
                                border: new UnderlineInputBorder(
                                    borderSide: new BorderSide(
                                        color: Colors.blueAccent)),
                                contentPadding: EdgeInsets.all(0.0),
                                filled: true,
                                fillColor: Colors.transparent,
                                labelText: 'Password',
                                hintStyle: TextStyle(
                                    color: Color(0xFF0979FF).withOpacity(0.1)),
                                labelStyle: TextStyle(
                                  color: Color(0xFF0979FF).withOpacity(0.9),
                                )),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SlideAnimation(
                  position: 1,
                  itemCount: 8,
                  slideDirection: SlideDirection.fromLeft,
                  animationController: _animationController,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 32.0, right: 32.0, top: 110.0),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(PageRouteBuilder(
                              pageBuilder: (_, __, ___) => new HomeScreen()));
                        },
                        child: Container(
                          height: 53.0,
                          width: 150.0,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40.0)),
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color(0xFF16B1FF),
                                    Color(0xFF0979FF),
                                    Color(0xFF0979FF),
                                  ]),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12.withOpacity(0.08),
                                  blurRadius: 10.0,
                                  spreadRadius: 3.0,
                                )
                              ]),
                          child: Center(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Next",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Sofia",
                                    letterSpacing: 0.9),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              )
                            ],
                          )),
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
