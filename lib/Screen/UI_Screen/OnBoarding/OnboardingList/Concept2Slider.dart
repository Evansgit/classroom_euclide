import 'package:flutter/material.dart';

import '../../../../Library/intro_views_flutter-2.4.0/lib/Models/page_view_model.dart';
import '../../../../Library/intro_views_flutter-2.4.0/lib/intro_views_flutter.dart';

class onBoarding2 extends StatefulWidget {
  @override
  _onBoarding2State createState() => _onBoarding2State();
}

var _fontHeaderStyle = TextStyle(
    fontFamily: "Popins",
    fontSize: 21.0,
    fontWeight: FontWeight.w800,
    color: Color(0xFFFAA420),
    letterSpacing: 1.5);

var _fontDescriptionStyle = TextStyle(
    fontFamily: "Sans",
    fontSize: 15.0,
    color: Colors.white,
    fontWeight: FontWeight.w400);

///
/// Page View Model for on boarding
///
final pages = [
  new PageViewModel(
      pageColor: Color(0xFF0B0F1C),
      iconColor: Colors.black,
      bubbleBackgroundColor: Colors.black,
      title: Text(
        'Explore many products',
        style: _fontHeaderStyle,
      ),
      body: Text('Lorem Ipsum \ndolor sit amet, consectetur adipiscing elit.',
          textAlign: TextAlign.center, style: _fontDescriptionStyle),
      mainImage: Image.asset(
        'lib/Screen/FullApps/Coinluv/image/onboarding1.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      )),
  new PageViewModel(
      pageColor: Color(0xFF0B0F1C),
      iconColor: Colors.black,
      bubbleBackgroundColor: Colors.black,
      title: Text(
        'Choose and checkout',
        style: _fontHeaderStyle,
      ),
      body: Text('Lorem Ipsum \ndolor sit amet, consectetur adipiscing elit.',
          textAlign: TextAlign.center, style: _fontDescriptionStyle),
      mainImage: Image.asset(
        'lib/Screen/FullApps/Coinluv/image/onboarding2.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      )),
  new PageViewModel(
      pageColor: Color(0xFF0B0F1C),
      iconColor: Colors.black,
      bubbleBackgroundColor: Colors.black,
      title: Text(
        'Get it delivered',
        style: _fontHeaderStyle,
      ),
      body: Text('Lorem Ipsum \ndolor sit amet, consectetur adipiscing elit.',
          textAlign: TextAlign.center, style: _fontDescriptionStyle),
      mainImage: Image.asset(
        'lib/Screen/FullApps/Coinluv/image/onboarding3.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      )),
];

class _onBoarding2State extends State<onBoarding2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: IntroViewsFlutter(
        pages,
        pageButtonsColor: Color(0xFFFAA420),
        skipText: Text(
          "SKIP",
          style: _fontDescriptionStyle.copyWith(
              color: Color(0xFFFAA420),
              fontWeight: FontWeight.w800,
              letterSpacing: 1.0),
        ),
        doneText: Text(
          "DONE",
          style: _fontDescriptionStyle.copyWith(
              color: Color(0xFFFAA420),
              fontWeight: FontWeight.w800,
              letterSpacing: 1.0),
        ),
        onTapDoneButton: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
