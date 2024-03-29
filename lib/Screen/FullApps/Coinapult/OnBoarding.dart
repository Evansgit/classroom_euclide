import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'T5_bottomNavBar.dart';

class OnboardingScreenCoinapult extends StatefulWidget {
  @override
  _OnboardingScreenCoinapultState createState() =>
      _OnboardingScreenCoinapultState();
}

class _OnboardingScreenCoinapultState extends State<OnboardingScreenCoinapult> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 5.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.greenAccent : Colors.black38,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;

    var _textH1 = TextStyle(
        fontFamily: "Sofia",
        fontWeight: FontWeight.w600,
        fontSize: 23.0,
        color: Colors.black);

    var _textH2 = TextStyle(
        fontFamily: "Sofia",
        fontWeight: FontWeight.w200,
        fontSize: 16.0,
        color: Colors.black38);

    return Scaffold(
      backgroundColor: Colors.white,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                child: PageView(
                  physics: ClampingScrollPhysics(),
                  controller: _pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Image(
                          image: NetworkImage(
                              'https://images.pexels.com/photos/590022/pexels-photo-590022.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
                          height: 400.0,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          margin:
                              EdgeInsets.only(top: 0.0, bottom: _height / 3.8),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: FractionalOffset(0.0, 0.0),
                              end: FractionalOffset(0.0, 1.0),
                              // stops: [0.0, 1.0],
                              colors: <Color>[
                                Colors.white.withOpacity(0.1),
                                Colors.white.withOpacity(0.1),
                                Colors.white.withOpacity(0.01),
                                Colors.white,
                                Colors.white,
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: FractionalOffset.center,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 245.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Allied Wallet',
                                  style: _textH1,
                                ),
                                SizedBox(height: 35.0),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15.0, right: 15.0),
                                  child: Text(
                                    'Best apps for see and follow all stocks and more than 200++ around the world',
                                    textAlign: TextAlign.center,
                                    style: _textH2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: <Widget>[
                        Image(
                          image: NetworkImage(
                              'https://images.pexels.com/photos/265087/pexels-photo-265087.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
                          height: 400.0,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          margin:
                              EdgeInsets.only(top: 0.0, bottom: _height / 3.8),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: FractionalOffset(0.0, 0.0),
                              end: FractionalOffset(0.0, 1.0),
                              // stops: [0.0, 1.0],
                              colors: <Color>[
                                Colors.white.withOpacity(0.1),
                                Colors.white.withOpacity(0.1),
                                Colors.white.withOpacity(0.01),
                                Colors.white,
                                Colors.white,
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: FractionalOffset.center,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 245.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Allied Wallet',
                                  style: _textH1,
                                ),
                                SizedBox(height: 35.0),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15.0, right: 15.0),
                                  child: Text(
                                    'Best apps for see and follow all stocks and more than 200++ around the world',
                                    textAlign: TextAlign.center,
                                    style: _textH2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: <Widget>[
                        Image(
                          image: NetworkImage(
                              'https://images.pexels.com/photos/6801639/pexels-photo-6801639.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
                          height: 400.0,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          margin:
                              EdgeInsets.only(top: 0.0, bottom: _height / 3.8),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: FractionalOffset(0.0, 0.0),
                              end: FractionalOffset(0.0, 1.0),
                              // stops: [0.0, 1.0],
                              colors: <Color>[
                                Colors.white.withOpacity(0.1),
                                Colors.white.withOpacity(0.1),
                                Colors.white.withOpacity(0.01),
                                Colors.white,
                                Colors.white,
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: FractionalOffset.center,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 245.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Allied Wallet',
                                  style: _textH1,
                                ),
                                SizedBox(height: 35.0),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15.0, right: 15.0),
                                  child: Text(
                                    'Best apps for see and follow all stocks and more than 200++ around the world',
                                    textAlign: TextAlign.center,
                                    style: _textH2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Align(
                alignment: FractionalOffset.center,
                child: Padding(
                  padding: const EdgeInsets.only(top: 470.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _buildPageIndicator(),
                  ),
                ),
              ),
              _currentPage != _numPages - 1
                  ? Align(
                      alignment: FractionalOffset.bottomRight,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0.0, backgroundColor: Colors.transparent,
                          ),
                          onPressed: () {
                            _pageController.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.ease,
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 20.0),
                            child: Container(
                              height: 50.0,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: FractionalOffset(1.0, 0.0),
                                  end: FractionalOffset(0.0, 1.0),
                                  // stops: [0.0, 1.0],
                                  colors: <Color>[
                                    Colors.greenAccent,
                                    Colors.greenAccent
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(30.0),
                                color: Colors.greenAccent,
                              ),
                              child: Center(
                                  child: Text(
                                "Continue",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Sofia",
                                    letterSpacing: 1.5),
                              )),
                            ),
                          )),
                    )
                  : Text(''),
            ],
          ),
        ),
      ),
      bottomSheet: _currentPage == _numPages - 1
          ? InkWell(
              onTap: () {
                Navigator.of(context).pushReplacement(PageRouteBuilder(
                    pageBuilder: (_, __, ___) => new T5_bottomNavBar()));
              },
              child: Container(
                height: 60.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[Colors.greenAccent, Colors.greenAccent],
                  ),
                ),
                child: Center(
                  child: Text(
                    'Get started',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 19.0,
                      letterSpacing: 1.2,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
              ),
            )
          : Text(''),
    );
  }
}
