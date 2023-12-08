import 'package:crypto_template/Screen/FullApps/Coinluv/UI/Login_SignUp/login.dart';
import 'package:flutter/material.dart';

import '../../../../Library/intro_views_flutter-2.4.0/lib/Models/page_view_model.dart';
import '../../../../Library/intro_views_flutter-2.4.0/lib/intro_views_flutter.dart';

class Onboarding17 extends StatefulWidget {
  @override
  _Onboarding17State createState() => _Onboarding17State();
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
        'Heading',
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
        'Heading',
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
        'Heading',
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

class _Onboarding17State extends State<Onboarding17> {
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
          Navigator.of(context).pushReplacement(PageRouteBuilder(
            pageBuilder: (_, __, ___) => new login(),
            transitionsBuilder:
                (_, Animation<double> animation, __, Widget widget) {
              return Opacity(
                opacity: animation.value,
                child: widget,
              );
            },
            transitionDuration: Duration(milliseconds: 1500),
          ));
        },
      ),
    );
  }
}
