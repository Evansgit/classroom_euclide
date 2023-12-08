import 'package:flutter/material.dart';

import 'Home/Connections.dart';
import 'Home/CredentialList.dart';
import 'Home/DrawerDetail.dart';
import 'Home/EducationConnection.dart';
import 'Home/FaceIDScreen.dart';
import 'Home/Home2.dart';
import 'Home/HomePin.dart';
import 'Home/HomeScreen.dart';
import 'Opening/Profile.dart';

class HomeListPlane extends StatefulWidget {
  HomeListPlane({Key? key}) : super(key: key);

  @override
  _HomeListPlaneState createState() => _HomeListPlaneState();
}

class _HomeListPlaneState extends State<HomeListPlane> {
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
          "Home List Plane",
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
                      pageBuilder: (_, __, ___) => Connections()));
                },
                child: card("Connections", Color(0xFF81D4FA))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => CredentialList()));
                },
                child: card("Credential List", Color(0xFF81D4FA))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => DrawerDetail()));
                },
                child: card("Drawer Detail", Color(0xFF81D4FA))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => EducationConnection()));
                },
                child: card("Education Connection", Color(0xFF81D4FA))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => FaceIDScreen()));
                },
                child: card("Face ID", Color(0xFF81D4FA))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      PageRouteBuilder(pageBuilder: (_, __, ___) => Home2()));
                },
                child: card("Home Concept 2", Color(0xFF81D4FA))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      PageRouteBuilder(pageBuilder: (_, __, ___) => HomePin()));
                },
                child: card("Home Pin", Color(0xFF81D4FA))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => HomeScreen()));
                },
                child: card("Home Screen", Color(0xFF81D4FA))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      PageRouteBuilder(pageBuilder: (_, __, ___) => Profile()));
                },
                child: card("Profile", Color(0xFF81D4FA))),
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
