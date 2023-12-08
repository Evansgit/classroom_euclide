import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../../Library/Animation/AppWidget.dart';

class SplashScreen30 extends StatefulWidget {
  static String tag = '/SplashScreen30';

  @override
  SplashScreen30State createState() => SplashScreen30State();
}

class SplashScreen30State extends State<SplashScreen30>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;
  final globalScaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    animation = CurvedAnimation(
      parent: animationController,
      curve: Curves.easeInQuad,
    );
    animationController.forward();
    startTime();
  }

  startTime() async {
    var _duration = Duration(seconds: 3);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    if (mounted) {
      finish(context);
    }
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        key: globalScaffoldKey,
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ScaleTransition(
                scale: animation,
                child: commonCacheImageWidget(
                  "https://images2.imgbox.com/eb/38/Lj9XMPYT_o.png",
                  120,
                  width: 120,
                ),
              ),
              10.height,
              Text("VPN App",
                  style: primaryTextStyle(
                      color: Colors.orange, size: 24, weight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}
