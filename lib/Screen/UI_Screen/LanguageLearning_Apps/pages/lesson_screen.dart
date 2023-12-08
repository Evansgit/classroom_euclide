import 'package:crypto_template/Screen/UI_Screen/LanguageLearning_Apps/models/lesson_model.dart';
import 'package:crypto_template/Screen/UI_Screen/LanguageLearning_Apps/widgets/lesson_card.dart';
import 'package:crypto_template/Screen/UI_Screen/LanguageLearning_Apps/widgets/user_menu_bar.dart';
import 'package:flutter/material.dart';


import '../constants.dart';

class LessonScreen extends StatefulWidget {
  @override
  _LessonScreenState createState() => _LessonScreenState();
}

class _LessonScreenState extends State<LessonScreen> {
  List<LessonModel> lessons = [
    LessonModel(
      imagePath: " assets/images/logo.png",
      title: "Lesson 1",
      duration: "30 minutes 30 seconds",
    ),
    LessonModel(
      imagePath: " assets/images/logo.png",
      title: "Lesson 2",
      duration: "30 minutes 30 seconds",
    ),
    LessonModel(
      imagePath: " assets/images/logo.png",
      title: "Lesson 3",
      duration: "30 minutes 30 seconds",
    ),
    LessonModel(
      imagePath: " assets/images/logo.png",
      title: "Lesson 4",
      duration: "30 minutes 30 seconds",
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedIconTheme: IconThemeData(
          color: Color.fromRGBO(202, 205, 219, 1),
        ),
        selectedIconTheme: IconThemeData(
          color: Color(0xFF94D0CC),
        ),
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Language",
            icon: Icon(
              Icons.language,
            ),
          ),
          BottomNavigationBarItem(
            label: "Notification",
            icon: Icon(
              Icons.notification_add,
            ),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(
              Icons.person,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 30.0,
                ),
                UserMenuBar(),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  height: 180,
                  width: 339.24,
                  decoration: BoxDecoration(
                    color: Color(0xFF94D0CC),
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF94D0CC),
                        spreadRadius: 0,
                        blurRadius: 6,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 30.0,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                      ),
                                      child: Center(
                                        child: Text(
                                          "15",
                                          style: TextStyle(
                                            fontFamily: "Sofia",
                                            color: Constants.primaryTextColor,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Text(
                                      "Points",
                                      style: TextStyle(
                                        fontFamily: "Sofia",
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 17.0,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Text(
                                "English Conversation",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Sofia",
                                  fontWeight: FontWeight.w800,
                                  fontSize: 24.0,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 2.0),
                                child: Text(
                                  "Learn More",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontFamily: "Sofia",
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                  "lib/Screen/UI_Screen/LanguageLearning_Apps/assets/images/us.jpg",
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Modul Step",
                      style: TextStyle(
                        fontFamily: "Sofia",
                        fontSize: 20.0,
                        color: Constants.primaryTextColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "View all",
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Constants.captionTextColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12.0,
                ),
                Flexible(
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return LessonCard(lesson: lessons[index]);
                    },
                    itemCount: lessons.length,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
