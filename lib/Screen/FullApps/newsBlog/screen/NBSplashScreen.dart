import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:crypto_template/Screen/FullApps/newsBlog/screen/NBWalkThroughScreen.dart';
import 'package:crypto_template/Screen/FullApps/newsBlog/utils/NBImages.dart';

class NBSplashScreen extends StatefulWidget {
  static String tag = '/NBSplashScreen';

  @override
  NBSplashScreenState createState() => NBSplashScreenState();
}

class NBSplashScreenState extends State<NBSplashScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    setStatusBarColor(
      white,
    );
    Timer(
      Duration(seconds: 3),
      () {
        finish(context);
        NBWalkThroughScreen().launch(context);
      },
    );
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(NBSplashImage),
      ),
    );
  }
}
