import 'dart:async';
import 'package:flutter/material.dart';

class LoginScreen39 extends StatefulWidget {
  @override
  _LoginScreen39State createState() => _LoginScreen39State();
}

class _LoginScreen39State extends State<LoginScreen39>
    with TickerProviderStateMixin {
  //Animation Declaration
  late AnimationController sanimationController;
  AnimationController? animationControllerScreen;
  Animation? animationScreen;
  var tap = 0;

  /// Set AnimationController to initState
  @override
  void initState() {
    sanimationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 800))
          ..addStatusListener((statuss) {
            if (statuss == AnimationStatus.dismissed) {
              setState(() {
                tap = 0;
              });
            }
          });
    // TODO: implement initState
    super.initState();
  }

  /// Dispose animationController
  @override
  void dispose() {
    sanimationController.dispose();
    super.dispose();
  }

  String? _email, _pass, _email2, _pass2, _name, _id;

  bool isLoading = false;
  TextEditingController loginEmailController = new TextEditingController();
  TextEditingController loginPasswordController = new TextEditingController();
  final GlobalKey<FormState> _registerFormKey = GlobalKey<FormState>();

  /// Playanimation set forward reverse
  Future<Null> _PlayAnimation() async {
    try {
      await sanimationController.forward();
      await sanimationController.reverse();
    } on TickerCanceled {}
  }

  /// Component Widget layout UI
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    mediaQueryData.devicePixelRatio;
    mediaQueryData.size.height;
    mediaQueryData.size.width;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            /// Set Background image in layout
            // decoration: BoxDecoration(
            //     image: DecorationImage(
            //   image: AssetImage("assets/image/signupBackground.jpg"),
            //   fit: BoxFit.cover,
            // )),
            child: Container(
              /// Set gradient color in image
              // decoration: BoxDecoration(
              //   gradient: LinearGradient(
              //     colors: [
              //       Color.fromRGBO(0, 0, 0, 0.2),
              //       Color.fromRGBO(0, 0, 0, 0.3)
              //     ],
              //     begin: FractionalOffset.topCenter,
              //     end: FractionalOffset.bottomCenter,
              //   ),
              // ),

              /// Set component layout
              child: Form(
                key: _registerFormKey,
                child: ListView(
                  padding: EdgeInsets.all(0.0),
                  children: <Widget>[
                    Stack(
                      alignment: AlignmentDirectional.bottomCenter,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              alignment: AlignmentDirectional.topCenter,
                              child: Column(
                                children: <Widget>[
                                  /// padding logo
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: mediaQueryData.padding.top +
                                              20.0)),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 30.0, left: 20.0),
                                        child: InkWell(
                                          onTap: () {},
                                          child: Icon(
                                            Icons.arrow_back,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),

                                      /// Animation text treva shop accept from login layout
                                    ],
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(top: 20.0),
                                    child: Text(
                                      "Login Screen",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          letterSpacing: 0.6,
                                          fontFamily: "Sofia",
                                          color: Colors.black,
                                          fontSize: 45.0),
                                    ),
                                  ),

                                  Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 30.0)),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 25.0, right: 25.0, top: 15.0),
                                    child: Container(
                                      height: 53.5,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5.0)),
                                        boxShadow: [
                                          BoxShadow(
                                              blurRadius: 6.0,
                                              color: Colors.black12
                                                  .withOpacity(0.05),
                                              spreadRadius: 1.0)
                                        ],
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 12.0, right: 12.0, top: 5.0),
                                        child: Theme(
                                          data: ThemeData(
                                              hintColor: Colors.transparent),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10.0),
                                            child: TextFormField(
                                              validator: (input) {
                                                if (input!.isEmpty) {
                                                  return 'Please typle an email';
                                                }
                                                return null;
                                              },
                                              onSaved: (input) =>
                                                  _email = input,
                                              controller: loginEmailController,
                                              style: new TextStyle(
                                                  color: Colors.black),
                                              textAlign: TextAlign.start,
                                              keyboardType:
                                                  TextInputType.emailAddress,
                                              autocorrect: false,
                                              autofocus: false,
                                              decoration: InputDecoration(
                                                  icon: Icon(
                                                    Icons.email,
                                                    color: Colors.black38,
                                                  ),
                                                  border: InputBorder.none,
                                                  contentPadding:
                                                      EdgeInsets.all(0.0),
                                                  filled: true,
                                                  fillColor: Colors.transparent,
                                                  labelText: "Email",
                                                  hintStyle: TextStyle(
                                                      color: Colors.black38),
                                                  labelStyle: TextStyle(
                                                    fontFamily: "Sofia",
                                                    color: Colors.black38,
                                                  )),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 25.0, right: 25.0, top: 15.0),
                                    child: Container(
                                      height: 53.5,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5.0)),
                                        boxShadow: [
                                          BoxShadow(
                                              blurRadius: 6.0,
                                              color: Colors.black12
                                                  .withOpacity(0.05),
                                              spreadRadius: 1.0)
                                        ],
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 12.0, right: 12.0, top: 5.0),
                                        child: Theme(
                                          data: ThemeData(
                                              hintColor: Colors.transparent),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10.0),
                                            child: TextFormField(
                                              validator: (input) {
                                                if (input!.isEmpty) {
                                                  return 'Please typle an password';
                                                }
                                                return null;
                                              },
                                              onSaved: (input) => _pass = input,
                                              controller:
                                                  loginPasswordController,
                                              style: new TextStyle(
                                                  color: Colors.black),
                                              textAlign: TextAlign.start,
                                              keyboardType:
                                                  TextInputType.emailAddress,
                                              autocorrect: false,
                                              autofocus: false,
                                              obscureText: true,
                                              decoration: InputDecoration(
                                                  icon: Icon(Icons.vpn_key),
                                                  border: InputBorder.none,
                                                  contentPadding:
                                                      EdgeInsets.all(0.0),
                                                  filled: true,
                                                  fillColor: Colors.transparent,
                                                  labelText: "Password",
                                                  hintStyle: TextStyle(
                                                      color: Colors.black38),
                                                  labelStyle: TextStyle(
                                                    fontFamily: "Sofia",
                                                    color: Colors.black38,
                                                  )),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                  Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 5.0)),

                                  /// Button Login
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        elevation: 0.0, backgroundColor: Colors.transparent,
                                        padding: EdgeInsets.only(top: 20.0),
                                      ),
                                      onPressed: () {
                                        // Navigator.of(context)
                                        //     .pushReplacement(
                                        //         MaterialPageRoute(
                                        //             builder: (BuildContext
                                        //                     context) =>
                                        //                 new Signup()));
                                      },
                                      child: Text(
                                        "Not Have Account",
                                        style: TextStyle(
                                            color: Colors.black38,
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: "Sofia"),
                                      )),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: mediaQueryData.padding.top + 145.0,
                                        bottom: 0.0),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        InkWell(onTap: () async {}, child: buttonBlackBottom()),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// textfromfield custom class
