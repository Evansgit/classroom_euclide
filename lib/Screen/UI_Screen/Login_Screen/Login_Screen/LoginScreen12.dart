import 'package:flutter/material.dart';

import '../../../../Library/Animation/FadeAnimation.dart';
import '../../../../Library/Constant/Slideanimation.dart';

class LoginScreen12 extends StatefulWidget {
  @override
  _LoginScreen12State createState() => _LoginScreen12State();
}

class _LoginScreen12State extends State<LoginScreen12>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 2000));

    // _tapGestureRecognizer = TapGestureRecognizer()
    //   ..onTap = () {
    //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => WRSingup1()));
    //   };
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 370,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: -40,
                    height: 400,
                    width: width,
                    child: SlideAnimation(
                        position: 1,
                        itemCount: 8,
                        slideDirection: SlideDirection.fromLeft,
                        animationController: _animationController,
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'lib/Screen/UI_Screen/Login_Screen/Assets/login12.jpg'),
                                  fit: BoxFit.fill)),
                        )),
                  ),
                  Positioned(
                    height: 350,
                    width: width + 20,
                    child: SlideAnimation(
                        position: 1,
                        itemCount: 8,
                        slideDirection: SlideDirection.fromLeft,
                        animationController: _animationController,
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'lib/Screen/UI_Screen/Login_Screen/Assets/login12.jpg'),
                                  fit: BoxFit.fill)),
                        )),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 0.0,
                  ),
                  SlideAnimation(
                      position: 1,
                      itemCount: 8,
                      slideDirection: SlideDirection.fromLeft,
                      animationController: _animationController,
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Color.fromRGBO(49, 39, 79, 1),
                            fontWeight: FontWeight.bold,
                            fontFamily: "Sofia",
                            fontSize: 30),
                      )),
                  SizedBox(
                    height: 30,
                  ),
                  SlideAnimation(
                      position: 1,
                      itemCount: 8,
                      slideDirection: SlideDirection.fromLeft,
                      animationController: _animationController,
                      child: Container(
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
                                    hintText: "Username",
                                    hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: "Sofia")),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Password",
                                    hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: "Sofia")),
                              ),
                            )
                          ],
                        ),
                      )),
                  SizedBox(
                    height: 45,
                  ),
                  SlideAnimation(
                      position: 1,
                      itemCount: 8,
                      slideDirection: SlideDirection.fromLeft,
                      animationController: _animationController,
                      child: Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xFFB2DFDB),
                        ),
                        child: Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Sofia",
                                fontWeight: FontWeight.w700,
                                fontSize: 19.0),
                          ),
                        ),
                      )),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;

  FadeAnimation(this.delay, this.child);

  @override
  Widget build(BuildContext context) {
    final tween = MultiTrackTween([
      Track("opacity").add(
          Duration(milliseconds: 500), Tween(begin: 0.0, end: 1.0),
          curve: Curves.bounceIn),
      Track("translateY").add(
          Duration(milliseconds: 500), Tween(begin: -30.0, end: 0.0),
          curve: Curves.easeOut)
    ]);

    return ControlledAnimation(
      delay: Duration(milliseconds: (500 * delay).round()),
      duration: tween.duration,
      tween: tween,
      child: child,
      builderWithChild: (context, child, dynamic animation) => Opacity(
        opacity: animation["opacity"],
        child: Transform.translate(
            offset: Offset(0, animation["translateY"]), child: child),
      ),
      animationControllerStatusListener: (AnimationStatus status) {},
      builder: (BuildContext buildContext, Map<String, dynamic> animatedValue) {
        return SizedBox();
      },
    );
  }
}
