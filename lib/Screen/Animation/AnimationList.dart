import 'package:flutter/material.dart';
import 'package:crypto_template/Screen/Animation/ListAnimation/searchbaranimation.dart';
import 'package:crypto_template/Screen/Animation/ListAnimation/zoom_tap_animation.dart';
import '../Animation/AppBarAnimation/AppbarAnimations.dart';
import '../Animation/ListAnimation/Listviewanimation.dart';
import '../Support_Screen/InformationScreen.dart';
import 'ListAnimation/Animation/AnimationTranstition.dart';
import 'ListAnimation/AnimationText.dart';
import 'ListAnimation/AutoAnimation/GridAnimation.dart';
import 'ListAnimation/CardBounce.dart';
import 'ListAnimation/CircularReveakAnimation.dart';
import 'ListAnimation/Delayed_Display.dart';
import 'ListAnimation/DrawerAnimation.dart';
import 'ListAnimation/DrawerAnimation3.dart';
import 'ListAnimation/DrawerAnimationSlide.dart';
import 'ListAnimation/ListCardAnimation.dart';
import 'ListAnimation/LoadingAnimation.dart';
import 'ListAnimation/ProfileAnimation.dart';
import 'ListAnimation/SlidingUpPanel.dart';
import 'ListAnimation/SnackbarAnimation.dart';
import 'ListAnimation/animatedLogin.dart';
import 'ListAnimation/logincurveanimation.dart';

class AnimationList extends StatefulWidget {
  AnimationList({Key? key}) : super(key: key);

  @override
  _AnimationListState createState() => _AnimationListState();
}

class _AnimationListState extends State<AnimationList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          centerTitle: false,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          actions: <Widget>[
            InkWell(
              onTap: () {
                // _showInterstitialAd();
                Navigator.of(context).push(PageRouteBuilder(
                    pageBuilder: (_, __, ___) => InformationScreen()));
              },
              child: Padding(
                  padding:
                      const EdgeInsets.only(right: 20.0, left: 20.0, top: 15.0),
                  child: Image.asset(
                    "assets/images/help.png",
                    height: 25.0,
                    width: 25.0,
                  )),
            )
          ],
          title: Padding(
            padding: const EdgeInsets.only(top: 25.0, left: 2.0),
            child: Text(
              "List Animation",
              style: TextStyle(
                  fontFamily: "Sofia",
                  fontWeight: FontWeight.w900,
                  fontSize: 31.0,
                  color: Colors.black),
            ),
          ),
          elevation: 0.0,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => AppBarAnimations()));
                },
                child: card("AppBar Animation", Color(0xFFF1CA89))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => DrawerAnimationScreem()));
                },
                child: card("Drawer Animation", Color(0xFF54BAB9))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => DrawerAnimation3()));
                },
                child: card("Drawer Animation 2", Color(0xFFF6C6EA))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => DrawerSliderAnimation2()));
                },
                child: card("Drawer Animation 3", Color(0xFFF47B5FF))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SnackbarAnimation()));
                },
                child: card("Snackbar Animation", Color(0xFF937DC2))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SlidingUpPanelExample()));
                },
                child: card("Sliding Up Panel", Color(0xFFAEBDCA))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => AnimationTextScreen()));
                },
                child: card("Animation Text Screen", Color(0xFFE99497))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ProfileAnimation()));
                },
                child: card("Profile Animation", Color(0xFF5F939A))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => AnimatedLogin()));
                },
                child: card("Animated Login", Color(0xFF87A2FB))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ListCardAnimation()));
                },
                child: card("List Animation Card", Color(0xFFABD9FF))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => GridAnimation()));
                },
                child: card("Grid Animation Card", Color(0xFF5CB8E4))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ListviewAnimation()));
                },
                child: card("List View Animation", Color(0xFF4CA1A3))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) =>
                          CircularRevealAnimationscreen()));
                },
                child: card("Circular Reveal Animation", Color(0xFFC6DCE4))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => TransitionsHomePage()));
                },
                child: card("Transtition Animation", Color(0xFFF47C7C))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => DelayedDisplayScreen()));
                },
                child: card("Delayed Display Animation", Color(0xFF3F4E4F))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => LoadingAnimationFl()));
                },
                child: card("Loading Animation", Color(0xFFADCF9F))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ZoomTapAnimationScreen(
                            title: 'Zoom Tap',
                          )));
                },
                child: card("Zoom Tap", Color(0xFFC689C6))),
            // InkWell(
            //     onTap: () {
            //       Navigator.of(context).push(PageRouteBuilder(
            //           pageBuilder: (_, __, ___) => CartAnimation(
            //                 title: 'Cart Animation',
            //               )));
            //     },
            //     child: card("Cart Animation", Color(0xFFF1CA89))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => AppStoreView()));
                },
                child: card("Bounce Card", Color(0xFF47597E))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => LoginCurveAnimation()));
                },
                child: card("Login Curve Animation", Color(0xFF4CA1A3))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => Searchanimation()));
                },
                child: card("Search Animation Screen", Color(0xFF25316D))),
            SizedBox(
              height: 100.0,
            )
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
