import 'package:crypto_template/Screen/UI_Screen/Plane_Apps/Model/dummy.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'CreateAccount.dart';

class StartScreen extends StatefulWidget {
  StartScreen({Key? key}) : super(key: key);

  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  List<Wizard> wizardData = Dummy.getWizard();
  PageController pageController = PageController(
    initialPage: 0,
  );
  int page = 0;
  bool isLast = false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(0xFFECF2F9),
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Center(
                        child: PageView(
                          onPageChanged: onPageViewChange,
                          controller: pageController,
                          children: buildPageViewItem(),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Center(
                    child: Container(
                      height: 60,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: buildDots(context),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(PageRouteBuilder(
                        pageBuilder: (_, __, ___) => new Signup()));
                  },
                  child: Stack(
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 200.0,
                            width: 200.0,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(500.0)),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.lightBlue.withOpacity(0.1),
                                      blurRadius: 20.0,
                                      spreadRadius: 5.0)
                                ]),
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 50.0),
                          child: Stack(
                            children: [
                              Lottie.asset(
                                "lib/Screen/UI_Screen/Plane_Apps/Assets/button.json",
                                height: 120.0,
                                width: 120.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 95.0),
                          child: Icon(
                            Icons.power_settings_new,
                            color: Colors.white,
                            size: 30.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }

  void onPageViewChange(int _page) {
    page = _page;
    isLast = _page == wizardData.length - 1;
    setState(() {});
  }

  List<Widget> buildPageViewItem() {
    List<Widget> widgets = [];
    for (Wizard wz in wizardData) {
      Widget wg = Container(
        alignment: Alignment.topCenter,
        width: double.infinity,
        height: 900.0,
        child: Wrap(
          children: <Widget>[
            Container(
                width: double.infinity,
                child: Stack(
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 80, bottom: 0.0),
                          child: isLast
                              ? Stack(
                                  children: [
                                    Lottie.asset(wz.image,
                                        height: 300.0, width: 500.0),
                                    Center(
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 45.0, left: 15.0),
                                        child: Image.asset(
                                          "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/onBoarding3.png",
                                          height: 180,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              : Lottie.asset(wz.image,
                                  height: 300.0, width: 500.0),
                        ),
                        Text(
                          wz.title,
                          style: TextStyle(
                              fontFamily: "Sofia",
                              fontSize: 17.5,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF2F80ED)),
                        ),
                      ],
                    )
                  ],
                ))
          ],
        ),
      );
      widgets.add(wg);
    }
    return widgets;
  }

  Widget buildDots(BuildContext context) {
    Widget widget;

    List<Widget> dots = [];
    for (int i = 0; i < wizardData.length; i++) {
      Widget w = Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        height: 8,
        width: 8,
        child: CircleAvatar(
          backgroundColor: page == i ? Color(0xFF2F80ED) : Colors.black54,
        ),
      );
      dots.add(w);
    }
    widget = Row(
      mainAxisSize: MainAxisSize.min,
      children: dots,
    );
    return widget;
  }
}

class Wizard {
  late String image;
  String? background;
  late String title;
  String? brief;
  Color? color;
}
