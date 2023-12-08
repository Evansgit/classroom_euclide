import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

//import 'package:crypto_template/Screen/FullApps/FoodMaster/helper/DatabaseHelper.dart';

class SplashScreen33 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new SplashScreen33State();
  }
}

class SplashScreen33State extends State<SplashScreen33> {
  initState() {
    Timer(Duration(seconds: 3), () {});
    super.initState();
  }

  @override
  dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
          color: Colors.blueAccent,
          alignment: Alignment.center,
          child: CachedNetworkImage(
            imageUrl: "https://images2.imgbox.com/eb/38/Lj9XMPYT_o.png",
            color: Colors.white,
            width: MediaQuery.of(context).size.width / 2.5,
          )
          // ExplodeViewMain(imagePath: 'https://smartkit.wrteam.in/smartkit/foodmaster/splash_logo.png', imagePosFromLeft: MediaQuery.of(context).size.width / 2, imagePosFromTop: MediaQuery.of(context).size.height / 2),
          ),
    );
  }
}
