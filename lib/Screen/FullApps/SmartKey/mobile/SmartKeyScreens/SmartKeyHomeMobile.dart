import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:crypto_template/Library/Constant/SmartKitColor.dart';
import 'package:crypto_template/Screen/FullApps/SmartKey/mobile/SmartKeyScreens/SmartKeyHomeDataMobile.dart';
import 'package:crypto_template/Screen/FullApps/SmartKey/mobile/SmartKeyScreens/SmartKeyInstructionMobile.dart';
import 'package:crypto_template/Screen/FullApps/SmartKey/mobile/SmartKeyScreens/SmartKeyLeaderboardMobile.dart';
import 'package:crypto_template/Screen/FullApps/SmartKey/mobile/SmartKeyScreens/SmartKeyUserProfileMobile.dart';

import 'SmartKeyBookmarkListMobile.dart';
import 'SmartKeyCategoryMobile.dart';
import 'SmartKeyNotificationListMobile.dart';
import 'SmartKeyStatisticsMobile.dart';

class SmartKeyHomeMobile extends StatefulWidget {
  SmartKeyHomeMobile({Key? key}) : super(key: key);

  @override
  _SmartKeyHomeMobileState createState() => _SmartKeyHomeMobileState();
}

class _SmartKeyHomeMobileState extends State<SmartKeyHomeMobile> {
  int tabIndex = 0;
  List<Widget> body = [
    SmartKeyHomeDateMobile(),
    SmartKeyCategoryMobile(),
    SmartKeyLeaderboardMobile(),
    SmartKeyuserProfileMobile()
  ];

  /// Curved Bottom Navigation Bar
  Widget bottomNavigationBar() {
    return CurvedNavigationBar(
        backgroundColor: smartkey2,
        items: <Widget>[
          Icon(Icons.home, size: 30, color: smartkey2),
          Icon(Icons.play_arrow_rounded, size: 30, color: smartkey2),
          Icon(Icons.leaderboard, size: 30, color: smartkey2),
          Icon(Icons.account_circle_outlined, size: 30, color: smartkey2),
        ],
        index: 0,
        animationDuration: Duration(milliseconds: 500),
        animationCurve: Curves.decelerate,
        height: 50.0,
        onTap: (index) {
          setState(() {
            tabIndex = index;
          });
        });
  }

  Widget drawerLayer() {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [smartkey3, smartkey2],
            stops: [0.3, 0.8]),
      ),
      // color: smartkey2,
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // loading
                        //     ? Center(
                        //         child: Loading(
                        //           indicator: BallSpinFadeLoaderIndicator(),
                        //           color: primary,
                        //           size: 50.0,
                        //         ),
                        //       )
                        //     :
                        InkWell(
                          child: CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 45,
                              backgroundColor: smartkey2,
                              child: Image.asset(
                                "assets/images/logoApps.png",
                                // width: 130,
                                // height: 130,
                                fit: BoxFit.cover,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          onTap: () {
                            // Navigator.push(context, PageRouteBuilder(pageBuilder: (context, anim1, anim2) => (UserProfile())));
                          },
                        ),
                        Padding(padding: EdgeInsets.only(top: 10.0)),
                        Row(
                          children: [
                            // loading
                            //     ? Center(
                            //         child: Loading(
                            //           indicator: BallSpinFadeLoaderIndicator(),
                            //           color: smartkey2,
                            //           size: 50.0,
                            //         ),
                            //       )
                            //     :

                            Center(
                              child: Text(
                                "Jeff Developer",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )),
              Divider(
                color: smartkey2,
                thickness: 2,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    title: Text(
                      "Bookmark",
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          PageRouteBuilder(
                              pageBuilder: (context, anim1, anim2) =>
                                  (SmartKeyBookmarkListMobile())));
                    },
                  ),
                  // Padding(
                  //   padding: EdgeInsets.only(bottom: 6.0),
                  // ),
                  ListTile(
                    title: Text(
                      "Notifications",
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          PageRouteBuilder(
                              pageBuilder: (context, anim1, anim2) =>
                                  (SmartKeyNotificationListMobile())));
                    },
                  ),

                  // Padding(
                  //   padding: EdgeInsets.only(bottom: 8.0),
                  // ),
                  Divider(
                    color: smartkey2,
                    thickness: 2,
                  ),
                  // Padding(
                  //   padding: EdgeInsets.only(bottom: 8.0),
                  // ),
                  ListTile(
                    title: Text(
                      "Statistics",
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          PageRouteBuilder(
                              pageBuilder: (context, anim1, anim2) =>
                                  (SmartKeyStatisticsMobile())));
                    },
                  ),
                  // Padding(
                  //   padding: EdgeInsets.only(bottom: 8.0),
                  // ),
                  ListTile(
                    title: Text(
                      "LeaderBoard",
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     PageRouteBuilder(
                      //         pageBuilder: (context, anim1, anim2) =>
                      //             (Leaderboard())));
                    },
                  ),

                  ListTile(
                    title: Text(
                      "Instruction",
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      // Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SmartKeyinstructionMobile(),
                        ),
                      );
                    },
                  ),
                  // Padding(
                  //   padding: EdgeInsets.only(bottom: 8.0),
                  // ),
                  Divider(
                    color: smartkey2,
                    thickness: 2,
                  ),
                  // Padding(
                  //   padding: EdgeInsets.only(bottom: 8.0),
                  // ),
                  ListTile(
                    title: Text(
                      "Settings",
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      // showDialog(
                      //   context: context,
                      //   builder: (context) {
                      //     return ShowSettingDialog();
                      //   },
                      // );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          drawerLayer(),
          body[tabIndex],
        ],
      ),
      bottomNavigationBar: bottomNavigationBar(),
    );
  }
}
