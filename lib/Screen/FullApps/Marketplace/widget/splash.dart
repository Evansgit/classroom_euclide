import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: CircularProgressIndicator(
            backgroundColor: Colors.red,
          ),
        ),
      );
}
