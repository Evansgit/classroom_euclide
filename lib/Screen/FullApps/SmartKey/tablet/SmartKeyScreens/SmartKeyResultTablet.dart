import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
  
import 'package:crypto_template/Library/Constant/SmartKitColor.dart';
import 'package:crypto_template/Screen/FullApps/SmartKey/tablet/SmartKeyScreens/SmartKeyHomeTablet.dart';
import 'package:crypto_template/Screen/FullApps/SmartKey/tablet/SmartKeyScreens/SmartKeyHomeDataTablet.dart';
import 'package:crypto_template/Screen/FullApps/SmartKey/tablet/SmartKeyScreens/SmartKeyPlayTablet.dart';
import 'package:crypto_template/Screen/FullApps/SmartKey/Widget/SmartKeyBtn.dart';

import 'SmartKeyReviewAnswersTablet.dart';

class SmartKeyResultTablet extends StatefulWidget {
  SmartKeyResultTablet({Key? key}) : super(key: key);

  @override
  _SmartKeyResultTabletState createState() => _SmartKeyResultTabletState();
}

class _SmartKeyResultTabletState extends State<SmartKeyResultTablet> {
  Widget totalCoinsLayout() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              children: <Widget>[
                CachedNetworkImage(
                  imageUrl:
                      "https://smartkit.wrteam.in/smartkit/images/coins.png",
                  color: smartkey2,
                  width: 30,
                  height: 30,
                ),
                Text("150", style: TextStyle(fontWeight: FontWeight.bold)),
                Text(
                  "Total Coins",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                CachedNetworkImage(
                  imageUrl:
                      "https://smartkit.wrteam.in/smartkit/images/rank.png",
                  color: smartkey2,
                  width: 30,
                  height: 30,
                ),
                Text("200", style: TextStyle(fontWeight: FontWeight.bold)),
                Text(
                  "Total Score",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  resultLayout() {
    double per = (int.parse("6") / 10);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width * 0.8,
        child: Card(
          color: smartkey1,
          elevation: 5,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "completed",
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            CachedNetworkImage(
                              imageUrl:
                                  "https://smartkit.wrteam.in/smartkit/images/correct.png",
                              width: 30,
                              height: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "6",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            children: <Widget>[
                              CachedNetworkImage(
                                imageUrl:
                                    "https://smartkit.wrteam.in/smartkit/images/incorrect.png",
                                width: 30,
                                height: 30,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "4",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                        width: 100.0,
                        height: 100.0,
                          ),
                    Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            CachedNetworkImage(
                              imageUrl:
                                  "https://smartkit.wrteam.in/smartkit/images/coins.png",
                              color: smartkey2,
                              width: 30,
                              height: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "60",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            children: <Widget>[
                              CachedNetworkImage(
                                imageUrl:
                                    "https://smartkit.wrteam.in/smartkit/images/rank.png",
                                width: 30,
                                height: 30,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "70",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget bottomLayout() {
    return Column(
      children: <Widget>[
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: SmartKeyBtn(
            title: "Play Again",
            titlecolor: Colors.white,
            route: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => SmartKeyPlayTablet(),
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: SmartKeyBtn(
              title: "Review Answers",
              titlecolor: Colors.white,
              route: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SmartKeyReviewAnswereTablet(),
                  ),
                );
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: SmartKeyBtn(
              title: "Share Your Score",
              titlecolor: Colors.white,
              route: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SmartKeyHomeTablet(),
                    ),
                    (Route<dynamic> route) => false);
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: SmartKeyBtn(
              title: "Home",
              titlecolor: Colors.white,
              route: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SmartKeyHomeTablet(),
                    ),
                    (Route<dynamic> route) => false);
              },
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => SmartKeyHomeDateTablet(),
            ),
            (Route<dynamic> route) => false).then((value) => value as bool);
      },
      child: Scaffold(
        appBar: AppBar(
          // backgroundColor: smartkey3,
          backgroundColor: Colors.transparent,
          flexibleSpace: Container(
            decoration: BoxDecoration(gradient: smartkeygradient),
          ),
          title: Text("Result"),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: <Widget>[
              totalCoinsLayout(),
              resultLayout(),
              bottomLayout()
            ],
          ),
        ),
      ),
    );
  }
}
