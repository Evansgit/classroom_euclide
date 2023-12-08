import 'package:crypto_template/Screen/Animation/ListAnimation/searchbaranimation.dart';
import 'package:crypto_template/Screen/Animation/ListAnimation/zoom_tap_animation.dart';
import 'package:flutter/material.dart';

import 'Animation/AnimationTranstition.dart';
import 'AnimationText.dart';
import 'AutoAnimation/GridAnimation.dart';
import 'CardBounce.dart';
import 'CircularReveakAnimation.dart';
import 'Delayed_Display.dart';
import 'DrawerAnimation.dart';
import 'DrawerAnimation3.dart';
import 'DrawerAnimationSlide.dart';
import 'ListCardAnimation.dart';
import 'Listviewanimation.dart';
import 'LoadingAnimation.dart';
import 'ProfileAnimation.dart';
import 'SlidingUpPanel.dart';
import 'SnackbarAnimation.dart';
import 'animatedLogin.dart';
import 'logincurveanimation.dart';

class ListAnimationScreen extends StatefulWidget {
  ListAnimationScreen({Key? key}) : super(key: key);

  @override
  _ListAnimationScreenState createState() => _ListAnimationScreenState();
}

class _ListAnimationScreenState extends State<ListAnimationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        centerTitle: true,
        title: Text(
          "List Animation Screen",
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
                      pageBuilder: (_, __, ___) => DrawerAnimation3()));
                },
                child: card("Drawer Animation 2", Color(0xFFEC9B3B))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SnackbarAnimation()));
                },
                child: card("Snackbar Animation", Color(0xFFEC9B3B))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => DrawerSliderAnimation2()));
                },
                child: card("Drawer Animation 3", Color(0xFFEC9B3B))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SlidingUpPanelExample()));
                },
                child: card("Sliding Up Panel", Color(0xFFEC9B3B))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => AnimationTextScreen()));
                },
                child: card("Animation Text Screen", Color(0xFFEC9B3B))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ProfileAnimation()));
                },
                child: card("Profile Animation", Color(0xFFEC9B3B))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => AnimatedLogin()));
                },
                child: card("Animated Login", Color(0xFFEC9B3B))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ListCardAnimation()));
                },
                child: card("List Animation Card", Color(0xFFEC9B3B))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => GridAnimation()));
                },
                child: card("Grid Animation Card", Color(0xFFEC9B3B))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ListviewAnimation()));
                },
                child: card("List View Animation", Color(0xFFEC9B3B))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) =>
                          CircularRevealAnimationscreen()));
                },
                child: card("Circular Reveal Animation", Color(0xFFEC9B3B))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => TransitionsHomePage()));
                },
                child: card("Transtition Animation", Color(0xFFEC9B3B))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => DelayedDisplayScreen()));
                },
                child: card("Delayed Display Animation", Color(0xFFEC9B3B))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => LoadingAnimationFl()));
                },
                child: card("Loading Animation", Color(0xFFEC9B3B))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ZoomTapAnimationScreen(
                            title: 'Zoom Tap',
                          )));
                },
                child: card("Zoom Tap", Color(0xFFEC9B3B))),
            // InkWell(
            //     onTap: () {
            //       Navigator.of(context).push(PageRouteBuilder(
            //           pageBuilder: (_, __, ___) => CartAnimation(
            //                 title: 'Cart Animation',
            //               )));
            //     },
            //     child: card("Cart Animation", Color(0xFFEC9B3B))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => AppStoreView()));
                },
                child: card("Bounce Card", Color(0xFFEC9B3B))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => DrawerAnimationScreem()));
                },
                child: card("Drawer Animation", Color(0xFFEC9B3B))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => LoginCurveAnimation()));
                },
                child: card("Login Curve Animation", Color(0xFFEC9B3B))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => Searchanimation()));
                },
                child: card("Search Animation Screen", Color(0xFFEC9B3B))),
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
                  height: 70.0,
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
