import 'package:flutter/material.dart';

class OnBoarding6 extends StatefulWidget {
  OnBoarding6({Key? key}) : super(key: key);

  @override
  _OnBoarding6State createState() => _OnBoarding6State();
}

class _OnBoarding6State extends State<OnBoarding6> {
  // content state
  int contentState = 0;

  // List of title
  List<String> titles = [
    'Let us take care of you',
    'Always use a mask',
    'Work from home',
  ];

  // List of descriptions
  List<String> descriptions = [
    'We are here to take care of you \nwith pleasure. besides that we will \nmonitor your condition 24/Day',
    'always use a mask when you want\nto travel and keep your\nbody immunity',
    'to avoid the spread of covid 19. \nyou can do office work from home and\nalways be close to your family',
  ];

  // List of images path
  List<String> images = [
    'assets/images/onBoardingC1.png',
    'assets/images/onBoardingC2.png',
    'assets/images/onBoardingC3.png',
  ];

  // Get Title
  String getTitle(int contentState) {
    if (contentState == 0) {
      return titles[0];
    } else if (contentState == 1) {
      return titles[1];
    } else {
      return titles[2];
    }
  }

  // Get Description
  String getDescription(int contentState) {
    if (contentState == 0) {
      return descriptions[0];
    } else if (contentState == 1) {
      return descriptions[1];
    } else {
      return descriptions[2];
    }
  }

  // Get Images
  String getImage(int contentState) {
    if (contentState == 0) {
      return images[0];
    } else if (contentState == 1) {
      return images[1];
    } else {
      return images[2];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD16ACF).withOpacity(0.9),
      body: SafeArea(
        child: Stack(
          children: [
            // Image Illustration
            Container(
              margin: const EdgeInsets.only(top: 0.0),
              child: Image(
                height: 640.0,
                image: AssetImage(getImage(contentState)),
              ),
            ),
            // Top Components
            Container(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  contentState != 0
                      ? GestureDetector(
                          onTap: () {
                            setState(() {
                              contentState--;
                              print(contentState);
                            });
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            size: 18.0,
                          ),
                        )
                      : SizedBox(),
                  contentState != 2
                      ? Text(
                          'Skip',
                          style: TextStyle(
                            fontFamily: "Sofia",
                            color: Colors.white,
                            fontSize: 19.0,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      : SizedBox(),
                ],
              ),
            ),
            // Content
            Align(
              alignment: FractionalOffset.bottomCenter,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Title
                      Text(
                        getTitle(contentState),
                        style: TextStyle(
                          fontFamily: "Sofia",
                          color: Colors.black,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      // Description
                      Text(
                        getDescription(contentState),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "Sofia",
                          color: Colors.black45,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      // Bottom Components
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Indicator
                          Row(
                            children: [
                              // 0
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30.0),
                                child: Container(
                                  height: 4.0,
                                  width: contentState == 0 ? 18.0 : 12.0,
                                  color: contentState == 0
                                      ? Color(0xFFD16ACF)
                                      : Color(0xFFCBD6F3),
                                ),
                              ),
                              SizedBox(
                                width: 4.0,
                              ),
                              // 1
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30.0),
                                child: Container(
                                  height: 4.0,
                                  width: contentState == 1 ? 18.0 : 12.0,
                                  color: contentState == 1
                                      ? Color(0xFFD16ACF)
                                      : Color(0xFFCBD6F3),
                                ),
                              ),
                              SizedBox(
                                width: 4.0,
                              ),
                              // 2
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30.0),
                                child: Container(
                                  height: 4.0,
                                  width: contentState == 2 ? 18.0 : 12.0,
                                  color: contentState == 2
                                      ? Color(0xFFD16ACF)
                                      : Color(0xFFCBD6F3),
                                ),
                              ),
                            ],
                          ),
                          // Button Next
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (contentState <= 2) {
                                  contentState++;
                                }
                                print(contentState);
                              });
                            },
                            child: Container(
                                child: Icon(
                              Icons.arrow_forward,
                              color: Color(0xFFD16ACF),
                            )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
