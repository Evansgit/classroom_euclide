import 'package:flutter/material.dart';

import '../../../../Library/Animation/FadeAnimation.dart';
import '../../../../Library/Constant/Slideanimation.dart';

class LoginScreen19 extends StatefulWidget {
  LoginScreen19({Key? key}) : super(key: key);

  @override
  State<LoginScreen19> createState() => _LoginScreen19State();
}

class _LoginScreen19State extends State<LoginScreen19>
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
         
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      SlideAnimation(
                          position: 1,
                          itemCount: 8,
                          slideDirection: SlideDirection.fromLeft,
                          animationController: _animationController,
                          child: Text(
                            "Trevasos",
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.w800,
                                fontFamily: "Sofia"),
                          )),
                      SizedBox(
                        height: 30.0,
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: <Widget>[
                        SlideAnimation(
                            position: 1,
                            itemCount: 8,
                            slideDirection: SlideDirection.fromLeft,
                            animationController: _animationController,
                            child: makeInput(label: "Email")),
                        SlideAnimation(
                            position: 1,
                            itemCount: 8,
                            slideDirection: SlideDirection.fromLeft,
                            animationController: _animationController,
                            child: makeInput(
                                label: "Password", obscureText: true)),
                      ],
                    ),
                  ),
                  SlideAnimation(
                      position: 1,
                      itemCount: 8,
                      slideDirection: SlideDirection.fromLeft,
                      animationController: _animationController,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: Container(
                          padding: EdgeInsets.only(top: 3, left: 3),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border(
                                bottom: BorderSide(color: Colors.black),
                                top: BorderSide(color: Colors.black),
                                left: BorderSide(color: Colors.black),
                                right: BorderSide(color: Colors.black),
                              )),
                          child: MaterialButton(
                            minWidth: double.infinity,
                            height: 60,
                            onPressed: () {},
                            color: Colors.greenAccent,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 18),
                            ),
                          ),
                        ),
                      )),
                  SlideAnimation(
                      position: 1,
                      itemCount: 8,
                      slideDirection: SlideDirection.fromLeft,
                      animationController: _animationController,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Don't have an account?"),
                          Text(
                            "Sign up",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 18),
                          ),
                        ],
                      ))
                ],
              ),
            ),
            SlideAnimation(
                position: 1,
                itemCount: 8,
                slideDirection: SlideDirection.fromLeft,
                animationController: _animationController,
                child: Container(
                  height: MediaQuery.of(context).size.height / 3,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'lib/Screen/UI_Screen/Login_Screen/Assets/login19.jpg'),
                          fit: BoxFit.cover)),
                ))
          ],
        ),
      ),
    );
  }

  Widget makeInput({required label, obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 10.0,
        ),
        Text(
          label,
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Colors.black87,
              fontFamily: "Sofia"),
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[400]!)),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[400]!)),
          ),
        ),
        SizedBox(
          height: 30,
        ),
      ],
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