class textFromField extends StatelessWidget {
  bool? password;
  String? email;
  IconData? icon;
  TextInputType? inputType;

  textFromField({this.email, this.icon, this.inputType, this.password});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Container(
        height: 60.0,
        alignment: AlignmentDirectional.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14.0),
            color: Colors.white,
            boxShadow: [BoxShadow(blurRadius: 10.0, color: Colors.black12)]),
        padding:
            EdgeInsets.only(left: 20.0, right: 30.0, top: 0.0, bottom: 0.0),
        child: Theme(
          data: ThemeData(
            hintColor: Colors.transparent,
          ),
          child: TextFormField(
            obscureText: password!,
            decoration: InputDecoration(
                border: InputBorder.none,
                labelText: email,
                icon: Icon(
                  icon,
                  color: Colors.black38,
                ),
                labelStyle: TextStyle(
                    fontSize: 15.0,
                    fontFamily: 'Sofia',
                    letterSpacing: 0.3,
                    color: Colors.black38,
                    fontWeight: FontWeight.w600)),
            keyboardType: inputType,
          ),
        ),
      ),
    );
  }
}

///ButtonBlack class
class buttonBlackBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 55.0,
          width: 600.0,
          child: Text(
            "Login",
            style: TextStyle(
                color: Colors.white,
                letterSpacing: 0.2,
                fontFamily: "Sofia",
                fontSize: 18.0,
                fontWeight: FontWeight.w800),
          ),
          alignment: FractionalOffset.center,
          decoration: BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.black38, blurRadius: 15.0)],
              borderRadius: BorderRadius.circular(10.0),
              gradient: LinearGradient(
                  colors: <Color>[Color(0xFF4D9EE7), Color(0xFF5A6DE9)])),
        ),
      ),
    );
  }
}
