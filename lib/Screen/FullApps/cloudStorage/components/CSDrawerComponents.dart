import 'dart:core';

import 'package:flutter/material.dart';
import 'package:crypto_template/Screen/FullApps/cloudStorage/model/CSDataModel.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:crypto_template/Screen/FullApps/cloudStorage/utils/CSColors.dart';
import 'package:crypto_template/Screen/FullApps/cloudStorage/utils/CSWidgets.dart';

int currentIndex = 0;
List<CSDrawerModel> getCSDrawerList = getCSDrawer();

class CSDrawerComponents extends StatefulWidget {
  static String tag = '/CSDrawerComponents';

  @override
  CSDrawerComponentsState createState() => CSDrawerComponentsState();
}

class CSDrawerComponentsState extends State<CSDrawerComponents> {
  List<CSDataModel> getFileSharingList = getFileSharingData();

  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    //
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    double percentage = 4.3;
    double factor = percentage / 100.0;

    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 190,
              child: Stack(
                children: <Widget>[
                  Image.network(
                    "https://cdn.wallpapersafari.com/63/36/q4b2K8.jpg",
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 40, horizontal: 14),
                    child: CircleAvatar(
                      radius: 36,
                      backgroundColor: Colors.grey[100],
                      child: CircleAvatar(
                        radius: 33,
                        backgroundImage: NetworkImage(
                            "https://celebritypets.net/wp-content/uploads/2016/12/Adriana-Lima.jpg"),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            "Alissa Hearth",
                            style: TextStyle(
                                fontFamily: "Sofia",
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                                fontSize: 22.0),
                          ),
                          Text(
                            "JeffDevmiller@mail.com",
                            style: TextStyle(
                                fontFamily: "Sofia",
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                                fontSize: 18.0),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 5,
              margin: EdgeInsets.only(left: 16, right: 16, bottom: 8, top: 16),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueGrey, width: 0.1),
                      color: CSGreyColor,
                    ),
                  ),
                  FractionallySizedBox(
                      widthFactor: factor,
                      child: Container(color: CSDarkBlueColor))
                ],
              ),
            ),
            Text(
              "$percentage% of 2.0 GB used",
              style: boldTextStyle(color: Colors.grey, size: 14),
            ).paddingOnly(left: 16, right: 16, bottom: 16),
            10.height,
            Container(
              child: ListView.builder(
                padding: EdgeInsets.all(0),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: getCSDrawerList.length,
                itemBuilder: (context, index) {
                  return Container(
                    color: getCSDrawerList[index].isSelected
                        ? Colors.blueGrey.withOpacity(0.3)
                        : transparentColor,
                    child: createBasicListTile(
                      text: getCSDrawerList[index].title!,
                      icon: getCSDrawerList[index].icon,
                      onTap: () {
                        if (currentIndex == index) {
                          finish(context);
                        } else {
                          currentIndex = index;
                          if (getCSDrawerList[index].title != "Setting" &&
                              getCSDrawerList[index].title !=
                                  "Upgrade Account") {
                            getCSDrawerList.forEach((element) {
                              element.isSelected = false;
                            });
                          }
                          getCSDrawerList[index].isSelected = true;
                          getCSDrawerList
                              .elementAt(getCSDrawerList.length - 1)
                              .isSelected = false;
                          getCSDrawerList
                              .elementAt(getCSDrawerList.length - 2)
                              .isSelected = false;

                          // if (getCSDrawerList[index].title != "Setting" && getCSDrawerList[index].title != "Upgrade Account") {
                          //   getCSDrawerList[index].goto.launch(context, isNewTask: true);
                          // } else {
                          //   getCSDrawerList[index].goto.launch(context);
                          // }
                          getCSDrawerList[index].goto.launch(context);
                        }
                      },
                    ).paddingSymmetric(horizontal: 16),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
