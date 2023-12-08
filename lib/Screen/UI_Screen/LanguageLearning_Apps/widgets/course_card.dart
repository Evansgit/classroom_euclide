import 'package:crypto_template/Screen/UI_Screen/LanguageLearning_Apps/models/course_model.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class CourseCard extends StatelessWidget {
  final CourseModel? course;
  CourseCard({this.course});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 145,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: this.course!.color,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Image.asset(course!.image!),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Container(
            height: 40.0,
            child: Text(
              this.course!.name!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontFamily: "Sofia",
                color: Constants.primaryTextColor,
                fontWeight: FontWeight.w600,
                fontSize: 14.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
