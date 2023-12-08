import 'package:crypto_template/Screen/FullApps/Coinluv/Component/Style.dart';
import 'package:crypto_template/Screen/FullApps/Coinluv/UI/Home/search.dart';
import 'package:flutter/material.dart';

import '../../../../../Library/Carousel/CarouselPro.dart';
import 'Exchange_Screen/exchange__send.dart';
import 'ICO Search/icoSearch.dart';
import 'News_Screen_layout/New.dart';

class dashboard extends StatefulWidget {
  @override
  _dashboardState createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStyle.colorBackgroundBlack,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: ColorStyle.colorBackgroundBlack,
        title: Text(
          "Conzzy",
          style: TextStyle(fontFamily: "Sofia", color: Colors.white),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        actionsIconTheme: IconThemeData(color: Colors.white),
        actions: <Widget>[
          InkWell(
              onTap: () {
                Navigator.of(context).push(PageRouteBuilder(
                    pageBuilder: (_, __, ___) => new search()));
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ))
        ],
      ),
      drawer: DrawerLayout(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.only(top: 5.0, left: 10.0, bottom: 5.0),
                child: Text(
                  "Market Summary",
                  style: txtStyle.txtHeader,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 195.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 1.0,
                        blurRadius: 1.0,
                        color: ColorStyle.colorOrangeBackground,
                      )
                    ],
                    gradient: LinearGradient(colors: [
                      Colors.deepOrangeAccent,
                      ColorStyle.colorOrangeBackground
                    ]),
//                border: Border.all(width: 1.5,color: ColorStyle.colorOrangeBackground)
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 15.0, left: 20.0, right: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "BTC Dominance",
                              style: txtStyle.txtLight,
                            ),
                            Text(
                              "51.5%",
                              style: txtStyle.txtMedium,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 15.0, left: 20.0, right: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Active Currencies",
                              style: txtStyle.txtLight,
                            ),
                            Text(
                              "3400",
                              style: txtStyle.txtMedium,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 15.0, left: 20.0, right: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "ICOs in Track",
                              style: txtStyle.txtLight,
                            ),
                            Text(
                              "5156",
                              style: txtStyle.txtMedium,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Container(
                        height: 0.3,
                        width: double.infinity,
                        color: ColorStyle.colorBackgroundBlack,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 0.0, left: 20.0, right: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Total Market Cap",
                              style: txtStyle.txtLight,
                            ),
                            Text(
                              "~ 11.03 B",
                              style: txtStyle.txtMedium,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 25.0, left: 10.0, bottom: 5.0),
                child: Text(
                  "Top Gainers",
                  style: txtStyle.txtHeader,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 148.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 1.0,
                          blurRadius: 1.0,
                          color: ColorStyle.colorOrangeBackground,
                        )
                      ],
                      color: ColorStyle.colorSenondaryBackground
