import 'package:carousel_slider/carousel_slider.dart';
import 'package:crypto_template/Screen/UI_Screen/LanguageLearning_Apps/widgets/border_text_field.dart';
import 'package:crypto_template/Screen/UI_Screen/LanguageLearning_Apps/widgets/course_card.dart';
import 'package:crypto_template/Screen/UI_Screen/LanguageLearning_Apps/widgets/instructor_card.dart';
import 'package:crypto_template/Screen/UI_Screen/LanguageLearning_Apps/widgets/user_menu_bar.dart';
import 'package:flutter/material.dart';


import '../constants.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
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
                BorderTextField(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  borderRadius: 50.0,
                  hintText: "Search...",
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0.0),
                  child: CarouselSlider(
                    options: CarouselOptions(
                      aspectRatio: 5 / 10,
                      autoPlay: true,
                      viewportFraction: 1.0,
                      height: 220.0,
                    ),
                    items: [0, 1, 2, 3, 4].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: _cardHeader(),
                          );
                        },
                      );
                    }).toList(),
                  ),
                ),
                SizedBox(height: 35.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recommended Courses",
                      style: TextStyle(
                        fontSize: 19.0,
                        fontFamily: "Sofia",
                        color: Constants.primaryTextColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "View all",
                      style: TextStyle(
                        fontSize: 15.0,
                        fontFamily: "Sofia",
                        color: Constants.captionTextColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Container(
                  height: 167,
                  child: ListView.separated(
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: 10.0,
                      );
                    },
                    scrollDirection: Axis.horizontal,
                    itemCount: Constants.courses.length,
                    itemBuilder: (BuildContext context, int index) {
                      return CourseCard(
                        course: Constants.courses[index],
                      );
                    },
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  "Instructors",
                  style: TextStyle(
                    fontSize: 19.0,
                    fontFamily: "Sofia",
                    color: Constants.primaryTextColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  height: 140,
                  child: ListView.separated(
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: 10.0,
                      );
                    },
                    scrollDirection: Axis.horizontal,
                    itemCount: Constants.instructors.length,
                    itemBuilder: (BuildContext context, int index) {
                      return InstructorCard(
                        instructor: Constants.instructors[index],
                      );
                    },
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

Widget _cardHeader() {
  return Stack(
    children: <Widget>[
      Container(
        height: 220.0,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF94D0CC), Color(0xFF94D0CC)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "20 Point",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontFamily: "Sans",
                        fontSize: 20.0),
                  ),
                  Icon(
                    Icons.language,
                    color: Colors.white,
                    size: 25.0,
                  )
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 170.0,
                    child: Text(
                      "Learng english verb",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Sans",
                          fontSize: 22.0),
                    ),
                  ),
                  Text(
                    "Level 1",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Sans",
                        fontSize: 20.0),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "30 Minute",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Sans",
                      fontSize: 15.0,
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        "Date",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontFamily: "Sans",
                        ),
                      ),
                      Text(
                        "2021",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Sans",
                            fontSize: 16.0),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      Align(
        alignment: Alignment.topRight,
        child: Container(
          height: 170.0,
          width: 170.0,
          decoration: BoxDecoration(
              color: Colors.white10.withOpacity(0.1),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(200.0),
                  topRight: Radius.circular(20.0))),
        ),
      ),
    ],
  );
}
