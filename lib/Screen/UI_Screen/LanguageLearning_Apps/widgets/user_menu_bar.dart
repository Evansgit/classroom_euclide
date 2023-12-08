import 'package:flutter/material.dart';


class UserMenuBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage:
              AssetImage("lib/Screen/FullApps/SunriseMart/Assets/profile.jpg"),
          radius: 29.0,
          backgroundColor: Colors.transparent,
        ),
        SizedBox(
          width: 25.0,
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "Hello Litasik ",
                style: TextStyle(
                  fontFamily: "Sofia",
                  fontSize: 26.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
