import 'package:flutter/material.dart';
import 'package:crypto_template/Screen/FullApps/Marketplace/pages/UI/Layout_Component/Search_Layout/filters.dart';

class searchLayout extends StatefulWidget {
  @override
  _searchLayoutState createState() => _searchLayoutState();
}

class _searchLayoutState extends State<searchLayout> {
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
                  padding: const EdgeInsets.only(top: 110.0),
                ),
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          )),
                      Container(
                        margin: EdgeInsets.only(bottom: 10.0, top: 5.0),
                        height: 57.0,
                        width: 250.0,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                            shape: BoxShape.rectangle),
                        child: TextField(
                          onTap: () {
                            print('search ONtapped');
                          },
                          decoration: InputDecoration(
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: Icon(
                                Icons.search,
                                color: Colors.black54,
                                size: 25.0,
                              ),
                            ),
                            contentPadding: EdgeInsets.only(top: 0.0),
                            hintText: 'Search',
                            hintStyle: TextStyle(
                                fontFamily: "Sofia",
                                fontWeight: FontWeight.w500,
                                color: Colors.black45,
                                fontSize: 16.0,
                                letterSpacing: 1.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.of(context).push(new PageRouteBuilder(
                                opaque: true,
                                transitionDuration:
                                    const Duration(milliseconds: 400),
                                pageBuilder: (BuildContext context, _, __) {
                                  return new filters();
                                },
                                transitionsBuilder: (_,
                                    Animation<double> animation,
                                    __,
                                    Widget child) {
                                  return new SlideTransition(
                                    child: child,
                                    position: new Tween<Offset>(
                                      begin: const Offset(1.0, 0.0),
                                      end: Offset.zero,
                                    ).animate(animation),
                                  );
                                }));
                          },
                          child: Icon(
                            Icons.filter_list,
                            color: Colors.white,
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
