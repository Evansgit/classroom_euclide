import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:crypto_template/Screen/FullApps/cloudStorage/utils/CSConstants.dart';
import 'package:crypto_template/Screen/FullApps/cloudStorage/utils/CSImages.dart';

import 'OnBoarding.dart';

class CSSplashScreen extends StatefulWidget {
  static String tag = '/CSSplashScreen';

  @override
  CSSplashScreenState createState() => CSSplashScreenState();
}

class CSSplashScreenState extends State<CSSplashScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    checkFirstSeen();
  }

  Future checkFirstSeen() async {
    await Future.delayed(Duration(seconds: 2));
    finish(context);
    OnBoardingCloud().launch(context);
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.network(CSFileSharingLogo, height: 150, width: 150).center(),
          Positioned(
            bottom: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(CSAppName, style: boldTextStyle(size: 25)),
              ],
            ).paddingBottom(16),
          )
        ],
      ),
    );
  }
}
