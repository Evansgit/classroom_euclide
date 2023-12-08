import 'package:crypto_template/Screen/UI_Screen/LanguageLearning_Apps/models/instructor_model.dart';
import 'package:flutter/material.dart';

class InstructorCard extends StatelessWidget {
  final InstructorModel? instructor;
  InstructorCard({this.instructor});
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: 140,
          width: 140,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                  this.instructor!.image!,
                ),
                fit: BoxFit.cover),
          ),
        ),
        Container(
          padding: EdgeInsets.all(8.0),
          width: 140,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                this.instructor!.name!,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                this.instructor!.occupation!,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
