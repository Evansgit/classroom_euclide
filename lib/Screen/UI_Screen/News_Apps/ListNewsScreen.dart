import 'package:crypto_template/Screen/UI_Screen/News_Apps/models/News/newsHeaderModel.dart';
import 'package:crypto_template/Screen/UI_Screen/News_Apps/pages/HomePage2.dart';
import 'package:crypto_template/Screen/UI_Screen/News_Apps/pages/Profile.dart';
import 'package:crypto_template/Screen/UI_Screen/News_Apps/pages/category_selection.dart';
import 'package:crypto_template/Screen/UI_Screen/News_Apps/pages/home.dart';
import 'package:crypto_template/Screen/UI_Screen/News_Apps/pages/news_header_slider_detail.dart';
import 'package:flutter/material.dart';

class ListNewsScreenCard extends StatefulWidget {
  ListNewsScreenCard({Key? key}) : super(key: key);

  @override
  _ListNewsScreenCardState createState() => _ListNewsScreenCardState();
}

class _ListNewsScreenCardState extends State<ListNewsScreenCard> {
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
          "News List Screen",
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
                      pageBuilder: (_, __, ___) => CategorySelection()));
                },
                child: card("Home News Screen", Color(0xFF94D0CC))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => DetailNews()));
                },
                child: card("Detail News Screen", Color(0xFF94D0CC))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ProfileNews()));
                },
                child: card("Profile News Screen", Color(0xFF94D0CC))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      PageRouteBuilder(pageBuilder: (_, __, ___) => news()));
                },
                child: card("Home 2 News Screen", Color(0xFF94D0CC))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => new headerSliderDetail(
                              item: sampleItems[1],
                            ),
                        transitionDuration: Duration(milliseconds: 600),
                        transitionsBuilder:
                            (_, Animation<double> animation, __, Widget child) {
                          return Opacity(
                            opacity: animation.value,
                            child: child,
                          );
                        }),
                  );
                },
                child: card("Detail 2 News Screen", Color(0xFF94D0CC))),
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
