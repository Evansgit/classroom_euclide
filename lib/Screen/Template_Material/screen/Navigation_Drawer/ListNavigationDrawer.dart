import 'package:flutter/material.dart';

import 'Nav_Bottom.dart';
import 'Nav_Collapse.dart';
import 'Nav_Iconic.dart';
import 'Nav_ProfileDrawer.dart';
import 'Nav_Right.dart';
import 'Nav_Scaler.dart';
import 'Nav_SlideHeader.dart';
import 'SimNavDrawer.dart';
import 'SimNavListDrawer.dart';

class ListNavigationDrawer extends StatefulWidget {
  ListNavigationDrawer({Key? key}) : super(key: key);

  @override
  State<ListNavigationDrawer> createState() => _ListNavigationDrawerState();
}

class _ListNavigationDrawerState extends State<ListNavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text(
          "List Navigation Drawer List",
          style: TextStyle(
              fontFamily: "Sofia",
              fontWeight: FontWeight.w700,
              color: Colors.black),
        ),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SimNavListDrawer()));
                },
                child: card("Navigation Drawer 1", Color(0xFF9DD6DF))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SimNavDrawer()));
                },
                child: card("Navigation Drawer 2", Color(0xFF9DD6DF))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => NavProfileDrawer()));
                },
                child: card("Navigation Drawer 3", Color(0xFF9DD6DF))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => NavDrawerIconic()));
                },
                child: card("Navigation Drawer 4", Color(0xFF9DD6DF))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => NavDrawerRight()));
                },
                child: card("Navigation Drawer 5", Color(0xFF9DD6DF))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => NavDrawerBottom()));
                },
                child: card("Navigation Drawer 6", Color(0xFF9DD6DF))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => DrawerScaleIcon()));
                },
                child: card("Navigation Drawer 7", Color(0xFF9DD6DF))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => DrawerSlideWithHeader()));
                },
                child: card("Navigation Drawer 8", Color(0xFF9DD6DF))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) =>
                          TestesCollapsingContainer()));
                },
                child: card("Navigation Drawer 9", Color(0xFF9DD6DF))),
          ],
        ),
      ),
    );
  }

  Widget card(String title, Color _colors) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
                color: _colors,
                borderRadius: BorderRadius.all(Radius.circular(5.0))),
            child: Center(
              child: Image.asset(
                "assets/images/logo.png",
                height: 45.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Stack(
              children: [
                Container(
                  height: 90.0,
                  width: MediaQuery.of(context).size.width - 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12.withOpacity(0.03),
                            blurRadius: 10.0,
                            spreadRadius: 5.0)
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 32.0, left: 19.0),
                    child: Text(
                      title,
                      style: TextStyle(
                          fontFamily: "Sofia",
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width - 145, top: 30.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: CircleAvatar(
                      child: Center(
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 14.0,
                        ),
                      ),
                      backgroundColor: _colors,
                      radius: 14.0,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
