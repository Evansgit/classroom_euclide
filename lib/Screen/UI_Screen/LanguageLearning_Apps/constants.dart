import 'package:flutter/material.dart';

import 'models/course_model.dart';
import 'models/instructor_model.dart';
import 'models/topic_model.dart';

class Constants {
  static const Color primaryTextColor = Color.fromRGBO(38, 50, 98, 1);
  static const Color captionTextColor = Color.fromRGBO(157, 161, 180, 1);
  static const Color primaryColor = Color.fromRGBO(255, 99, 128, 1.0);

  static List<TopicModel> topics = [
    TopicModel(
      color: Constants.primaryColor,
      boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(255, 99, 128, 0.6),
          spreadRadius: 0,
          blurRadius: 6,
          offset: Offset(0, 2), // changes position of shadow
        ),
      ],
      topic: "interjections & colloquial",
      time: "30 min",
      points: "20",
      image:
          "lib/Screen/UI_Screen/LanguageLearning_Apps/assets/images/course-1.jpg",
    ),
    TopicModel(
      color: Color.fromRGBO(25, 118, 210, 1),
      boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(25, 118, 210, 0.6),
          spreadRadius: 0,
          blurRadius: 6,
          offset: Offset(0, 2), // changes position of shadow
        ),
      ],
      topic: "interjections & colloquial",
      time: "30 min",
      points: "30",
      image:
          "lib/Screen/UI_Screen/LanguageLearning_Apps/assets/images/course-2.jpg",
    )
  ];
  static List<String> courseLevels = [
    "Beginner",
    "Intermediate",
    "Advanced",
    "Professional"
  ];
  static List<CourseModel> courses = [
    CourseModel(
      name: "Learn English Language",
      color: Colors.white12,
      image: "lib/Screen/UI_Screen/LanguageLearning_Apps/assets/images/us.jpg",
    ),
    CourseModel(
      name: "Learn Chinese Language",
      color: Colors.white12,
      image:
          "lib/Screen/UI_Screen/LanguageLearning_Apps/assets/images/china.jpg",
    ),
    CourseModel(
      name: "Learn Arabic Language",
      color: Colors.white12,
      image:
          "lib/Screen/UI_Screen/LanguageLearning_Apps/assets/images/arab.jpg",
    ),
  ];
  static List<InstructorModel> instructors = [
    InstructorModel(
      name: "Alex Nourin",
      occupation: "Visual Designer",
      image:
          "https://images.pexels.com/photos/2804282/pexels-photo-2804282.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
    ),
    InstructorModel(
      name: "Richard Wixo",
      occupation: "Mobile Dev",
      image:
          "https://images.pexels.com/photos/1816013/pexels-photo-1816013.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
    ),
    InstructorModel(
      name: "Mahmud Poluo",
      occupation: "Wensite Dev",
      image:
          "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
    )
  ];
}
