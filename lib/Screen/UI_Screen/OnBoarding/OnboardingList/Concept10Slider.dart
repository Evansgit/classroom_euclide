import 'package:crypto_template/Screen/UI_Screen/Login_Screen/Login_Screen/LoginScreen19.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class OnBoarding10 extends StatefulWidget {
  @override
  _OnBoarding10State createState() => _OnBoarding10State();
}

class _OnBoarding10State extends State<OnBoarding10> {
  @override
  Widget build(BuildContext context) {
    final pages = [
      Container(
        color: Color(0xFF8CC6FB),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/images/onBoardingC1.png'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Best Digital Solution',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                      fontFamily: "Sofia",
                      fontSize: 27,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Sofia",
                        fontWeight: FontWeight.w300,
                        fontSize: 16.0),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  ButtonTheme(
                    height: 50,
                    minWidth: 150,
                    child: OutlinedButton(
                      child: Text(
                        'Skip',
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: "Sofia",
                            fontWeight: FontWeight.w600),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Container(
        color: Color(0xFF5F939A),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/images/onBoardingC2.png'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Achive Your Goal',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                      fontFamily: "Sofia",
                      fontSize: 27,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Sofia",
                        fontWeight: FontWeight.w300,
                        fontSize: 16.0),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  ButtonTheme(
                    height: 50,
                    minWidth: 150,
                    child: OutlinedButton(
                      child: Text(
                        'Skip',
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: "Sofia",
                            fontWeight: FontWeight.w600),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Container(
        color: Color(0xFFDA6386),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/images/onBoardingC3.png'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Increase Your Value',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                      fontFamily: "Sofia",
                      fontSize: 27,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Sofia",
                        fontWeight: FontWeight.w300,
                        fontSize: 16.0),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder: (_, __, ___) => new LoginScreen19()));
                    },
                    child: ButtonTheme(
                      height: 50,
                      minWidth: 150,
                      child: OutlinedButton(
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: "Sofia",
                              fontWeight: FontWeight.w600),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(PageRouteBuilder(
                              pageBuilder: (_, __, ___) =>
                                  new LoginScreen19()));
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ];
    return Scaffold(
      body: LiquidSwipe(
        pages: pages,
        positionSlideIcon: 0,
        slideIconWidget: Icon(
          Icons.arrow_back_ios,
          size: 30,
          color: Colors.white,
        ),
      ),
    );
  }
}
