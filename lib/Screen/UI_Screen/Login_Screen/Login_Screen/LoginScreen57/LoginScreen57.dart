import 'package:flutter/material.dart';

import '../../../../Template_Material/screen/Buttons/Buttons/Animations_Buttons.dart';

class LoginScreen57 extends StatefulWidget {
  @override
  _LoginScreen57State createState() => _LoginScreen57State();
}

class _LoginScreen57State extends State<LoginScreen57>
    with TickerProviderStateMixin {
  @override

  //Animation Declaration
  late AnimationController sanimationController;

  var tap = 0;

  @override

  /// set state animation controller
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

  /// Dispose animation controller
  @override
  void dispose() {
    sanimationController.dispose();
    super.dispose();
  }

  /// Playanimation set forward reverse
  Future<Null> _PlayAnimation() async {
    try {
      await sanimationController.forward();
      await sanimationController.reverse();
    } on TickerCanceled {}
  }

  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    height: 270,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                            height: 300,
                            width: width + 20,
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://images2.imgbox.com/6f/7e/XzS7YB4I_o.png'),
                                      fit: BoxFit.fill)),
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        /// Fade Animation for transtition animaniton

                        Text(
                          "Login",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              fontWeight: FontWeight.w800,
                              fontSize: 37.5,
                              wordSpacing: 0.1),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(196, 135, 198, .3),
                                  blurRadius: 20,
                                  offset: Offset(0, 10),
                                )
                              ]),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey[200]!))),
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Email",
                                      icon: Icon(
                                        Icons.email,
                                        color: Colors.black12,
                                      ),
                                      hintStyle: TextStyle(
                                          color: Colors.grey,
                                          fontFamily: "sofia")),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                child: TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Password",
                                      icon: Icon(
                                        Icons.vpn_key,
                                        color: Colors.black12,
                                      ),
                                      hintStyle: TextStyle(
                                          color: Colors.grey,
                                          fontFamily: "sofia")),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        InkWell(
                            onTap: () {},
                            child: Text(
                              "Create Account",
                              style: TextStyle(
                                  color: Colors.black38,
                                  fontFamily: "Sofia",
                                  fontWeight: FontWeight.w300,
                                  letterSpacing: 1.3),
                            )),
                        SizedBox(height: 110)
                      ],
                    ),
                  ),
                ],
              ),

              /// Set Animaion after user click buttonLoginScreen57
              tap == 0
                  ? InkWell(
                      splashColor: Colors.yellow,
                      onTap: () {
                        setState(() {
                          tap = 1;
                        });
                        new LoginAnimation(
                          animationController:
                              sanimationController.view as AnimationController,
                        );
                        _PlayAnimation();
                      },
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 55.0,
                          margin: EdgeInsets.only(
                              left: 20.0, right: 20.0, top: 0.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color(0xFF8DA2BF),
                          ),
                          child: Center(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Sofia",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 19.5,
                                  letterSpacing: 1.2),
                            ),
                          ),
                        ),
                      ),
                    )
                  : new LoginAnimation(
                      animationController:
                          sanimationController.view as AnimationController,
                    )
            ],
          ),
        ],
      ),
    );
  }
}
