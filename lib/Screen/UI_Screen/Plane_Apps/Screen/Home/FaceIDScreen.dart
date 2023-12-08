import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'CredentialList.dart';

class FaceIDScreen extends StatefulWidget {
  FaceIDScreen({Key? key}) : super(key: key);

  @override
  _FaceIDScreenState createState() => _FaceIDScreenState();
}

class _FaceIDScreenState extends State<FaceIDScreen> {
  @override

  /// Setting duration
  startTime() async {
    return new Timer(Duration(milliseconds: 3500), _Navigator);
  }

  void _Navigator() {
    Navigator.of(context).pushReplacement(PageRouteBuilder(
        pageBuilder: (_, __, ___) => new CredentialList(),
        transitionDuration: Duration(milliseconds: 2000),
        transitionsBuilder: (_, Animation<double> animation, __, Widget child) {
          return Opacity(
            opacity: animation.value,
            child: child,
          );
        }));
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECF2F9),
      body: Stack(
        children: [
          Center(
            child: Lottie.asset(
                "lib/Screen/UI_Screen/Plane_Apps/Assets/faceId.json",
                height: 100.0,
                width: 500.0),
          ),
        ],
      ),
    );
  }
}
