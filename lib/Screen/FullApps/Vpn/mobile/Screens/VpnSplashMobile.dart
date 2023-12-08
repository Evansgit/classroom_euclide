import 'dart:async';

import 'package:flutter/material.dart';
import 'package:crypto_template/Library/Constant/SmartKitColor.dart';
import 'package:crypto_template/Screen/FullApps/Vpn/mobile/Screens/VpnIntroMobile.dart';

class VpnSplashMobile extends StatefulWidget {
  VpnSplashMobile({Key? key}) : super(key: key);

  @override
  _VpnSplashStateMobile createState() => _VpnSplashStateMobile();
}

class _VpnSplashStateMobile extends State<VpnSplashMobile> {
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
                  Image.asset(
                    'assets/images/logoApps.png',
                    color: Colors.white,
                    fit: BoxFit.cover,
                    width: 150,
                    height: 150,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Free VPN APPS",
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
        ],
      ),
    );
  }

  back() {
    return BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [vpn22, vpn33],
          stops: [0, 1]),
    );
  }

  startTime() async {
    var _duration = Duration(milliseconds: 1000);
    return Timer(_duration, navigationPage);
  }

  Future<void> navigationPage() async {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => VpnIntroMobile(),
      ),
    );
  }
}
