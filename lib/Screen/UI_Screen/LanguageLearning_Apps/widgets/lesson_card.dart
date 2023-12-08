import 'package:crypto_template/Screen/UI_Screen/LanguageLearning_Apps/models/lesson_model.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class LessonCard extends StatelessWidget {
  final LessonModel? lesson;
  LessonCard({this.lesson});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.only(bottom: 10.0),
        padding: EdgeInsets.all(6.0),
        width: double.infinity,
        height: 65,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
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
          children: [
            Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                color: Color(0xFF94D0CC),
              ),
              child: Image.asset(
                "assets/images/logo.png",
                height: 9.0,
                width: 9.0,
              ),
            ),
            SizedBox(
              width: 25.0,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    this.lesson!.title!,
                    style: TextStyle(
                      fontFamily: "Sofia",
                      color: Constants.primaryTextColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 14.0,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    this.lesson!.duration!,
                    style: TextStyle(
                      fontFamily: "Sofia",
                      fontSize: 14.0,
                      color: Constants.captionTextColor,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.play_circle,
              color: Color(0xFF94D0CC),
            ),
            SizedBox(
              width: 15.0,
            )
          ],
        ),
      ),
    );
  }
}
