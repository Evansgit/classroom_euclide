import 'package:flutter/material.dart';

import '../../../../Library/intro_views_flutter-2.4.0/lib/Models/page_view_model.dart';
import '../../../../Library/intro_views_flutter-2.4.0/lib/intro_views_flutter.dart';

class OnBoarding3 extends StatefulWidget {
  @override
  _OnBoarding3State createState() => _OnBoarding3State();
}

var _fontHeaderStyle = TextStyle(
    fontFamily: "Popins",
    fontSize: 21.0,
    fontWeight: FontWeight.w800,
    color: Colors.black87,
    letterSpacing: 1.5);

var _fontDescriptionStyle = TextStyle(
    fontFamily: "Sofia",
    fontSize: 15.0,
    color: Colors.black26,
    fontWeight: FontWeight.w400);

///
/// Page View Model for on boarding
///
final pages = [
  new PageViewModel(
      pageColor: Colors.white,
      iconColor: Colors.black,
      bubbleBackgroundColor: Colors.black,
      title: Text(
        'Create your profile',
        style: _fontHeaderStyle,
      ),
      body: Container(
        height: 250.0,
        child: Text(
            'Connect with your friend and family around you\nadd follow and share your story\n new social media app ',
            textAlign: TextAlign.center,
            style: _fontDescriptionStyle),
      ),
      mainImage: Image.asset(
        'assets/images/onBoardingC1.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      )),
  new PageViewModel(
      pageColor: Colors.white,
      iconColor: Colors.black,
      bubbleBackgroundColor: Colors.black,
      title: Text(
        'Upload photos & videos',
        style: _fontHeaderStyle,
      ),
      body: Container(
        height: 250.0,
        child: Text(
            'Lorem Ipsum is simply dummy text of the lorem\nprinting and typesetting industry. amet \n lorem ipsum sir amet ',
            textAlign: TextAlign.center,
            style: _fontDescriptionStyle),
      ),
      mainImage: Image.asset(
        'assets/images/onBoardingC2.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      )),
  new PageViewModel(
      pageColor: Colors.white,
      iconColor: Colors.black,
      bubbleBackgroundColor: Colors.black,
      title: Text(
        'Connect with friend',
        style: _fontHeaderStyle,
      ),
      body: Container(
        height: 250.0,
        child: Text(
            'Connect with your friend and family around you\nadd follow and share your story\n new social media app ',
            textAlign: TextAlign.center,
            style: _fontDescriptionStyle),
      ),
      mainImage: Image.asset(
        'assets/images/onBoardingC3.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      )),
];

class _OnBoarding3State extends State<OnBoarding3> {
  @override
  Widget build(BuildContext context) {
    return IntroViewsFlutter(
      pages,
      pageButtonsColor: Colors.black45,
      skipText: Text(
        "SKIP",
        style: _fontDescriptionStyle.copyWith(
            color: Color(0xFFFFB7CF),
            fontWeight: FontWeight.w800,
            letterSpacing: 1.0),
      ),
      doneText: Text(
        "DONE",
        style: _fontDescriptionStyle.copyWith(
            color: Color(0xFFFFB7CF),
            fontWeight: FontWeight.w800,
            letterSpacing: 1.0),
      ),
      onTapDoneButton: () async {
        Navigator.of(context).pop();
      },
    );
  }
}
