import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../utils/DAWidgets.dart';
import 'EAWalkThroughScreen.dart';

class EASplashScreen extends StatefulWidget {
  const EASplashScreen({Key? key}) : super(key: key);

  @override
  _EASplashScreenState createState() => _EASplashScreenState();
}

class _EASplashScreenState extends State<EASplashScreen> {
  @override
  void initState() {
    super.initState();
    //
    init();
  }

  Future<void> init() async {
    setStatusBarColor(transparentColor);
    await 3.seconds.delay;
    finish(context);
    EAWalkThroughScreen().launch(context);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.cardColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          commonCachedNetworkImage(
            "https://assets.iqonic.design/old-themeforest-images/prokit/images/eventApp/logo.png",
            height: 200,
            fit: BoxFit.cover,
            width: context.width(),
          ),
          20.height,
          Text('Event',
              style:primaryTextStyle()),
          20.height,
          Text('Event Discovery & Booking App UI Kit',
              style: primaryTextStyle()),
        ],
      ),
    );
  }
}
