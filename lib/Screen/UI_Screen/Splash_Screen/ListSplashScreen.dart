import 'package:crypto_template/Screen/UI_Screen/News_Apps/models/News/newsHeaderModel.dart';
import 'package:crypto_template/Screen/UI_Screen/Splash_Screen/SplashScreenList/SplashScreen10.dart';
import 'package:crypto_template/Screen/UI_Screen/Splash_Screen/SplashScreenList/SplashScreen12.dart';
import 'package:crypto_template/Screen/UI_Screen/Splash_Screen/SplashScreenList/SplashScreen13.dart';
import 'package:crypto_template/Screen/UI_Screen/Splash_Screen/SplashScreenList/SplashScreen17.dart';
import 'package:crypto_template/Screen/UI_Screen/Splash_Screen/SplashScreenList/SplashScreen8.dart';
import 'package:crypto_template/Screen/UI_Screen/Splash_Screen/SplashScreenList/SplashScreen9.dart';
import 'package:flutter/material.dart';

import 'SplashScreenList/SplashScreen1.dart';
import 'SplashScreenList/SplashScreen11.dart';
import 'SplashScreenList/SplashScreen14.dart';
import 'SplashScreenList/SplashScreen15.dart';
import 'SplashScreenList/SplashScreen16.dart';
import 'SplashScreenList/SplashScreen18.dart';
import 'SplashScreenList/SplashScreen19.dart';
import 'SplashScreenList/SplashScreen2.dart';
import 'SplashScreenList/SplashScreen20.dart';
import 'SplashScreenList/SplashScreen21.dart';
import 'SplashScreenList/SplashScreen22.dart';
import 'SplashScreenList/SplashScreen23.dart';
import 'SplashScreenList/SplashScreen24.dart';
import 'SplashScreenList/SplashScreen25.dart';
import 'SplashScreenList/SplashScreen26.dart';
import 'SplashScreenList/SplashScreen27.dart';
import 'SplashScreenList/SplashScreen28.dart';
import 'SplashScreenList/SplashScreen29.dart';
import 'SplashScreenList/SplashScreen3.dart';
import 'SplashScreenList/SplashScreen30.dart';
import 'SplashScreenList/SplashScreen31.dart';
import 'SplashScreenList/SplashScreen32.dart';
import 'SplashScreenList/SplashScreen33.dart';
import 'SplashScreenList/SplashScreen34.dart';
import 'SplashScreenList/SplashScreen35.dart';
import 'SplashScreenList/SplashScreen36.dart';
import 'SplashScreenList/SplashScreen4.dart';
import 'SplashScreenList/SplashScreen6.dart';
import 'SplashScreenList/SplashScreen7.dart';
import 'SplashScreenList/SplashScreen5.dart';

class ListSplashScreen extends StatefulWidget {
  ListSplashScreen({Key? key}) : super(key: key);

  @override
  _ListSplashScreenState createState() => _ListSplashScreenState();
}

class _ListSplashScreenState extends State<ListSplashScreen> {
  @override
  newsHeader? item;
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
          "Splash Screen List",
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
                      pageBuilder: (_, __, ___) => SplashScreen1()));
                },
                child: card("Splash Screen 1", Color(0xFF47597E))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SplashScreen2()));
                },
                child: card("Splash Screen 2", Color(0xFF47597E))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SplashScreen3()));
                },
                child: card("Splash Screen 3", Color(0xFF47597E))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SplashScreen4()));
                },
                child: card("Splash Screen 4", Color(0xFF47597E))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SplashScreen5()));
                },
                child: card("Splash Screen 5", Color(0xFF47597E))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SplashScreen6()));
                },
                child: card("Splash Screen 6", Color(0xFF47597E))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SplashScreen7()));
                },
                child: card("Splash Screen 7", Color(0xFF47597E))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SplashScreen8()));
                },
                child: card("Splash Screen 8", Color(0xFF47597E))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SplashScreen9()));
                },
                child: card("Splash Screen 9", Color(0xFF47597E))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SplashScreen10()));
                },
                child: card("Splash Screen 10", Color(0xFF47597E))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SplashScreen11()));
                },
                child: card("Splash Screen 11", Color(0xFF47597E))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SplashScreen12()));
                },
                child: card("Splash Screen 12", Color(0xFF47597E))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SplashScreen13()));
                },
                child: card("Splash Screen 13", Color(0xFF47597E))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SplashScreen14()));
                },
                child: card("Splash Screen 14", Color(0xFF47597E))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SplashScreen15()));
                },
                child: card("Splash Screen 15", Color(0xFF47597E))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SplashScreen16()));
                },
                child: card("Splash Screen 16", Color(0xFF47597E))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SplashScreen17()));
                },
                child: card("Splash Screen 17", Color(0xFF47597E))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SplashScreen18()));
                },
                child: card("Splash Screen 18", Color(0xFF47597E))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SplashScreen19()));
                },
                child: card("Splash Screen 19", Color(0xFF47597E))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SplashScreen20()));
                },
                child: card("Splash Screen 20", Color(0xFF47597E))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SplashScreen21()));
                },
                child: card("Splash Screen 21", Color(0xFF47597E))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SplashScreen22()));
                },
                child: card("Splash Screen 22", Color(0xFF47597E))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SplashScreen23()));
                },
                child: card("Splash Screen 23", Color(0xFF47597E))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SplashScreen24()));
                },
                child: card("Splash Screen 24", Color(0xFF47597E))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SplashScreen25()));
                },
                child: card("Splash Screen 25", Color(0xFF47597E))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SplashScreen26()));
                },
                child: card("Splash Screen 26", Color(0xFF47597E))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SplashScreen27()));
                },
                child: card("Splash Screen 27", Color(0xFF47597E))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SplashScreen28()));
                },
                child: card("Splash Screen 28", Color(0xFF47597E))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SplashScreen29()));
                },
                child: card("Splash Screen 29", Color(0xFF47597E))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SplashScreen30()));
                },
                child: card("Splash Screen 30", Color(0xFF47597E))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SplashScreen31()));
                },
                child: card("Splash Screen 31", Color(0xFF47597E))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SplashScreen32()));
                },
                child: card("Splash Screen 32", Color(0xFF47597E))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SplashScreen33()));
                },
                child: card("Splash Screen 33", Color(0xFF47597E))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SplashScreen34()));
                },
                child: card("Splash Screen 34", Color(0xFF47597E))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SplashScreen35()));
                },
                child: card("Splash Screen 35", Color(0xFF47597E))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SplashScreen36()));
                },
                child: card("Splash Screen 36", Color(0xFF47597E))),
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
