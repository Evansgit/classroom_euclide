import 'dart:async';

import 'package:flutter/material.dart';

// import 'package:fimber/fimber.dart';
import '../Support_Screen/InformationScreen.dart';
import 'Error_Screen/ListErrorScreen.dart';
import 'Expensa_Apps/Expensa_List.dart';
import 'Hotel_Apps/ListHotelScreen.dart';
import 'LanguageLearning_Apps/ListCardScreen.dart';
import 'Laundry_Apps/ListLaundryScreen.dart';
import 'Login_Screen/ListLoginScreen.dart';
import 'News_Apps/ListNewsScreen.dart';
import 'OnBoarding/ListOnBoarding.dart';
import 'Plane_Apps/Screen/HomeListPlane.dart';
import 'Plane_Apps/Screen/OpeningListPlane.dart';
import 'Splash_Screen/ListSplashScreen.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:shared_preferences/shared_preferences.dart';

// import 'package:appodeal_flutter/appodeal_flutter.dart';

// class UIList extends StatefulWidget {
//   const UIList({Key? key}) : super(key: key);

//   @override
//   State<UIList> createState() => _UIListState();
// }

// class _UIListState extends State<UIList> {
//   @override
//   Widget build(BuildContext context) {
//  return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text(
//           "UI Screen",
//           style: TextStyle(fontFamily: "Sofia", fontWeight: FontWeight.w700),
//         ),
//         elevation: 0.0,
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             InkWell(
//                 onTap: () {
//                   Navigator.of(context).push(PageRouteBuilder(
//                       pageBuilder: (_, __, ___) => Home()));
//                 },
//                 child: card("UI Screen List", Color(0xFF87A7B3))),
//             InkWell(
//                 onTap: () {
//                   Navigator.of(context).push(PageRouteBuilder(
//                       pageBuilder: (_, __, ___) => ThemeList()));
//                 },
//                 child: card("Theme List", Color(0xFFF4A9A8))),
//              ],
//         ),
//       ),
//     );
//   }

//   Widget card(String title, Color _colors) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Row(
//         children: [
//           Container(
//             height: 80.0,
//             width: 80.0,
//             decoration: BoxDecoration(
//                 color: _colors,
//                 borderRadius: BorderRadius.all(Radius.circular(5.0))),
//             child: Center(
//               child: Image.asset(
//                 "assets/images/logo.png",
//                 height: 45.0,
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 10.0, right: 10.0),
//             child: Stack(
//               children: [
//                 Container(
//                   height: 90.0,
//                   width: MediaQuery.of(context).size.width - 130,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                       color: Colors.white,
//                       boxShadow: [
//                         BoxShadow(
//                             color: Colors.black12.withOpacity(0.03),
//                             blurRadius: 10.0,
//                             spreadRadius: 5.0)
//                       ]),
//                   child: Padding(
//                     padding: const EdgeInsets.only(top: 32.0, left: 19.0),
//                     child: Text(
//                       title,
//                       style: TextStyle(
//                           fontFamily: "Sofia",
//                           fontWeight: FontWeight.w600,
//                           fontSize: 16.0),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(
//                       left: MediaQuery.of(context).size.width - 145, top: 30.0),
//                   child: Align(
//                     alignment: Alignment.centerRight,
//                     child: CircleAvatar(
//                       child: Center(
//                         child: Icon(
//                           Icons.arrow_forward_ios,
//                           color: Colors.white,
//                           size: 14.0,
//                         ),
//                       ),
//                       backgroundColor: _colors,
//                       radius: 14.0,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

///UIScreenList
///

class UIScreenList extends StatefulWidget {
  UIScreenList({Key? key}) : super(key: key);

  @override
  _UIScreenListState createState() => _UIScreenListState();
}

class _UIScreenListState extends State<UIScreenList> {
  @override
  Widget build(BuildContext context) {
    return ShowCaseWidget(
      builder: Builder(builder: (context) => Home()),
    );
  }
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey _one1 = GlobalKey();
  GlobalKey _two2 = GlobalKey();

  Timer? timer;

