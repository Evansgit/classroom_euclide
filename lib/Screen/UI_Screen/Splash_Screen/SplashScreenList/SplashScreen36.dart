import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class SplashScreen36 extends StatefulWidget {
  SplashScreen36({Key? key}) : super(key: key);

  @override
  _SplashScreen36State createState() => _SplashScreen36State();
}

class _SplashScreen36State extends State<SplashScreen36> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: back(),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    'https://images2.imgbox.com/eb/38/Lj9XMPYT_o.png',
                    width: 150.0,
                    fit: BoxFit.fill,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Biggest Kit",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'open sans',
                        fontWeight: FontWeight.w700,
                        fontSize: 28),
                  )
                ],
              ),
            ),
          ),
          CachedNetworkImage(
            imageUrl: 'https://smartkit.wrteam.in/smartkit/images/doodle.png',
            fit: BoxFit.fill,
            width: double.infinity,
            height: double.infinity,
          ),
        ],
      ),
    );
  }

  back() {
    return BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.blueAccent.withOpacity(0.5),
            Colors.lightBlue.withOpacity(0.6)
          ],
          stops: [
            0,
            1
          ]),
    );
  }

  startTime() async {
    var _duration = Duration(milliseconds: 1000);
    return Timer(_duration, navigationPage);
  }

  Future<void> navigationPage() async {}
}
