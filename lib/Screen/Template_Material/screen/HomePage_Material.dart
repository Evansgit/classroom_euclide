import 'dart:async';

import 'package:flutter/material.dart';
import 'package:crypto_template/Screen/Template_Material/screen/Loading_Animation/ListLoadingAnimation.dart';
import 'package:page_transition/page_transition.dart';
import 'dart:ui' as ui;
import '../../Support_Screen/RattingService.dart';
import 'Appbar/ListAppbar.dart';
import 'Bottom_Navigation_Bar/ListBottomNavBar.dart';
import 'Bottom_Sheet/ListBottomSheet.dart';
import 'Buttons/ListButtons.dart';
import 'Card/ListCard.dart';
import 'Chips/ListChips.dart';
import 'Dialogs/ListDialogs.dart';
import 'Drawer/DrawerList.dart';
import 'Expand/ListExpand.dart';
import 'Grid/ListGrid.dart';
import 'InformationScreen/ListInformation.dart';
import 'List/List.dart';
import 'Navigation_Drawer/ListNavigationDrawer.dart';
import 'Picker/ListPicker.dart';
import 'Progress/ListProgress.dart';
import 'Slider/SliderList.dart';
import 'Tabs/ListTabs.dart';
import 'Toast/ListToast.dart';

class HomePageMaterial extends StatefulWidget {
  HomePageMaterial({Key? key}) : super(key: key);

  @override
  _HomePageMaterialState createState() => _HomePageMaterialState();
}

class _HomePageMaterialState extends State<HomePageMaterial> {
  @override
  final RatingService _ratingService = RatingService();
  int _counter = 0;

