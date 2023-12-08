import 'dart:async';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:crypto_template/Screen/FullApps/Marketplace/Library/ExpandedList/ExpandedDetailProfile.dart';
import 'package:crypto_template/Screen/FullApps/Marketplace/pages/UI/Profile/AccountSetting.dart';
import 'package:crypto_template/Screen/FullApps/Marketplace/pages/UI/Profile/Listing.dart';
import 'package:crypto_template/Screen/FullApps/Marketplace/pages/UI/Profile/MyOrders.dart';
import 'package:crypto_template/Screen/FullApps/Marketplace/pages/UI/Profile/NotificationSetting.dart';
import 'package:crypto_template/Screen/FullApps/Marketplace/pages/UI/Profile/ViewProfile.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override

  /// Custom Text black
  static var _nameProfile = TextStyle(
    color: Colors.black,
    fontFamily: "Sofia",
    fontSize: 16.0,
    fontWeight: FontWeight.w700,
  );

  /// Custom Text for Header title
  static var _subNameProfile = TextStyle(
    fontWeight: FontWeight.w700,
    fontFamily: "Sofia",
    fontSize: 15.0,
    color: Colors.blueAccent,
  );

  /// Custom Text for Detail title
  static var _detailText = TextStyle(
      fontFamily: "Sofia",
      color: Colors.black,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.3,
      wordSpacing: 0.5);

  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    final MediaQueryData media = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 110.0),
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 0.0,
                            left: 20.0,
                          ),
                          child: Container(
                            height: 70.0,
                            width: 70.0,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100.0)),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 1.0,
                                      color: Colors.black12,
                                      spreadRadius: 2.0)
                                ],
                                image: DecorationImage(
                                    image: AssetImage(
                                        "lib/Screen/FullApps/Marketplace/assets/avatars/avatar-1.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Text(
                                  "Alex",
                                  style: _nameProfile,
                                ),
                              ),
                              SizedBox(
                                height: 4.0,
                              ),
                              InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(PageRouteBuilder(
                                        pageBuilder: (_, __, ___) =>
                                            viewProfil()));
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 12.0),
                                    child: Text(
                                      "View Profile",
                                      style: _subNameProfile,
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: SizedBox(
                    height: 25.0,
                    width: double.infinity,
                  ),
                ),
                Divider(
                  height: 2.5,
                  color: Colors.black54,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Column(
                    /// Setting Category List
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 27.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Icon(
                              Icons.bookmark,
                              size: 27.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25.0),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Saved",
                                    ),
                                    Text(
                                      "3 new",
                                      style: TextStyle(fontSize: 11.5),
                                    )
                                  ]),
                            ),
                          ],
                        ),
                      ),
                      _line(),
                      category(
                        txt: "My Listing",
                        padding: 25.0,
                        image:
                            "lib/Screen/FullApps/Marketplace/assets/icon/myListing.jpg",
                        tap: () {
                          Navigator.of(context).push(PageRouteBuilder(
                              pageBuilder: (_, __, ___) => new listing()));
                        },
                      ),
                      _line(),
                      category(
                        txt: "My Orders",
                        padding: 25.0,
                        image:
                            "lib/Screen/FullApps/Marketplace/assets/icon/myOrders.jpg",
                        tap: () {
                          Navigator.of(context).push(PageRouteBuilder(
                              pageBuilder: (_, __, ___) => new myOrders()));
                        },
                      ),
                      _line(),

