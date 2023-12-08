import 'package:crypto_template/Library/intro_views_flutter-2.4.0/lib/Models/page_view_model.dart';
import 'package:crypto_template/Library/intro_views_flutter-2.4.0/lib/intro_views_flutter.dart';
import 'package:flutter/material.dart';

class Onboarding19 extends StatefulWidget {
  @override
  _Onboarding19State createState() => _Onboarding19State();
}

var _fontHeaderStyle = TextStyle(
    fontFamily: "Sofia",
    fontSize: 23.0,
    fontWeight: FontWeight.w800,
    color: Colors.black87,
    letterSpacing: 1.1);

var _fontDescriptionStyle = TextStyle(
    fontFamily: "Sofia",
    fontSize: 17.0,
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
        'Order Food',
        style: _fontHeaderStyle,
      ),
      body: Container(
        height: 250.0,
        child: Text('Order with friend and family is make better for time food',
            textAlign: TextAlign.center, style: _fontDescriptionStyle),
      ),
      mainImage: Image.asset(
        'lib/Screen/FullApps/SunriseMart/Assets/ilustrasion/talking.jpg',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      )),
  new PageViewModel(
      pageColor: Colors.white,
      iconColor: Colors.black,
      bubbleBackgroundColor: Colors.black,
      title: Text(
        'Fast safe Deliver',
        style: _fontHeaderStyle,
      ),
      body: Container(
        height: 250.0,
        child: Text(
            'Our staff delivery with love and make your order safety to deliver',
            textAlign: TextAlign.center,
            style: _fontDescriptionStyle),
      ),
      mainImage: Image.asset(
        'lib/Screen/FullApps/SunriseMart/Assets/ilustrasion/order.jpg',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      )),
  new PageViewModel(
      pageColor: Colors.white,
      iconColor: Colors.black,
      bubbleBackgroundColor: Colors.black,
      title: Text(
        'Catering Service',
        style: _fontHeaderStyle,
      ),
      body: Container(
        height: 250.0,
        child: Text('The best grocery are provide on many locations and shop',
            textAlign: TextAlign.center, style: _fontDescriptionStyle),
      ),
      mainImage: Image.asset(
        'lib/Screen/FullApps/SunriseMart/Assets/ilustrasion/cartIlustration.jpg',
        height: 255.0,
        width: 255.0,
        alignment: Alignment.center,
      )),
];

class _Onboarding19State extends State<Onboarding19> {
  @override
  Widget build(BuildContext context) {
    return IntroViewsFlutter(
      pages,
      pageButtonsColor: Colors.black45,
      skipText: Text(
        "SKIP",
        style: _fontDescriptionStyle.copyWith(
            color: Color(0xFF5FBD84),
            fontWeight: FontWeight.w800,
            letterSpacing: 1.0),
      ),
      doneText: Text(
        "DONE",
        style: _fontDescriptionStyle.copyWith(
            color: Color(0xFF5FBD84),
            fontWeight: FontWeight.w800,
            letterSpacing: 1.0),
      ),
      onTapDoneButton: () {},
    );
  }
}