  @override
  initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {
      _ratingService.isSecondTimeOpen().then((secondOpen) {
        if (secondOpen) {
          _ratingService.showRating();
        }
      });
    });
  }

  Future<void> _incrementCounter(context) async {
    setState(() {
      _counter++;
    });
    /**
     * In demand rating flow
     */
    if (_counter == 5) {
      _ratingService.showRating();
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          centerTitle: false,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          actions: <Widget>[
            InkWell(
              onTap: () {
                // _incrementCounter(context);
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
              "Material Kit",
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
        child: Stack(
          children: [
            Column(
              children: <Widget>[
                InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.leftToRightWithFade,
                          duration: Duration(milliseconds: 800),
                          child: ListAppbar(),
                        ),
                      );
                    },
                    child: card(Color(0xFFFF5F6D), Color(0xFFFFC371), "Appbars",
                        "assets/images/toolbar.png")),
                InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.leftToRightWithFade,
                          duration: Duration(milliseconds: 800),
                          child: ListBottomNavBar(),
                        ),
                      );
                    },
                    child: card(
                        Color(0xff6DC8F3),
                        Color(0xff73A1F9),
                        "Bottom Navigation",
                        "assets/images/bottomNavigate.png")),
                InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.leftToRightWithFade,
                          duration: Duration(milliseconds: 800),
                          child: ListBottomSheet(),
                        ),
                      );
                    },
                    child: card(Color(0xffFFB157), Color(0xffFFA057),
                        "Bottom Sheet", "assets/images/bottomSheet.png")),
                InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.leftToRightWithFade,
                          duration: Duration(milliseconds: 800),
                          child: ListButtons(),
                        ),
                      );
                    },
                    child: card(Color(0xffFF5B95), Color(0xffF8556D), "Buttons",
                        "assets/images/button.png")),
                InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.leftToRightWithFade,
                          duration: Duration(milliseconds: 800),
                          child: ListCard(),
                        ),
                      );
                    },
                    child: card(Color(0xFF75CDDF), Color(0xFF74DCD5), "Card",
                        "assets/images/card.png")),
                InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.leftToRightWithFade,
                          duration: Duration(milliseconds: 800),
                          child: ChipList(),
                        ),
                      );
                    },
                    child: card(Color(0xffD76EF5), Color(0xff8F7AFE), "Chips",
                        "assets/images/chips.png")),
                InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.leftToRightWithFade,
                          duration: Duration(milliseconds: 800),
                          child: DialogList(),
                        ),
                      );
                    },
                    child: card(Color(0xff42E695), Color(0xff3BB2B8), "Dialogs",
                        "assets/images/dialog.png")),
                InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.leftToRightWithFade,
                          duration: Duration(milliseconds: 800),
                          child: DrawerList(),
                        ),
                      );
                    },
                    child: card(Color(0xFF7F7FD5), Color(0xFF86A8E7), "Drawer",
                        "assets/images/menu.png")),
                InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.leftToRightWithFade,
                          duration: Duration(milliseconds: 800),
                          child: ExpandList(),
                        ),
                      );
                    },
                    child: card(Color(0xFFFFE5A8), Color(0xFFFBAEDE), "Expand",
                        "assets/images/expand.png")),
                InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.leftToRightWithFade,
                          duration: Duration(milliseconds: 800),
                          child: GridScreen(),
                        ),
                      );
                    },
                    child: card(Color(0xFF00B4DB), Color(0xFF0083B0), "Grid",
                        "assets/images/grid.png")),
                InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.leftToRightWithFade,
                          duration: Duration(milliseconds: 800),
                          child: InformationScreen(),
                        ),
                      );
                    },
                    child: card(Color(0xFFA18CD1), Color(0xFFFBC2EB),
                        "Information Screen", "assets/images/toolbar.png")),
                InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.leftToRightWithFade,
                          duration: Duration(milliseconds: 800),
                          child: ListNavigationDrawer(),
                        ),
                      );
                    },
                    child: card(Color(0xFFA18CD1), Color(0xFF9DD6DF),
                        "List Navigation Drawer", "assets/images/toolbar.png")),
                InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.leftToRightWithFade,
                          duration: Duration(milliseconds: 800),
                          child: ListScreen(),
                        ),
                      );
                    },
                    child: card(Color(0xFFFF5F6D), Color(0xFFFFC371), "Lists",
                        "assets/images/list.png")),
                InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.leftToRightWithFade,
                          duration: Duration(milliseconds: 800),
                          child: LoadingAnimation(),
                        ),
                      );
                    },
                    child: card(
                        Color(0xFFF12711).withOpacity(0.7),
                        Color(0xFFF5AF19).withOpacity(0.9),
                        "Loading Animation",
                        "assets/images/progress.png")),
                InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.leftToRightWithFade,
                          duration: Duration(milliseconds: 800),
                          child: ListPicker(),
                        ),
                      );
                    },
                    child: card(Color(0xFFFDC830), Color(0xFFF37335), "Pickers",
                        "assets/images/pickers.png")),
                InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.leftToRightWithFade,
                          duration: Duration(milliseconds: 800),
                          child: ListProgress(),
                        ),
                      );
                    },
                    child: card(Color(0xFFEE9CA7), Color(0xFFFFDDE1),
                        "Progress", "assets/images/progress.png")),
                InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.leftToRightWithFade,
                          duration: Duration(milliseconds: 800),
                          child: ListSlider(),
                        ),
                      );
                    },
                    child: card(Color(0xFF06BEB6), Color(0xFF48B1BF), "Slider",
                        "assets/images/slider.png")),
                InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.leftToRightWithFade,
                          duration: Duration(milliseconds: 800),
                          child: ListTabs(),
                        ),
                      );
                    },
                    child: card(Color(0xFF36D1DC), Color(0xFF5B86E5), "Tabs",
                        "assets/images/tabs.png")),
                InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.leftToRightWithFade,
                          duration: Duration(milliseconds: 800),
                          child: ListToast(),
                        ),
                      );
                    },
                    child: card(Color(0xFF6190E8), Color(0xFFA7BFE8), "Toasts",
                        "assets/images/toast.png")),
                // Padding(
                //   padding: const EdgeInsets.only(top: 10.0),
                //   child: Align(
                //     alignment: Alignment(0, 1.0),
                //     child: FacebookAdsWidget(),
                //   ),
                // ),
                SizedBox(
                  height: 150.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget card(Color startColor, Color endColor, String title, image) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [startColor, endColor],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
                borderRadius: BorderRadius.all(Radius.circular(5.0))),
            child: Center(
              child: Image.asset(
                image,
                height: 30.0,
                color: Colors.white,
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
                    padding: const EdgeInsets.only(top: 0.0, left: 19.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                              fontFamily: "Sofia",
                              fontWeight: FontWeight.w600,
                              fontSize: 16.5),
                        ),
                      ],
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
                      backgroundColor: startColor,
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