//                      Container(
//                        decoration: BoxDecoration(
//                          border: Border(top: BorderSide(color: Colors.black26,width: 1.0),bottom: BorderSide(color: Colors.black26,width: 1.0)),
//                          color: Colors.black12.withOpacity(0.1),
//                        ),
//                        child: Padding(
//                          padding: const EdgeInsets.only(left:29.0,top:14.0,bottom: 14.0),
//                          child: Row(
//                            children: <Widget>[
//                              Image.asset("lib/Screen/FullApps/Marketplace/assets/icon/setting.jpg",height: 27.0,),
//                              Padding(
//                                padding: const EdgeInsets.only(left:25.0),
//                                child: Text("Settings & Policies"),
//                              )
//                            ],
//                          ),
//                        ),
//                      ),
//                      category(
//                        txt: "Acount",
//                        padding: 27.0,
//                        image: "lib/Screen/FullApps/Marketplace/assets/icon/account.jpg",
//                        tap: () {
//                        Navigator.of(context).push(PageRouteBuilder(
//                            pageBuilder: (_, __, ___) => new accountSetting()));
//                        },
//                      ),
//                      _line(),
//                      category(
//                        txt: "Notification",
//                        padding: 28.0,
//                        image: "lib/Screen/FullApps/Marketplace/assets/icon/notification.jpg",
//                        tap: () {
//                        Navigator.of(context).push(PageRouteBuilder(
//                            pageBuilder: (_, __, ___) => new notificationSetting()));
//                        },
//                      ),
//                      _line(),
//                      category(
//                        padding: 30.0,
//                        txt: "Privacy Policy",
//                        image: "lib/Screen/FullApps/Marketplace/assets/icon/privacy.jpg",
//                        tap: () {
////                        Navigator.of(context).push(PageRouteBuilder(
////                            pageBuilder: (_, __, ___) => new aboutApps()));
//                        },
//                      ),
//                      _line(),
//                      category(
//                        padding: 29.0,
//                        txt: "Terms & Policies",
//                        image: "lib/Screen/FullApps/Marketplace/assets/icon/terms.jpg",
//                        tap: () {
////                        Navigator.of(context).push(PageRouteBuilder(
////                            pageBuilder: (_, __, ___) => new aboutApps()));
//                        },
//                      ),
                      ExpansionTileProfile(
                        title: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Image.asset(
                                "lib/Screen/FullApps/Marketplace/assets/icon/setting.jpg",
                                height: 22.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25.0),
                              child: Text("Settings & Policies"),
                            )
                          ],
                        ),
                        children: [
                          categorySettingandPolicies(
                            txt: "Acount",
                            padding: 27.0,
                            image:
                                "lib/Screen/FullApps/Marketplace/assets/icon/account.jpg",
                            tap: () {
                              Navigator.of(context).push(PageRouteBuilder(
                                  pageBuilder: (_, __, ___) =>
                                      new accountSetting()));
                            },
                          ),
                          _lineSetting(),
                          categorySettingandPolicies(
                            txt: "Notification",
                            padding: 28.0,
                            image:
                                "lib/Screen/FullApps/Marketplace/assets/icon/notification.jpg",
                            tap: () {
                              Navigator.of(context).push(PageRouteBuilder(
                                  pageBuilder: (_, __, ___) =>
                                      new notificationSetting()));
                            },
                          ),
                          _lineSetting(),
                          categorySettingandPolicies(
                            padding: 30.0,
                            txt: "Privacy Policy",
                            image:
                                "lib/Screen/FullApps/Marketplace/assets/icon/privacy.jpg",
                            tap: () {
//                        Navigator.of(context).push(PageRouteBuilder(
//                            pageBuilder: (_, __, ___) => new aboutApps()));
                            },
                          ),
                          _lineSetting(),
                          categorySettingandPolicies(
                            padding: 29.0,
                            txt: "Terms & Policies",
                            image:
                                "lib/Screen/FullApps/Marketplace/assets/icon/terms.jpg",
                            tap: () {
//                        Navigator.of(context).push(PageRouteBuilder(
//                            pageBuilder: (_, __, ___) => new aboutApps()));
                            },
                          ),
//                          _lineSetting(),
                          SizedBox(
                            height: 10.0,
                          ),
                        ],
                      ),
                      _line(),
                      Container(
                        child: GestureDetector(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 29.0, top: 14.0, bottom: 14.0),
                            child: Row(
                              children: <Widget>[
                                Image.asset(
                                  "lib/Screen/FullApps/Marketplace/assets/icon/logout.jpg",
                                  height: 27.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 27.0),
                                  child: Text(
                                    'Logout',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          onTap: () async {},
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 20.0)),
                    ],
                  ),
                ),
              ],
            ),
          ),

          /// Get a class AppbarGradient
          Container(
            height: 200.0,
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: statusBarHeight),
                  height: 58.0 + statusBarHeight,
                  width: double.infinity,
                  decoration: BoxDecoration(

                      /// gradient in appbar
                      gradient: LinearGradient(
                          colors: [
                            const Color(0xFFA3BDED),
                            const Color(0xFF6991C7),
                          ],
                          begin: const FractionalOffset(0.0, 0.0),
                          end: const FractionalOffset(1.0, 0.0),
                          stops: [0.0, 1.0],
                          tileMode: TileMode.clamp)),
                  child: Center(
                      child: Text(
                    "Profile",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontFamily: "Sofia",
                        fontWeight: FontWeight.w600),
                  )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// Component category class to set list
