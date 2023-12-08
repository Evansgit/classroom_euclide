import 'package:crypto_template/Library/DrawerAnimation//constants/constants.dart';
import 'package:flutter/material.dart';

class FirstLayer extends StatelessWidget {
  final Gradient? gradient;

  FirstLayer({required this.gradient});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Constants.height,
      width: Constants.height,
      decoration:
          BoxDecoration(gradient: gradient ?? Constants.BACKGROUND_GRADIENT),
    );
  }
}
