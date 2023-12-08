import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Slide.dart';

class OnBoarding8 extends StatefulWidget {
  @override
  _BoardingScreenState createState() => _BoardingScreenState();
}

class _BoardingScreenState extends State<OnBoarding8> {
  // creating all the widget before making our home screeen

  int _currentPage = 0;
  List<Slide> _slides = [];
  PageController _pageController = PageController();

  @override
  void initState() {
    _currentPage = 0;
    _slides = [
      Slide('assets/images/boarding1.png', "Get New Experience"),
      Slide('assets/images/boarding2.png', "Don't Foger Share App"),
      Slide('assets/images/boarding3.png',
          "Realtime News and Asistance"),
    ];
    _pageController = PageController(initialPage: _currentPage);
    super.initState();
  }

  // the list which contain the build slides
  List<Widget> _buildSlides() {
    return _slides.map(_buildSlide).toList();
  }

  // building single slide

  Widget _buildSlide(Slide slide) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            margin: EdgeInsets.all(32),
            child: Image.asset(slide.image, fit: BoxFit.contain),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 70),
          child: Text(
            slide.heading,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "Sofia",
              fontSize: 28,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        SizedBox(
          height: 230,
        )
      ],
    );
  }

  // handling the on page changed
  void _handlingOnPageChanged(int page) {
    setState(() => _currentPage = page);
  }

  // building page indicator
  Widget _buildPageIndicator() {
    Row row = Row(mainAxisAlignment: MainAxisAlignment.center, children: []);
    for (int i = 0; i < _slides.length; i++) {
      row.children.add(_buildPageIndicatorItem(i));
      if (i != _slides.length - 1)
        row.children.add(SizedBox(
          width: 12,
        ));
    }
    return row;
  }

  Widget _buildPageIndicatorItem(int index) {
    return Container(
      width: index == _currentPage ? 8 : 5,
      height: index == _currentPage ? 8 : 5,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: index == _currentPage
              ? Color.fromRGBO(136, 144, 178, 1)
              : Color.fromRGBO(206, 209, 223, 1)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          PageView(
            controller: _pageController,
            onPageChanged: _handlingOnPageChanged,
            physics: BouncingScrollPhysics(),
            children: _buildSlides(),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Column(
              children: <Widget>[
                _buildPageIndicator(),
                SizedBox(
                  height: 32,
                ),
                Container(
                  // see the page indicators

                  margin: EdgeInsets.symmetric(horizontal: 32),
                  child: SizedBox(
                      width: double.infinity,
                      child: Container(
                        height: 45.0,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Color.fromRGBO(11, 198, 200, 1),
                            Color.fromRGBO(68, 183, 183, 1)
                          ]),
                        ),
                        child: Center(
                          child: Text(
                            "Choose Login",
                            style: TextStyle(
                              letterSpacing: 4,
                              fontSize: 14,
                              fontFamily: "Sofia",
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                CupertinoButton(
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Sofia",
                        fontWeight: FontWeight.w700,
                        color: Colors.grey,
                      ),
                    ),
                    onPressed: () => {}),
                SizedBox(
                  height: 30,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