class category extends StatelessWidget {
  @override
  String? txt, image;
  GestureTapCallback? tap;
  double? padding;

  category({this.txt, this.image, this.tap, this.padding});

  Widget build(BuildContext context) {
    return InkWell(
      onTap: tap,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 30.0),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: padding!),
                  child: Image.asset(
                    image!,
                    height: 25.0,
                  ),
                ),
                Text(
                  txt!,
//                  style: _txtCategory,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// Component category class to set list
class categorySettingandPolicies extends StatelessWidget {
  @override
  String? txt, image;
  GestureTapCallback? tap;
  double? padding;

  categorySettingandPolicies({this.txt, this.image, this.tap, this.padding});

  Widget build(BuildContext context) {
    return InkWell(
      onTap: tap,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 0.0),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: padding!),
                  child: Image.asset(
                    image!,
                    height: 25.0,
                  ),
                ),
                Text(
                  txt!,
//                  style: _txtCategory,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _line() {
  return Padding(
    padding: const EdgeInsets.only(top: 20.0, left: 85.0, right: 30.0),
    child: Divider(
      color: Colors.black45,
      height: 2.0,
    ),
  );
}

class CustomInput extends StatefulWidget {
  final TextEditingController? controller;
  final TextInputType? inputType;
  final String? hintText;
  final Function? onChanged;
  final bool? obscureText;
  final TextAlign? textAlign;

  CustomInput(
      {this.controller,
      this.onChanged,
      this.inputType,
      this.hintText,
      this.obscureText,
      this.textAlign});

  @override
  _CustomInputState createState() => _CustomInputState(
      controller: controller,
      inputType: inputType,
      hintText: hintText,
      obscureText: obscureText,
      textAlign: textAlign);
}

class _CustomInputState extends State<CustomInput> {
  final TextEditingController? controller;
  final TextInputType? inputType;
  final String? hintText;
  final Function? onChanged;
  final bool? obscureText;
  final TextAlign? textAlign;

  _CustomInputState(
      {this.controller,
      this.onChanged,
      this.inputType,
      this.hintText,
      this.obscureText,
      this.textAlign});

  bool? isEnable;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        textAlign: textAlign!,
        obscureText: obscureText!,
        controller: controller,
        keyboardType: inputType,
        autocorrect: false,
        autofocus: false,
        onChanged: onChanged as void Function(String)?,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(8.0),
          filled: true,
          fillColor: Colors.white70,
          hintText: hintText,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(0.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(0.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(0.0),
          ),
        ),
      ),
    );
  }
}

Widget _lineSetting() {
  return Padding(
    padding: const EdgeInsets.only(left: 48.0, right: 30.0, top: 10.0),
    child: Divider(
      height: 2.0,
      color: Colors.black54,
    ),
  );
}
