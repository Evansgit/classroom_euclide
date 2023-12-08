
import 'package:flutter/material.dart';

import '../../../../Library/Animation/FadeAnimation.dart';
import '../../../../Library/Constant/Slideanimation.dart';

/// Component UI
class SplashScreen9 extends StatefulWidget {
  @override
  _SplashScreen9State createState() => _SplashScreen9State();
}

/// Component UI
class _SplashScreen9State extends State<SplashScreen9>
    with SingleTickerProviderStateMixin {
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
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff21254A),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 200,
            child: Stack(
              children: <Widget>[
                Positioned(
                    child: SlideAnimation(
                  position: 1,
                  itemCount: 8,
                  slideDirection: SlideDirection.fromLeft,
                  animationController: _animationController,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                            "lib/Screen/UI_Screen/Login_Screen/Assets/login1.png"),
                      ),
                    ),
                  ),
                ))
              ],
            ),
          ),
          SizedBox(
            height: 210,
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SlideAnimation(
                  position: 1,
                  itemCount: 8,
                  slideDirection: SlideDirection.fromLeft,
                  animationController: _animationController,
                  child: Center(
                    child: Text(
                      "Application",
                      style: TextStyle(
                        fontSize: 35,
                        fontFamily: "Sofia",
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
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