  @override
  Widget build(BuildContext context) {
    SharedPreferences preferences;

    displayShowcase() async {
      preferences = await SharedPreferences.getInstance();
      bool? showcaseVisibilityStatus = preferences.getBool("showShowcase");

      if (showcaseVisibilityStatus == null) {
        preferences.setBool("showShowcase", false).then((bool success) {
          if (success)
            print("Successfull in writing showshoexase");
          else
            print("some bloody problem occured");
        });

        return true;
      }

      return false;
    }

    displayShowcase().then((status) {
      if (status) {
        ShowCaseWidget.of(context).startShowCase([
          _one1,
          _two2,
        ]);
      }
    });

    return KeysToBeInherited(
        profileShowCase: _one1,
        searchShowCase: _two2,
        child: Scaffold(
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
                      padding: const EdgeInsets.only(
                          right: 20.0, left: 20.0, top: 15.0),
                      child: Showcase(
                        key: _one1,
                        description: 'Click here to get the source code',
                        child: Image.asset(
                          "assets/images/help.png",
                          height: 25.0,
                          width: 25.0,
                        ),
                      )),
                )
              ],
              title: Padding(
                padding: const EdgeInsets.only(top: 25.0, left: 2.0),
                child: Text(
                  "UI Screen",
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
                          pageBuilder: (_, __, ___) =>
                              ListOnBoardingScreenCard()));
                    },
                    child: Showcase(
                      key: _two2,
                      description: 'Tap to see list UI Kit',
                      child: card("OnBoarding Screen", Color(0xFF87A7B3), ""),
                    )),
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder: (_, __, ___) => ListErrorScreen()));
                    },
                    child: card("Error Screen", Color(0xFFF4A9A8), "")),
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder: (_, __, ___) => ListLoginScreen()));
                    },
                    child: card("Login Screen", Color(0xFF96BB7C), "")),
                // InkWell(
                //     onTap: () {
                //       Navigator.of(context).push(PageRouteBuilder(
                //           pageBuilder: (_, __, ___) => ListEmptyScreen()));
                //     },
                //     child:
                //         card("Empty Screen", Color(0xFFAEDBCE), "43 Screens")),
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder: (_, __, ___) => ListSplashScreen()));
                    },
                    child: card("Splash Screen", Color(0xFF47597E), "")),
                // InkWell(
                //     onTap: () {
                //       Navigator.of(context).push(PageRouteBuilder(
                //           pageBuilder: (_, __, ___) =>
                //               ListPricingPlanScreen()));
                //     },
                //     child: card("List Pricing Plan Screen", Color(0xFF937DC2),
                //         "7 Screens")),
                // InkWell(
                //     onTap: () {
                //       Navigator.of(context).push(PageRouteBuilder(
                //           pageBuilder: (_, __, ___) => ListMultipleScreen()));
                //     },
                //     child: card(
                //         "List Random Screen", Color(0xFF94B49F), "38 Screens")),
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder: (_, __, ___) => HomeListPlane()));
                    },
                    child: card("Home List Plane App", Color(0xFF81D4FA), "")),
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder: (_, __, ___) => OpeningListPlane()));
                    },
                    child:
                        card("Opening List Plane App", Color(0xFFB6C9F0), "")),
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder: (_, __, ___) => ExpensaList()));
                    },
                    child:
                        card("UI Screen Expensa App", Color(0xFFFBC6A4), "")),
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder: (_, __, ___) => ListScreenCard()));
                    },
                    child:
                        card("UI Screen Language App", Color(0xFFF5ABC9), "")),
                // InkWell(
                //     onTap: () {
                //       Navigator.of(context).push(PageRouteBuilder(
                //           pageBuilder: (_, __, ___) => ListLeaderBoard()));
                //     },
                //     child: card(
                //         "List Leader Board", Color(0xFF90C8AC), "5 Screens")),
                // InkWell(
                //     onTap: () {
                //       Navigator.of(context).push(PageRouteBuilder(
                //           pageBuilder: (_, __, ___) => ListNavigationDrawer()));
                //     },
                //     child: card("List Navigation Drawer", Color(0xFF9DD6DF),
                //         "9 Screens")),
                // InkWell(
                //     onTap: () {
                //       Navigator.of(context).push(PageRouteBuilder(
                //           pageBuilder: (_, __, ___) => ListProfileScreen()));
                //     },
                //     child: card(
                //         "List Profile Screen", Color(0xFFA8A4CE), "8 Screens")),
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder: (_, __, ___) => ListHotelScreenCard()));
                    },
                    child: card("UI Screen Hotel App", Color(0xFFE93B81), "")),
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder: (_, __, ___) =>
                              ListLaundryScreenCard()));
                    },
                    child:
                        card("UI Screen Laundry App", Color(0xFF8998FE), "")),
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder: (_, __, ___) => ListNewsScreenCard()));
                    },
                    child: card("UI Screen News App", Color(0xFF94D0CC), "")),
                // InkWell(
                //     onTap: () {
                //       Navigator.of(context).push(PageRouteBuilder(
                //           pageBuilder: (_, __, ___) => ThemeList()));
                //     },
                //     child: card("Theme UI Screens",
                //         Color.fromARGB(255, 154, 208, 148), "185 Screens")),

                // Padding(
                //   padding: const EdgeInsets.only(top: 10.0),
                //   child: Align(
                //     alignment: Alignment(0, 1.0),
                //     child: FacebookAdsWidget(),
                //   ),
                // ),

                SizedBox(
                  height: 100.0,
                ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(vertical: 4),
                //   child: Column(
                //     children: [
                //       const Text("Banner Ad"),
                //       AppodealBanner(placementName: "placement-name"),
                //     ],
                //   ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(vertical: 4),
                //   child: Column(
                //     children: [
                //       const Text("MREC Ad"),
                //       AppodealMrec(placementName: "placement-name"),
                //     ],
                //   ),
                // )
              ],
            ),
          ),
        ));
  }

  Widget card(String title, Color _colors, String subTitle) {
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
                height: 40.0,
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
                    padding: const EdgeInsets.only(top: 20.0, left: 19.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                              fontFamily: "Sofia",
                              fontWeight: FontWeight.w600,
                              fontSize: 16.5),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          subTitle,
                          style: TextStyle(
                              fontFamily: "Sofia",
                              color: Colors.black54,
                              fontWeight: FontWeight.w300,
                              fontSize: 15.0),
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

class KeysToBeInherited extends InheritedWidget {
  final GlobalKey profileShowCase;
  final GlobalKey searchShowCase;

  KeysToBeInherited({
    required this.profileShowCase,
    required this.searchShowCase,
    required Widget child,
  }) : super(child: child);

  static KeysToBeInherited? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<KeysToBeInherited>();
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }
}
