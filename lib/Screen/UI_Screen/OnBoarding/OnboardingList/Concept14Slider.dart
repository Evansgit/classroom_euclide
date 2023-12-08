import 'package:flutter/material.dart';

import '../../../../Library/intro_views_flutter-2.4.0/lib/Models/page_view_model.dart';
import '../../../../Library/intro_views_flutter-2.4.0/lib/intro_views_flutter.dart';

class Onboarding14 extends StatefulWidget {
  @override
  _Onboarding14State createState() => _Onboarding14State();
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
        'Lorem Ipsum',
        style: _fontHeaderStyle,
      ),
      body: Container(
        height: 250.0,
        child: Text(
            'Lorem ipsum sir amet color \nlauv yang terbaik emang lagunya maknyuss',
            textAlign: TextAlign.center,
            style: _fontDescriptionStyle),
      ),
      mainImage: Image.asset(
        'assets/images/boarding1.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      )),
  new PageViewModel(
      pageColor: Colors.white,
      iconColor: Colors.black,
      bubbleBackgroundColor: Colors.black,
      title: Text(
        'Choose Item',
        style: _fontHeaderStyle,
      ),
      body: Container(
        height: 250.0,
        child: Text(
            'Lorem ipsum sir amet color \nlauv yang terbaik emang lagunya maknyuss',
            textAlign: TextAlign.center,
            style: _fontDescriptionStyle),
      ),
      mainImage: Image.asset(
        'assets/images/boarding2.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      )),
  new PageViewModel(
      pageColor: Colors.white,
      iconColor: Colors.black,
      bubbleBackgroundColor: Colors.black,
      title: Text(
        'Lorem Item',
        style: _fontHeaderStyle,
      ),
      body: Container(
        height: 250.0,
        child: Text(
            'Lorem ipsum sir amet color \nlauv yang terbaik emang lagunya maknyuss',
            textAlign: TextAlign.center,
            style: _fontDescriptionStyle),
      ),
      mainImage: Image.asset(
        'assets/images/boarding3.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      )),
];

class _Onboarding14State extends State<Onboarding14> {
  @override
  Widget build(BuildContext context) {
    return IntroViewsFlutter(
      pages,
      pageButtonsColor: Colors.black45,
      skipText: Text(
        "SKIP",
        style: _fontDescriptionStyle.copyWith(
            color: Colors.deepPurpleAccent,
            fontWeight: FontWeight.w800,
            letterSpacing: 1.0),
      ),
      doneText: Text(
        "DONE",
        style: _fontDescriptionStyle.copyWith(
            color: Colors.deepPurpleAccent,
            fontWeight: FontWeight.w800,
            letterSpacing: 1.0),
      ),
      onTapDoneButton: () async {},
    );
  }
}
