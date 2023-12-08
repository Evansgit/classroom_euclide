import 'package:crypto_template/Screen/UI_Screen/Hotel_Apps/pages/booking_screen.dart';
import 'package:crypto_template/Screen/UI_Screen/Hotel_Apps/pages/home.dart';
import 'package:crypto_template/Screen/UI_Screen/Hotel_Apps/pages/register.dart';
import 'package:crypto_template/Screen/UI_Screen/Hotel_Apps/pages/single_property_page.dart';
import 'package:crypto_template/Screen/UI_Screen/Hotel_Apps/widgets/app_bottom_navigation.dart';
import 'package:flutter/material.dart';

class ListHotelScreenCard extends StatefulWidget {
  ListHotelScreenCard({Key? key}) : super(key: key);

  @override
  _ListHotelScreenCardState createState() => _ListHotelScreenCardState();
}

class _ListHotelScreenCardState extends State<ListHotelScreenCard> {
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
          "Hotel Screen List",
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
                      pageBuilder: (_, __, ___) => BookingScreen()));
                },
                child: card("Booking Screen", Color(0xFFE93B81))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => AppBottomNavigation()));
                },
                child: card("Home Screen", Color(0xFFE93B81))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      PageRouteBuilder(pageBuilder: (_, __, ___) => Home()));
                },
                child: card("Get Started Screen", Color(0xFFE93B81))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => Register()));
                },
                child: card("Register Screen", Color(0xFFE93B81))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SinglePropertyPage()));
                },
                child: card("Detail Screen", Color(0xFFE93B81))),
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
