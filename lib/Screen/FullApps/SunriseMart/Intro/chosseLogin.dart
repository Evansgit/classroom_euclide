import 'package:flutter/material.dart';

import '../../../../Library/Constant/Slideanimation.dart';
import 'loginEmail.dart';

class ChosseLoginT2 extends StatefulWidget {
  ChosseLoginT2({Key? key}) : super(key: key);

  _ChosseLoginT2State createState() => _ChosseLoginT2State();
}

class _ChosseLoginT2State extends State<ChosseLoginT2>
    with SingleTickerProviderStateMixin {
  var _txtStyle = TextStyle(
      fontFamily: "Sofia",
      fontWeight: FontWeight.w600,
      color: Colors.black54,
      fontSize: 13.0);

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
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: _height,

        /// Set Background image in splash screen layout (Click to open code)
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    'lib/Screen/FullApps/SunriseMart/Assets/choseLoginBackground.jpg'),
                fit: BoxFit.cover)),
        child: Container(
          /// Set gradient black in image splash screen (Click to open code)

          child: SingleChildScrollView(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 120.0),
                  ),
                  SlideAnimation(
                    position: 1,
                    itemCount: 8,
                    slideDirection: SlideDirection.fromLeft,
                    animationController: _animationController,
                    child: Text(
                      "Grocery",
                      style: TextStyle(
                          fontFamily: "Sofia",
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF5FBD84),
                          fontSize: 54.0),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 2.1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SlideAnimation(
                        position: 1,
                        itemCount: 8,
                        slideDirection: SlideDirection.fromLeft,
                        animationController: _animationController,
                        child: Container(
                          height: 45.0,
                          width: _width / 2.5,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(6.0)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black45.withOpacity(0.15),
                                  blurRadius: 19.0,
                                  spreadRadius: 2.0)
                            ],
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, right: 8.0),
                                  child: Image.asset(
                                    "lib/Screen/FullApps/SunriseMart/Assets/facebook.jpg",
                                    height: 25.0,
                                    width: 25.0,
                                  ),
                                ),
                                Text(
                                  "Facebook",
                                  style: _txtStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 7.0,
                      ),
                      SlideAnimation(
                        position: 1,
                        itemCount: 8,
                        slideDirection: SlideDirection.fromLeft,
                        animationController: _animationController,
                        child: Container(
                          height: 45.0,
                          width: _width / 2.5,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(6.0)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black45.withOpacity(0.15),
                                  blurRadius: 19.0,
                                  spreadRadius: 2.0)
                            ],
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Image.asset(
                                    "lib/Screen/FullApps/SunriseMart/Assets/google.jpg",
                                    height: 30.0,
                                    width: 30.0,
                                  ),
                                ),
                                Text(
                                  "Google",
                                  style: _txtStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  SlideAnimation(
                    position: 1,
                    itemCount: 8,
                    slideDirection: SlideDirection.fromLeft,
                    animationController: _animationController,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacement(PageRouteBuilder(
                            pageBuilder: (_, __, ___) => new LoginScreenT2()));
                      },
                      child: Container(
                        height: 52.0,
                        width: _width / 1.2,
                        decoration: BoxDecoration(
                          color: Color(0xFF5FBD84),
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black45.withOpacity(0.15),
                                blurRadius: 19.0,
                                spreadRadius: 2.0)
                          ],
                        ),
                        child: Center(
                          child: Text(
                            "Log in with E-mail",
                            style: _txtStyle.copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
