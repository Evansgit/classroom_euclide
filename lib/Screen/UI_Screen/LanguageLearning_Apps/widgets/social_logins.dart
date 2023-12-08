import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

class SocialLogins extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: InkWell(
            child: Container(
              height: 36.0,
              padding: EdgeInsets.symmetric(horizontal: 13.0),
              decoration: BoxDecoration(
                color: Color.fromRGBO(2, 171, 238, 1),
                borderRadius: BorderRadius.circular(25.0),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(169, 176, 185, 0.42),
                    spreadRadius: 0,
                    blurRadius: 8,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.mediation_rounded,
                    color: Colors.white,
                    size: 16.0,
                  ),
                  Text(
                    " Twitter",
                    style: TextStyle(
                      fontSize: 12.0,
                      fontFamily: "Sofia",
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          width: 3.0,
        ),
        Expanded(
          child: InkWell(
            child: Container(
              margin: EdgeInsets.only(right: 5.0),
              height: 36.0,
              padding: EdgeInsets.symmetric(horizontal: 13.0),
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.circular(25.0),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(169, 176, 185, 0.42),
                    spreadRadius: 0,
                    blurRadius: 8,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "lib/Screen/UI_Screen/LanguageLearning_Apps/assets/svg/google.svg",
                    width: 15.0,
                  ),
                  Text(
                    " Gmail",
                    style: TextStyle(
                      color: Color.fromRGBO(35, 38, 43, 1),
                      fontSize: 12.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            child: Container(
              margin: EdgeInsets.only(right: 5.0),
              height: 36.0,
              padding: EdgeInsets.symmetric(horizontal: 13.0),
              decoration: BoxDecoration(
                color: Color.fromRGBO(59, 89, 153, 1),
                borderRadius: BorderRadius.circular(25.0),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(169, 176, 185, 0.42),
                    spreadRadius: 0,
                    blurRadius: 8,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.face,
                    color: Colors.white,
                    size: 15.0,
                  ),
                  SizedBox(
                    width: 4.0,
                  ),
                  Text(
                    "Facebook",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Sofia",
                      fontSize: 12.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
