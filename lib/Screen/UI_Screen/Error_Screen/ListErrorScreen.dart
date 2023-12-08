import 'package:crypto_template/Screen/UI_Screen/News_Apps/models/News/newsHeaderModel.dart';
import 'package:flutter/material.dart';

import 'Error_Screen_List/ErrorScreen1.dart';
import 'Error_Screen_List/ErrorScreen10.dart';
import 'Error_Screen_List/ErrorScreen11.dart';
import 'Error_Screen_List/ErrorScreen12.dart';
import 'Error_Screen_List/ErrorScreen13.dart';
import 'Error_Screen_List/ErrorScreen14.dart';
import 'Error_Screen_List/ErrorScreen15.dart';
import 'Error_Screen_List/ErrorScreen16.dart';
import 'Error_Screen_List/ErrorScreen17.dart';
import 'Error_Screen_List/ErrorScreen18.dart';
import 'Error_Screen_List/ErrorScreen19.dart';
import 'Error_Screen_List/ErrorScreen2.dart';
import 'Error_Screen_List/ErrorScreen20.dart';
import 'Error_Screen_List/ErrorScreen21.dart';
import 'Error_Screen_List/ErrorScreen22.dart';
import 'Error_Screen_List/ErrorScreen23.dart';
import 'Error_Screen_List/ErrorScreen24.dart';
import 'Error_Screen_List/ErrorScreen25.dart';
import 'Error_Screen_List/ErrorScreen26.dart';
import 'Error_Screen_List/ErrorScreen27.dart';
import 'Error_Screen_List/ErrorScreen28.dart';
import 'Error_Screen_List/ErrorScreen29.dart';
import 'Error_Screen_List/ErrorScreen3.dart';
import 'Error_Screen_List/ErrorScreen30.dart';
import 'Error_Screen_List/ErrorScreen31.dart';
import 'Error_Screen_List/ErrorScreen32.dart';
import 'Error_Screen_List/ErrorScreen33.dart';
import 'Error_Screen_List/ErrorScreen34.dart';
import 'Error_Screen_List/ErrorScreen35.dart';
import 'Error_Screen_List/ErrorScreen36.dart';
import 'Error_Screen_List/ErrorScreen37.dart';
import 'Error_Screen_List/ErrorScreen38.dart';
import 'Error_Screen_List/ErrorScreen39.dart';
import 'Error_Screen_List/ErrorScreen4.dart';
import 'Error_Screen_List/ErrorScreen40.dart';
import 'Error_Screen_List/ErrorScreen5.dart';
import 'Error_Screen_List/ErrorScreen6.dart';
import 'Error_Screen_List/ErrorScreen7.dart';
import 'Error_Screen_List/ErrorScreen8.dart';
import 'Error_Screen_List/ErrorScreen9.dart';

class ListErrorScreen extends StatefulWidget {
  ListErrorScreen({Key? key}) : super(key: key);

  @override
  _ListErrorScreenState createState() => _ListErrorScreenState();
}

class _ListErrorScreenState extends State<ListErrorScreen> {
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
          "Error Screen List",
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
                      pageBuilder: (_, __, ___) => ErrorScreen1()));
                },
                child: card("Error Screen 1", Color(0xFFF4A9A8))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ErrorScreen2()));
                },
                child: card("Error Screen 2", Color(0xFFF4A9A8))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ErrorScreen3()));
                },
                child: card("Error Screen 3", Color(0xFFF4A9A8))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ErrorScreen4()));
                },
                child: card("Error Screen 4", Color(0xFFF4A9A8))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ErrorScreen5()));
                },
                child: card("Error Screen 5", Color(0xFFF4A9A8))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ErrorScreen6()));
                },
                child: card("Error Screen 6", Color(0xFFF4A9A8))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ErrorScreen7()));
                },
                child: card("Error Screen 7", Color(0xFFF4A9A8))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ErrorScreen8()));
                },
                child: card("Error Screen 8", Color(0xFFF4A9A8))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ErrorScreen9()));
                },
                child: card("Error Screen 9", Color(0xFFF4A9A8))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ErrorScreen10()));
                },
                child: card("Error Screen 10", Color(0xFFF4A9A8))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ErrorScreen11()));
                },
                child: card("Error Screen 11", Color(0xFFF4A9A8))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ErrorScreen12()));
                },
                child: card("Error Screen 12", Color(0xFFF4A9A8))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ErrorScreen13()));
                },
                child: card("Error Screen 13", Color(0xFFF4A9A8))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ErrorScreen14()));
                },
                child: card("Error Screen 14", Color(0xFFF4A9A8))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ErrorScreen15()));
                },
                child: card("Error Screen 15", Color(0xFFF4A9A8))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ErrorScreen16()));
                },
                child: card("Error Screen 16", Color(0xFFF4A9A8))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ErrorScreen17()));
                },
                child: card("Error Screen 17", Color(0xFFF4A9A8))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ErrorScreen18()));
                },
                child: card("Error Screen 18", Color(0xFFF4A9A8))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ErrorScreen19()));
                },
                child: card("Error Screen 19", Color(0xFFF4A9A8))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ErrorScreen20()));
                },
                child: card("Error Screen 20", Color(0xFFF4A9A8))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ErrorScreen21()));
                },
                child: card("Error Screen 21", Color(0xFFF4A9A8))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ErrorScreen22()));
                },
                child: card("Error Screen 22", Color(0xFFF4A9A8))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ErrorScreen23()));
                },
                child: card("Error Screen 23", Color(0xFFF4A9A8))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ErrorScreen24()));
                },
                child: card("Error Screen 24", Color(0xFFF4A9A8))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ErrorScreen25()));
                },
                child: card("Error Screen 25", Color(0xFFF4A9A8))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ErrorScreen26()));
                },
                child: card("Error Screen 26", Color(0xFFF4A9A8))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ErrorScreen27()));
                },
                child: card("Error Screen 27", Color(0xFFF4A9A8))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ErrorScreen28()));
                },
                child: card("Error Screen 28", Color(0xFFF4A9A8))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ErrorScreen29()));
                },
                child: card("Error Screen 29", Color(0xFFF4A9A8))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ErrorScreen30()));
                },
                child: card("Error Screen 30", Color(0xFFF4A9A8))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ErrorScreen31()));
                },
                child: card("Error Screen 31", Color(0xFFF4A9A8))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ErrorScreen32()));
                },
                child: card("Error Screen 32", Color(0xFFF4A9A8))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ErrorScreen33()));
                },
                child: card("Error Screen 33", Color(0xFFF4A9A8))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ErrorScreen34()));
                },
                child: card("Error Screen 34", Color(0xFFF4A9A8))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ErrorScreen35()));
                },
                child: card("Error Screen 35", Color(0xFFF4A9A8))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ErrorScreen36()));
                },
                child: card("Error Screen 36", Color(0xFFF4A9A8))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ErrorScreen37()));
                },
                child: card("Error Screen 37", Color(0xFFF4A9A8))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ErrorScreen38()));
                },
                child: card("Error Screen 38", Color(0xFFF4A9A8))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ErrorScreen39()));
                },
                child: card("Error Screen 39", Color(0xFFF4A9A8))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ErrorScreen40()));
                },
                child: card("Error Screen 40", Color(0xFFF4A9A8))),
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
