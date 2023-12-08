import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class SplashScreen35 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new SplashScreenStateMobile();
  }
}

class SplashScreenStateMobile extends State<SplashScreen35> {
  @override
  void initState() {
    super.initState();
    callNextPage();
  }

  callNextPage() {
    Timer(Duration(seconds: 3), () async {});
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.center,
            colors: [Colors.blueAccent, Colors.lightBlue],
          ),
        ),
        child: Center(
          child: CachedNetworkImage(
            imageUrl: 'https://smartkit.wrteam.in/smartkit/newsapp/logo.png',
            width: MediaQuery.of(context).size.width / 2,
          ),
        ),
      ),
    );
  }
}
