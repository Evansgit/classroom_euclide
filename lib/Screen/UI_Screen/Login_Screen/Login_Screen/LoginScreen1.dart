import 'package:flutter/material.dart';

import '../../../../Library/Animation/FadeAnimation.dart';
import '../../../../Library/Constant/Slideanimation.dart';

class LoginScreen1 extends StatefulWidget {
  @override
  _LoginScreen1State createState() => _LoginScreen1State();
}

class _LoginScreen1State extends State<LoginScreen1>
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

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff21254A),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 200,
            child: Stack(
              children: <Widget>[
                SlideAnimation(
                    position: 2,
                    itemCount: 8,
                    slideDirection: SlideDirection.fromTop,
                    animationController: _animationController,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              "lib/Screen/UI_Screen/Login_Screen/Assets/login1.png"),
                        ),
                      ),
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SlideAnimation(
                  position: 1,
                  itemCount: 8,
                  slideDirection: SlideDirection.fromLeft,
                  animationController: _animationController,
                  child: Text(
                    "Hello There, \nWelcome Back",
                    style: TextStyle(
                      fontSize: 35,
                      fontFamily: "Sofia",
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                SlideAnimation(
                  position: 1,
                  itemCount: 8,
                  slideDirection: SlideDirection.fromLeft,
                  animationController: _animationController,
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.transparent,
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.grey[100]!,
                              ),
                            ),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Username",
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.grey[100]!,
                              ),
                            ),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.grey)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Center(
                  child: SlideAnimation(
                    position: 1,
                    itemCount: 8,
                    slideDirection: SlideDirection.fromLeft,
                    animationController: _animationController,
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        fontFamily: "Sofia",
                        color: Colors.pink[200],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                SlideAnimation(
                  position: 1,
                  itemCount: 8,
                  slideDirection: SlideDirection.fromLeft,
                  animationController: _animationController,
                  child: Container(
                    height: 50,
                    margin: EdgeInsets.symmetric(horizontal: 60),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.pink[200],
                    ),
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontSize: 18.0,
                          fontFamily: "Sofia",
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                SlideAnimation(
                  position: 1,
                  itemCount: 8,
                  slideDirection: SlideDirection.fromLeft,
                  animationController: _animationController,
                  child: Center(
                    child: Text(
                      "Create Account",
                      style: TextStyle(
                        color: Colors.pink[200],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
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
