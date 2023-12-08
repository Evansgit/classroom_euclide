import 'package:crypto_template/Screen/UI_Screen/News_Apps/models/News/newsHeaderModel.dart';
import 'package:flutter/material.dart';

import 'OnboardingList/Concept10Slider.dart';
import 'OnboardingList/Concept11Slider/Concept11Slider.dart';
import 'OnboardingList/Concept12Slider.dart';
import 'OnboardingList/Concept13Slider.dart';
import 'OnboardingList/Concept14Slider.dart';
import 'OnboardingList/Concept15Slider.dart';
import 'OnboardingList/Concept16Slider.dart';
import 'OnboardingList/Concept17Slider.dart';
import 'OnboardingList/Concept18Slider.dart';
import 'OnboardingList/Concept1Slider/Concept1Slider.dart';
import 'OnboardingList/Concept19Slider.dart';
import 'OnboardingList/Concept27Slider.dart';
import 'OnboardingList/Concept2Slider.dart';
import 'OnboardingList/Concept3Slider.dart';
import 'OnboardingList/Concept4Slider.dart';
import 'OnboardingList/Concept50Slider.dart';
import 'OnboardingList/Concept5Slider.dart';
import 'OnboardingList/Concept6Slider.dart';
import 'OnboardingList/Concept7Slider/Concept7Slider.dart';
import 'OnboardingList/Concept8Slider/Concept8Slider.dart';
import 'OnboardingList/Concept9Slider/Concept9Slider.dart';
import 'OnboardingList/Onbording/Animated_Intro.dart';
import 'OnboardingList/Onbording/Intro_Slider.dart';
import 'OnboardingList/Onbording/Onbording1/OnboardingScreen1.dart';
import 'OnboardingList/Onbording/Onbording2/OnboardingScreen2.dart';
import 'OnboardingList/Onbording/Onbording3/OnboardingScreen3.dart';
import 'OnboardingList/Onbording/Parrallel_Scroll.dart';

class ListOnBoardingScreenCard extends StatefulWidget {
  ListOnBoardingScreenCard({Key? key}) : super(key: key);

  @override
  _ListOnBoardingScreenCardState createState() =>
      _ListOnBoardingScreenCardState();
}

class _ListOnBoardingScreenCardState extends State<ListOnBoardingScreenCard> {
  @override
  newsHeader? item;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text(
          "OnBoarding List Screen",
          style: TextStyle(
              fontFamily: "Sofia",
              fontWeight: FontWeight.w700,
              color: Colors.black),
        ),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => Concept1Slider()));
                },
                child: card("OnBoarding 1 Screen", Color(0xFF87A7B3))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => onBoarding2()));
                },
                child: card("OnBoarding 2 Screen", Color(0xFF87A7B3))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => OnBoarding3()));
                },
                child: card("OnBoarding 3 Screen", Color(0xFF87A7B3))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => OnBoarding4()));
                },
                child: card("OnBoarding 4 Screen", Color(0xFF87A7B3))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => OnBoarding5()));
                },
                child: card("OnBoarding 5 Screen", Color(0xFF87A7B3))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => OnBoarding6()));
                },
                child: card("OnBoarding 6 Screen", Color(0xFF87A7B3))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => OnBoarding7()));
                },
                child: card("OnBoarding 7 Screen", Color(0xFF87A7B3))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => OnBoarding8()));
                },
                child: card("OnBoarding 8 Screen", Color(0xFF87A7B3))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => OnBoarding9()));
                },
                child: card("OnBoarding 9 Screen", Color(0xFF87A7B3))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => OnBoarding10()));
                },
                child: card("OnBoarding 10 Screen", Color(0xFF87A7B3))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => OnBoarding11()));
                },
                child: card("OnBoarding 11 Screen", Color(0xFF87A7B3))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => OnBoarding12()));
                },
                child: card("OnBoarding 12 Screen", Color(0xFF87A7B3))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => Onboarding13()));
                },
                child: card("OnBoarding 13 Screen", Color(0xFF87A7B3))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => Onboarding14()));
                },
                child: card("OnBoarding 14 Screen", Color(0xFF87A7B3))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => Onboarding15()));
                },
                child: card("OnBoarding 15 Screen", Color(0xFF87A7B3))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => Onboarding16()));
                },
                child: card("OnBoarding 16 Screen", Color(0xFF87A7B3))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => Onboarding17()));
                },
                child: card("OnBoarding 17 Screen", Color(0xFF87A7B3))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => Onboarding18()));
                },
                child: card("OnBoarding 18 Screen", Color(0xFF87A7B3))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => Onboarding19()));
                },
                child: card("OnBoarding 19 Screen", Color(0xFF87A7B3))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => WrOnboardingScreen1()));
                },
                child: card("OnBoarding 20 Screen", Color(0xFF87A7B3))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => WrOnboardingScreen2()));
                },
                child: card("OnBoarding 21 Screen", Color(0xFF87A7B3))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => Walkthrough()));
                },
                child: card("OnBoarding 22 Screen", Color(0xFF87A7B3))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => Intro_Slider()));
                },
                child: card("OnBoarding 23 Screen", Color(0xFF87A7B3))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => Animated_Intro()));
                },
                child: card("OnBoarding 24 Screen", Color(0xFF87A7B3))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      PageRouteBuilder(pageBuilder: (_, __, ___) => peralax()));
                },
                child: card("OnBoarding 25 Screen", Color(0xFF87A7B3))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => OnBoarding27()));
                },
                child: card("OnBoarding 26 Screen", Color(0xFF87A7B3))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => OnBoarding50()));
                },
                child: card("OnBoarding 27 Screen", Color(0xFF87A7B3))),
          ],
        ),
      ),
    );
  }

  Widget card(String title, Color _colors) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
                color: _colors,
                borderRadius: BorderRadius.all(Radius.circular(5.0))),
            child: Center(
              child: Image.asset(
                "assets/images/logo.png",
                height: 45.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Stack(
              children: [
                Container(
                  height: 90.0,
                  width: MediaQuery.of(context).size.width - 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12.withOpacity(0.03),
                            blurRadius: 10.0,
                            spreadRadius: 5.0)
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 32.0, left: 19.0),
                    child: Text(
                      title,
                      style: TextStyle(
                          fontFamily: "Sofia",
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width - 145, top: 30.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: CircleAvatar(
                      child: Center(
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 14.0,
                        ),
                      ),
                      backgroundColor: _colors,
                      radius: 14.0,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
