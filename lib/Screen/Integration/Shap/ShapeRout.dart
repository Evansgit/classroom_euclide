import 'package:flutter/material.dart';

import 'AppbarBottombarShapActivity.dart';
import 'ButtonTextFieldShapActivity.dart';
import 'DifferentShapActivity.dart';

class ShapeList extends StatefulWidget {
  ShapeList({Key? key}) : super(key: key);

  @override
  _ShapeListState createState() => _ShapeListState();
}

class _ShapeListState extends State<ShapeList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Shape List",
          style: TextStyle(
              fontFamily: "Sofia",
              fontWeight: FontWeight.w700,
              color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) =>
                          AppbarBottombarShapActivity()));
                },
                child: card("App Bar Botoom Bar", Color(0xFFF6C6EA))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) =>
                          ButtonTextFieldShapActivity()));
                },
                child: card("Button Shap", Color(0xFFFFEAC9))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => DifferentShapActivity()));
                },
                child:
                    card("Different Shap", Color.fromARGB(255, 144, 215, 51))),
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