// Widget card(Color startColor, Color endColor, Color _colorShadow,
//     String _title, _image) {
//   return Center(
//     child: Padding(
//       padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 15.0),
//       child: Stack(
//         children: <Widget>[
//           Container(
//             height: 100,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(12),
//               gradient: LinearGradient(
//                   colors: [startColor, endColor],
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight),
//               boxShadow: [
//                 BoxShadow(
//                   color: endColor,
//                   blurRadius: 12,
//                   offset: Offset(0, 6),
//                 ),
//               ],
//             ),
//           ),
//           Positioned(
//             right: 0,
//             bottom: 0,
//             top: 0,
//             child: CustomPaint(
//               size: Size(100, 150),
//               painter: CustomCardShapePainter(12, startColor, endColor),
//             ),
//           ),
//           Positioned.fill(
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: <Widget>[
//                 Expanded(
//                   child: Image.asset(
//                     _image,
//                     color: Colors.white,
//                     height: 20.0,
//                   ),
//                   flex: 2,
//                 ),
//                 Expanded(
//                   flex: 7,
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       Text(
//                         _title,
//                         style: TextStyle(
//                             fontFamily: "Sofia",
//                             fontSize: 19.0,
//                             color: Colors.white,
//                             fontWeight: FontWeight.w500),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }

class PlaceInfo {
  final String name;
  final String category;
  final String location;
  final double rating;
  final Color startColor;
  final Color endColor;

  PlaceInfo(this.name, this.startColor, this.endColor, this.rating,
      this.location, this.category);
}

class CustomCardShapePainter extends CustomPainter {
  final double radius;
  final Color startColor;
  final Color endColor;

  CustomCardShapePainter(this.radius, this.startColor, this.endColor);

  @override
  void paint(Canvas canvas, Size size) {
    var radius = 24.0;

    var paint = Paint();
    paint.shader = ui.Gradient.linear(
        Offset(0, 0), Offset(size.width, size.height), [
      HSLColor.fromColor(startColor).withLightness(0.8).toColor(),
      endColor
    ]);

    var path = Path()
      ..moveTo(0, size.height)
      ..lineTo(size.width - radius, size.height)
      ..quadraticBezierTo(
          size.width, size.height, size.width, size.height - radius)
      ..lineTo(size.width, radius)
      ..quadraticBezierTo(size.width, 0, size.width - radius, 0)
      ..lineTo(size.width - 1.5 * radius, 0)
      ..quadraticBezierTo(-radius, 2 * radius, 0, size.height)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}



// Widget card(
//     List<Color> _colorGradient, Color _colorShadow, String _title, _image) {
//   return Padding(
//     padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 15.0),
//     child: Container(
//       height: 80.0,
//       width: double.infinity,
//       decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: _colorGradient,
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//           borderRadius: BorderRadius.all(Radius.circular(10.0)),
//           boxShadow: [
//             BoxShadow(
//                 color: Color(0xFF63AEED).withOpacity(0.2),
//                 blurRadius: 10.0,
//                 spreadRadius: 5.1,
//                 offset: Offset(3, 10))
//           ]),
//       child: Align(
//         alignment: Alignment.centerLeft,
//         child: Padding(
//           padding: const EdgeInsets.only(left: 20.0),
//           child: Row(
//             children: [
//               Image.asset(
//                 _image,
//                 height: 25.0,
//                 color: Colors.white,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 15.0),
//                 child: Text(
//                   _title,
//                   style: TextStyle(
//                       fontFamily: "Sofia",
//                       fontSize: 19.0,
//                       color: Colors.white,
//                       fontWeight: FontWeight.w500),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     ),
//   );
  
// }
