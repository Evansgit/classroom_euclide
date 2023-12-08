import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crypto_template/Screen/Integration/SearchFirebase/Search/searchBoxEmpty.dart';
import 'package:flutter/material.dart';

import '../../../../Library/loader_animation/dot.dart';
import '../../../../Library/loader_animation/loader.dart';

class SearchFirebase extends StatefulWidget {
  SearchFirebase();

  @override
  _SearchFirebaseState createState() => _SearchFirebaseState();
}

class _SearchFirebaseState extends State<SearchFirebase> {
  late TextEditingController _addNameController;
  String? SearchFirebaseString;

  bool load = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      setState(() {
        load = false;
      });
    });
    _addNameController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.orangeAccent,
        ),
        title: Text(
          "Search",
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 19.0,
              color: Colors.black54,
              fontFamily: "Sofia"),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.only(top: 25.0, left: 20.0, right: 50.0),
              child: Text(
                "What would you like to search ?",
                style: TextStyle(
                    letterSpacing: 0.1,
                    fontWeight: FontWeight.w600,
                    fontSize: 27.0,
                    color: Colors.black54,
                    fontFamily: "Sofia"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 25.0, right: 20.0, left: 20.0, bottom: 20.0),
              child: Container(
                height: 50.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 15.0,
                          spreadRadius: 0.0)
                    ]),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      right: 10.0,
                    ),
                    child: Theme(
                      data: ThemeData(hintColor: Colors.transparent),
                      child: TextFormField(
                        onChanged: (value) {
                          setState(() {
                            SearchFirebaseString = value.toLowerCase();
                          });
                        },
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(
                              Icons.search,
                              color: Colors.orangeAccent,
                              size: 28.0,
                            ),
                            hintText: "Search",
                            hintStyle: TextStyle(
                                color: Colors.black38,
                                fontFamily: "Sofia",
                                fontWeight: FontWeight.w400)),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            StreamBuilder<QuerySnapshot>(
              stream: (SearchFirebaseString == null ||
                      SearchFirebaseString?.trim() == "")
                  ? FirebaseFirestore.instance.collection("search").snapshots()
                  : FirebaseFirestore.instance
                      .collection("search")
                      .where("value", arrayContains: SearchFirebaseString)
                      .snapshots(),
              builder: (context, snapshot) {
                if (snapshot.hasError) return Text('Error: ${snapshot.error}');
                if (SearchFirebaseString == null) return searchBoxEmpty();
                if (SearchFirebaseString?.trim() == "") return searchBoxEmpty();
                if (snapshot.data!.docs.isEmpty) return noItem();
                switch (snapshot.connectionState) {
                  case ConnectionState.waiting:
                    return Padding(
                      padding: const EdgeInsets.only(top: 110.0),
                      child: Center(
                          child: ColorLoader5(
                        dotOneColor: Colors.red,
                        dotTwoColor: Colors.blueAccent,
                        dotThreeColor: Colors.green,
                        dotType: DotType.circle,
                        dotIcon: Icon(Icons.adjust),
                        duration: Duration(seconds: 1),
                      )),
                    );
                  default:
                    return new Column(
                        children: snapshot.data!.docs
                            .map((DocumentSnapshot document) {
                      return Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20.0, top: 15.0, bottom: 15.0),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12.withOpacity(0.1),
                                    blurRadius: 1.0,
                                    spreadRadius: 1.0)
                              ],
                            ),
                            child: Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20.0, left: 20.0, bottom: 20.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text("Value :  "),
                                          Container(
                                            width: 174.0,
                                            child: Text(
                                              document['title'],
                                              style: TextStyle(
                                                fontFamily: "Sofia",
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }).toList());
                }
              },
            )
          ],
        ),
      ),
    );
  }
}

///
///
/// If no item cart this class showing
///
class noItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      width: 500.0,
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
                padding:
                    EdgeInsets.only(top: mediaQueryData.padding.top + 30.0)),
            Image.asset(
              "assets/images/no_result.png",
              height: 200.0,
            ),
            Padding(padding: EdgeInsets.only(bottom: 10.0)),
            Text(
              "No Matching Views ",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 17.5,
                  color: Colors.black26.withOpacity(0.3),
                  fontFamily: "Popins"),
            ),
          ],
        ),
      ),
    );
  }
}