//                border: Border.all(width: 1.5,color: ColorStyle.colorOrangeBackground)
                      ),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 15.0, left: 20.0, right: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Bitcoin (BTC)",
                              style: txtStyle.txtLight,
                            ),
                            Text(
                              "+2.34%",
                              style: txtStyle.txtMedium,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 15.0, left: 20.0, right: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Etherum (ETH)",
                              style: txtStyle.txtLight,
                            ),
                            Text(
                              "+2.21%",
                              style: txtStyle.txtMedium,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 15.0, left: 20.0, right: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Litecoin (LTC)",
                              style: txtStyle.txtLight,
                            ),
                            Text(
                              "+1.02%",
                              style: txtStyle.txtMedium,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 10.0),
                child: Text(
                  "HOT ICOs",
                  style: txtStyle.txtHeader,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 90.0,
                  child: new Carousel(
                    boxFit: BoxFit.cover,
                    dotSize: 0.0,
                    dotSpacing: 16.0,
                    dotBgColor: Colors.transparent,
                    showIndicator: false,
                    overlayShadow: false,
                    images: [
                      Container(
                        height: 90.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: ColorStyle.colorSenondaryBackground),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: Image.network(
                                "https://www.cryptocurrencer.com/wp-content/uploads/2018/01/CRYPTOCURRENCY-bitcoin-logo.jpg",
                                height: 32.0,
                                width: 32.0,
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Title",
                                  style: txtStyle.txtHeader,
                                ),
                                Container(
                                    width: 230.0,
                                    child: Text(
                                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry printing and typesetting industry",
                                      style: txtStyle.txtLight.copyWith(
                                          fontWeight: FontWeight.w200),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ))
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 90.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: ColorStyle.colorSenondaryBackground),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: Image.network(
                                "https://www.cryptocurrencer.com/wp-content/uploads/2018/01/CRYPTOCURRENCY-bitcoin-logo.jpg",
                                height: 32.0,
                                width: 32.0,
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Title",
                                  style: txtStyle.txtHeader,
                                ),
                                Container(
                                    width: 230.0,
                                    child: Text(
                                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry printing and typesetting industry",
                                      style: txtStyle.txtLight.copyWith(
                                          fontWeight: FontWeight.w200),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ))
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 90.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: ColorStyle.colorSenondaryBackground),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: Image.network(
                                "https://www.cryptocurrencer.com/wp-content/uploads/2018/01/CRYPTOCURRENCY-bitcoin-logo.jpg",
                                height: 32.0,
                                width: 32.0,
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Title",
                                  style: txtStyle.txtHeader,
                                ),
                                Container(
                                    width: 230.0,
                                    child: Text(
                                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry printing and typesetting industry",
                                      style: txtStyle.txtLight.copyWith(
                                          fontWeight: FontWeight.w200),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ))
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                    onImageChange: (int, inta) {},
                    onImageTap: (int) {},
                    overlayShadowColors: Colors.white,
                    radius: Radius.circular(8.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "TOP TAGS",
                  style: txtStyle.txtHeader,
                ),
              ),
              Container(
                height: 37.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    tags("Label 1"),
                    tags("Label 2"),
                    tags("Label 3"),
                    tags("Label 4"),
                    tags("Label 5"),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget tags(String title) {
  return Padding(
    padding: const EdgeInsets.only(left: 7.0),
    child: Container(
      height: 25.0,
      width: 75.0,
      decoration: BoxDecoration(color: ColorStyle.colorSenondaryBackground),
      child: Center(
          child: Text(
        title,
        style: txtStyle.txtRegular,
      )),
    ),
  );
}

class DrawerLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      color: Color(0xFF29303C),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 250.0,
                width: 250.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "lib/Screen/FullApps/Coinluv/image/round.png"))),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0, left: 20.0),
                child: Text(
                  "Dashboard",
                  style: txtStyle.titleAppbar
                      .copyWith(color: Colors.white, fontSize: 25.0),
                ),
              ),
            ],
          ),
          Flexible(
            child: new ListView(
              children: <Widget>[
                InkWell(
                    onTap: () {},
                    child: itemDrawer(Icons.search, "Coin Search")),
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder: (_, __, ___) => new icoSearch()));
                    },
                    child: itemDrawer(Icons.search, "Ico Search")),
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder: (_, __, ___) => new newLayout()));
                    },
                    child: itemDrawer(Icons.style, "News Screen Layout")),
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder: (_, __, ___) => new exchage_send()));
                    },
                    child: itemDrawer(
                        Icons.insert_drive_file, "Exchange Screen Layout")),
                SizedBox(
                  height: 3.0,
                )
              ],
            ),
          ),
//
        ],
      ),
    ));
  }
}

Widget line(double width) {
  return Container(
    height: 0.5,
    width: width,
    color: Color(0xFF86CBF9).withOpacity(0.6),
  );
}

Widget itemDrawer(IconData icon, String txt) {
  return Padding(
    padding: const EdgeInsets.only(top: 30.0, left: 20.0),
    child: Row(
      children: <Widget>[
        Icon(
          icon,
          size: 25.0,
          color: ColorStyle.colorOrangeBackground,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                txt,
                style: TextStyle(color: Colors.white70, fontSize: 15.5),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
              )
            ],
          ),
        )
      ],
    ),
  );
}
