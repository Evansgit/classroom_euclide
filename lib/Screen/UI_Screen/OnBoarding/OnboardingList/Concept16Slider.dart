import 'package:flutter/material.dart';

import '../../../../Library/intro_views_flutter-2.4.0/lib/Models/page_view_model.dart';
import '../../../../Library/intro_views_flutter-2.4.0/lib/intro_views_flutter.dart';

class Onboarding16 extends StatefulWidget {
  @override
  _Onboarding16State createState() => _Onboarding16State();
}

var _fontHeaderStyle = TextStyle(
    fontFamily: "Popins",
    fontSize: 21.0,
    fontWeight: FontWeight.w800,
    color: Colors.black87,
    letterSpacing: 1.5);

var _fontDescriptionStyle = TextStyle(
    fontFamily: "Sans",
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
        'Coinbase',
        style: _fontHeaderStyle,
      ),
      body: Container(
        height: 250.0,
        child: Text(
            'Lorem Ipsum is simply dummy text of the \nprinting and typesetting industry. ',
            textAlign: TextAlign.center,
            style: _fontDescriptionStyle),
      ),
      mainImage: Image.asset(
        'lib/Screen/FullApps/Coinbase/Assets/onBoarding1.jpg',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      )),
  new PageViewModel(
      pageColor: Colors.white,
      iconColor: Colors.black,
      bubbleBackgroundColor: Colors.black,
      title: Text(
        'Coinbase',
        style: _fontHeaderStyle,
      ),
      body: Container(
        height: 250.0,
        child: Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
            textAlign: TextAlign.center,
            style: _fontDescriptionStyle),
      ),
      mainImage: Image.asset(
        'lib/Screen/FullApps/Coinbase/Assets/onBoarding2.jpg',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      )),
  new PageViewModel(
      pageColor: Colors.white,
      iconColor: Colors.black,
      bubbleBackgroundColor: Colors.black,
      title: Text(
        'Coinbase',
        style: _fontHeaderStyle,
      ),
      body: Container(
        height: 250.0,
        child: Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
            textAlign: TextAlign.center,
            style: _fontDescriptionStyle),
      ),
      mainImage: Image.asset(
        'lib/Screen/FullApps/Coinbase/Assets/onBoarding3.jpg',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      )),
];

class _Onboarding16State extends State<Onboarding16> {
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
      onTapDoneButton: () async {},
    );
  }
}
