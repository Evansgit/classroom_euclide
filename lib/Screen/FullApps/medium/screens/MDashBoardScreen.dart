import 'package:animated_drawer/views/animated_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../eventApp/utils/DAWidgets.dart';

import 'package:crypto_template/Screen/FullApps/medium/modal/MModel.dart';
import 'package:crypto_template/Screen/FullApps/medium/screens/MAudioArticlesScreen.dart';
import 'package:crypto_template/Screen/FullApps/medium/screens/MExploreTopicScreen.dart';
import 'package:crypto_template/Screen/FullApps/medium/screens/MSearchScreen.dart';
import 'package:crypto_template/Screen/FullApps/medium/utils/MColors.dart';
import 'package:crypto_template/Screen/FullApps/medium/utils/MDataProvider.dart';
import 'package:crypto_template/Screen/FullApps/medium/utils/MWidget.dart';

import '../../../../Library/Animation/AppWidget.dart';

class MDashBoardScreen extends StatefulWidget {
  static String tag = '/MDashBoardScreen';

  @override
  MDashBoardScreenState createState() => MDashBoardScreenState();
}

class MDashBoardScreenState extends State<MDashBoardScreen> {
  GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  List<MListModel> dailyReadPostList = getDailyReadList();
  List<MListModel> recentPostList = getRecentViewList();
  List<MListModel> archivedPostList = getArchivedList();
  List<MTopicModel> topicList = getTopicList();
  List<MListModel> savingPostList = getSavingPostList();

  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {}

  openDrawer() {
    scaffoldKey.currentState!.openDrawer();
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.black87,
        appBar: AppBar(
          backgroundColor: black,
          title: Text('Home', style: boldTextStyle(size: 18, color: white)),
          leading: IconButton(
              icon: Icon(Icons.menu, color: Colors.black),
              onPressed: () {
                openDrawer();
              }),
          actions: [
            IconButton(
              icon: Icon(Icons.notifications_none, color: white),
              onPressed: () {
                /*MNotificationScreen().launch(context);*/
              },
            ),
            IconButton(
              icon: Icon(Icons.search, color: white),
              onPressed: () {
                MSearchScreen().launch(context);
              },
            ),
          ],
        ),
        body: AnimatedDrawer(
          homePageXValue: 150,
          homePageYValue: 80,
          homePageAngle: -0.2,
          homePageSpeed: 250,
          shadowXValue: 122,
          shadowYValue: 110,
          shadowAngle: -0.275,
          shadowSpeed: 550,
          openIcon: Icon(Icons.menu_open, color: Colors.white),
          closeIcon: Icon(Icons.arrow_back_ios, color: Colors.white),
          shadowColor: Colors.black,
          backgroundGradient: LinearGradient(
            colors: [Colors.black, Colors.black],
          ),
          menuPageContent: Padding(
            padding: const EdgeInsets.only(top: 100.0, left: 15),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FlutterLogo(
                    size: MediaQuery.of(context).size.width / 4,
                  ),
                  Row(
                    children: [
                      Text(
                        "FLUTTER",
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "HOLIC",
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.blue[200],
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 40),
                  ),
                  Text(
                    "Home Screen",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                  ),
                  Text(
                    "Screen 2",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                  ),
                  Divider(
                    color: Color(0xFF5950a0),
                    thickness: 2,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                  ),
                  Text(
                    "About",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          homePageContent: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50.0,
                ),
                Container(
                  color: Colors.black87,
                  width: context.width(),
                  child: Text('Your Daily Read',
                          style: boldTextStyle(size: 20, color: white))
                      .paddingAll(16),
                ),
                Divider(color: Colors.black26, height: 0.5),
                MCommonList(list: dailyReadPostList),
                Divider(color: Colors.black26, height: 0.5),
                Container(
                  alignment: Alignment.center,
                  color: black,
                  padding: EdgeInsets.all(16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Tune your recommendations',
                              style: primaryTextStyle(color: mLimeColor))
                          .expand(),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: boxDecoration(
                            color: white,
                            radius: 5,
                            bgColor: Colors.transparent),
                        child: Row(
                          children: [
                            Text('Done for Today',
                                style: boldTextStyle(color: white)),
                            8.width,
                            Icon(AntDesign.checkcircleo,
                                color: white, size: 18),
                          ],
                        ),
                      ).onTap(() {})
                    ],
                  ),
                ),
                6.height,
                Container(
                  color: black,
                  width: context.width(),
                  child: MCommonList(list: recentPostList),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Reading List',
                                style: boldTextStyle(size: 20, color: white))
                            .paddingOnly(
                                left: 16, right: 16, top: 16, bottom: 16),
                        Text('View All', style: secondaryTextStyle(size: 18))
                            .paddingOnly(right: 16, top: 16, bottom: 16),
                      ],
                    ),
                    HorizontalListWidget(list: dailyReadPostList),
                    24.height,
                  ],
                ),
                Container(
                  color: black,
                  width: context.width(),
                  child: MCommonList(list: archivedPostList),
                ),
                Divider(color: Colors.black26, height: 0.5),
                Container(
                  color: black,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Topic for you',
                                  style: boldTextStyle(size: 20, color: white))
                              .paddingOnly(
                                  left: 16, right: 16, top: 16, bottom: 16),
                          Text('View All', style: secondaryTextStyle(size: 18))
                              .paddingOnly(right: 16, top: 16, bottom: 16)
                              .onTap(() {
                            MExploreTopicScreen().launch(context);
                          }),
                        ],
                      ),
                      Container(
                        height: 150,
                        padding: EdgeInsets.all(8),
                        child: ListView.builder(
                          padding: EdgeInsets.only(left: 8),
                          itemCount:
                              topicList.length >= 5 ? 5 : topicList.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (_, i) {
                            MTopicModel data = topicList[i];
                            return Container(
                              width: 200,
                              decoration: boxDecoration(
                                  bgColor: Colors.transparent, radius: 8),
                              margin: EdgeInsets.all(8),
                              child: Stack(
                                children: [
                                  commonCachedNetworkImage(data.img.validate(),
                                          height: 100,
                                          width: 200,
                                          fit: BoxFit.cover)
                                      .cornerRadiusWithClipRRect(8),
                                  Container(
                                    height: 100,
                                    alignment: Alignment.bottomLeft,
                                    padding: EdgeInsets.all(8),
                                    decoration: boxDecoration(
                                        bgColor: mLimeColor.withOpacity(0.82),
                                        radius: 8),
                                    child: Text(data.title.validate(),
                                        style: boldTextStyle(
                                            size: 16, color: white),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis),
                                  )
                                ],
                              ),
                            ).onTap(() {
                              MAudioArticlesScreen(appBarTitle: data.title)
                                  .launch(context);
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: black,
                  width: context.width(),
                  child: MCommonList(list: savingPostList),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
