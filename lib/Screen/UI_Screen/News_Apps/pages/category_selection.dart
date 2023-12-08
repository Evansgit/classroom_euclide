import 'package:crypto_template/Screen/UI_Screen/News_Apps/widgets/CategoryList.dart';
import 'package:crypto_template/Screen/UI_Screen/News_Apps/widgets/HomeNews.dart';
import 'package:crypto_template/Screen/UI_Screen/News_Apps/widgets/Popular.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:crypto_template/Screen/FullApps/VinckierFoods/Style/ThemeT4.dart'
    as Style;

class CategorySelection extends StatefulWidget {
  @override
  _CategorySelectionState createState() => _CategorySelectionState();
}

class _CategorySelectionState extends State<CategorySelection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(10.0),
        child: AppBar(
           
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Hello Luffy",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontFamily: "Sofia",
                      fontSize: 33.0),
                ),
                Stack(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 1.0, top: 3.5),
                      child: Icon(
                        EvaIcons.bellOutline,
                        size: 25.0,
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 0,
                      child: Container(
                        height: 15.0,
                        width: 15.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFFFC478),
                          border: Border.all(width: 1.0, color: Colors.white),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 1.0, bottom: 1.0),
                              child: Text(
                                "2",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 7.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    border: Border.all(width: 1.0, color: Colors.grey[300]!)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      EvaIcons.searchOutline,
                      color: Color(0xFFFFC478),
                    ),
                    SizedBox(
                      width: 0.0,
                    ),
                    Text(
                      "Find article do you love",
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontFamily: "Sofia",
                          fontSize: 16.0),
                    ),
                    SizedBox(
                      width: 35.0,
                    ),
                    Icon(
                      EvaIcons.moreHorizontalOutline,
                      color: Color(0xFFFFC478),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 140,
            child: HomeHeader(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
            child: Text(
              "Trending News",
              style: TextStyle(
                  fontSize: 19.0,
                  color: Style.Colors.titleColor,
                  fontFamily: "Sofia",
                  fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            height: 295,
            child: CategoryList(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
            child: Text(
              "Popular News",
              style: TextStyle(
                  fontSize: 19.0,
                  color: Style.Colors.titleColor,
                  fontFamily: "Sofia",
                  fontWeight: FontWeight.w700),
            ),
          ),
          Popular()
        ],
      ),
    );
  }
}
