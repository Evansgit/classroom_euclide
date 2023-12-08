import 'package:flutter/material.dart';

class locationLayout extends StatefulWidget {
  @override
  _locationLayoutState createState() => _locationLayoutState();
}

class _locationLayoutState extends State<locationLayout> {
  @override
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
                  padding: const EdgeInsets.only(top: 90.0),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 0.0,
                    right: 0.0,
                  ),
                  child: Container(
                    height: 800.0,
                    width: double.infinity,
                    child: Image.asset(
                      "lib/Screen/FullApps/Marketplace/assets/img/mapsDummy.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            ),
          ),

          /// Get a class AppbarGradient
          /// This is a Appbar in home activity
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: InkWell(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              "Cancel",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.0),
                            )),
                      ),
                      Center(
                          child: Text(
                        "Pick a location",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.0,
                            fontFamily: "Sofia",
                            fontWeight: FontWeight.w600),
                      )),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Text(
                          "Select",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16.0),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: media.padding.left + 15,
                      right: media.padding.left + 15,
                      bottom: 10.0,
                      top: 10.0),
                  height: 45.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF656565).withOpacity(0.15),
                          blurRadius: 4.0,
                          spreadRadius: 1.0,
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      shape: BoxShape.rectangle),
                  child: Theme(
                    data: ThemeData(hintColor: Colors.transparent),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 3.0),
                      child: TextField(
                        onTap: () {
                          print('search ONtapped');
                        },
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(left: 7.0),
                            child: Icon(
                              Icons.search,
                              color: Colors.black54,
                              size: 20.0,
                            ),
                          ),
                          contentPadding: EdgeInsets.only(top: 10.0),
                          hintText: 'Search',
                          hintStyle: TextStyle(
                              fontFamily: "Sofia",
                              fontWeight: FontWeight.w500,
                              color: Colors.black45,
                              fontSize: 15.0,
                              letterSpacing: 1.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Center(
                child: Icon(
              Icons.location_on,
              size: 45.0,
              color: Colors.blueAccent,
            )),
          )
        ],
      ),
    );
  }
}
