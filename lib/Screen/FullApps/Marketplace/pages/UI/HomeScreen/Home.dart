import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:crypto_template/Screen/FullApps/Marketplace/dataList/ListHomeData.dart';
import 'package:crypto_template/Screen/FullApps/Marketplace/pages/UI/AppbarCustom/AppBarCustom.dart';
import 'dart:async';
import 'package:crypto_template/Screen/FullApps/Marketplace/pages/UI/Layout_Component/product_detail.dart';
import 'package:shimmer/shimmer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  bool _loading = true;
  int currentPosition = 0;

  ///
  /// Get image data dummy from internet
  ///
  var imageNetwork = NetworkImage(
      "https://media.wired.com/photos/5b22c5c4b878a15e9ce80d92/master/pass/iphonex-TA.jpg");

  ///
  /// check the condition is right or wrong for image loaded or no
  ///
  bool loadImage = true;
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      setState(() {
        loadImage = false;
      });
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      /// Use Stack to costume a appbar
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(top: 155.0)),
                _TopPick(),
                _Electronics(),
              ],
            ),
          ),

          /// Get a class AppbarGradient
          /// This is a Appbar in home activity
          Column(
            children: <Widget>[
              AppbarGradient(),
              Container(
                height: 50.0,
                color: Colors.white30,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    _buildChips('Sell', () {
                      print('pressed chips');
                      Navigator.pushNamed(context, '/add-new-product');
                    }, FontAwesomeIcons.dollarSign, 90.0),
                    _buildChips('Saved', () {
                      print('pressed chips');
                      Navigator.pushNamed(context, '/saved-list-items');
                    }, Icons.bookmark, 100.0),
                    _buildChips('Categories', () {
                      print('pressed chips');
                      Navigator.pushNamed(context, '/categories-list');
                    }, Icons.list, 125.0),
                    _buildChips('Test', () {
                      print('pressed chips');
                      Navigator.pushNamed(context, '/add-new-product');
                    }, FontAwesomeIcons.list, 90.0),
                    _buildChips('Test', () {
                      print('pressed chips');
                      Navigator.pushNamed(context, '/add-new-product');
                    }, FontAwesomeIcons.exchangeAlt, 90.0),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _TopPick() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Text(
            "Top Picks",
            style: TextStyle(
                color: Colors.black87,
                fontSize: 16.5,
                fontFamily: "Sofia",
                fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }

  Widget _Electronics() {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text(
                  "Electronics",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16.5,
                      fontFamily: "Sofia",
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 0.0),
                      child: Text(
                        "View All",
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 13.5,
                            fontFamily: "Sofia",
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0, top: 2.0),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 18.0,
                        color: Colors.black54,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Container(
              child: loadImage
                  ? _loadingImageAnimation(context)
                  : _imageLoaded(context)),
//          CircularProgressIndicator(),
          Padding(padding: EdgeInsets.only(bottom: 10.0))
        ],
      ),
    );
  }
}

Widget _buildChips(
    String label, Function onPressed, IconData icon, double width) {
//    return ActionChip(
//      onPressed: onPressed,
//      label: Text(label),
//      avatar: CircleAvatar(
//        child: Icon(
//          icon,
//          color: Colors.black,
//        ),
//        backgroundColor: Colors.white,
//      ),
//    );
  return Padding(
    padding:
        const EdgeInsets.only(top: 8.0, bottom: 10.0, right: 5.0, left: 5.0),
    child: Container(
      height: 35.5,
      width: width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4.5,
            spreadRadius: 1.0,
          )
        ],
      ),
      child: Center(
        child: InkWell(
          onTap: onPressed as void Function()?,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                icon,
                color: Colors.black,
                size: 17.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  label,
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Sofia",
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

class BuildCard extends StatefulWidget {
  @override
  _BuildCardState createState() => _BuildCardState(this.list);
  ElectronicList list;
  BuildCard(this.list);
}

class _BuildCardState extends State<BuildCard> {
  @override
  ElectronicList list;
  bool isSelect = false;
  _BuildCardState(this.list);
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 5.0, left: 10.0, right: 10.0, bottom: 3.0),
      child: Container(
        height: 112.0,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Color(0xFF656565).withOpacity(0.15),
            blurRadius: 4.0,
            spreadRadius: 1.0,
          )
        ]),
        child: Padding(
          padding: const EdgeInsets.only(top: 14.0),
          child: ListTile(
            onTap: () {
              Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (_, __, ___) => new ProductDetail(list),
                  transitionDuration: Duration(milliseconds: 700),
                  transitionsBuilder:
                      (_, Animation<double> animation, __, Widget widget) {
                    return Opacity(
                      opacity: animation.value,
                      child: widget,
                    );
                  }));
            },
            leading: Hero(
              tag: "hero-grid-${list.id}",
              child: Material(
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(PageRouteBuilder(
                        opaque: false,
                        pageBuilder: (BuildContext context, _, __) {
                          return new Material(
                            color: Colors.black54,
                            child: Container(
                              padding: EdgeInsets.all(30.0),
                              child: InkWell(
                                child: Hero(
                                    tag: "hero-grid-${list.id}",
                                    child: Image.network(
                                      list.image!,
                                      width: 300.0,
                                      height: 300.0,
                                      alignment: Alignment.center,
                                      fit: BoxFit.contain,
                                    )),
                                onTap: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                          );
                        },
                        transitionDuration: Duration(milliseconds: 500)));
                  },
                  child: Container(
                    height: 80.0,
                    width: 80.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(list.image!),
                            fit: BoxFit.cover)),
                  ),
                ),
              ),
            ),
            title: Text(
              list.title!,
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 6.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 2.0),
                    child: Text(
                      list.rating.toString(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text("(" + list.countRating.toString() + ")"),
                  )
                ],
              ),
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 16.0, left: 10.0),
                  child: Text(
                    list.price!,
                    style: TextStyle(
                        fontFamily: "Sofia",
                        fontWeight: FontWeight.w600,
                        fontSize: 17.0,
//                          color: Color(0xFF6991C7),
                        color: Colors.blueAccent),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    isSelect ? Icons.bookmark : Icons.bookmark_border,
                    color: Colors.black,
                    size: 25.0,
                  ),
                  onPressed: () {
                    print(isSelect);
                    if (isSelect) {
                      setState(() {
                        isSelect = false;
                      });
                    } else {
                      setState(() {
                        isSelect = true;
                      });
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class loadingCard extends StatelessWidget {
  ElectronicList list;
  bool isSelect = false;
  loadingCard(this.list);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 5.0, left: 10.0, right: 10.0, bottom: 3.0),
      child: Container(
        height: 106.0,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Color(0xFF656565).withOpacity(0.15),
            blurRadius: 4.0,
            spreadRadius: 1.0,
          )
        ]),
        child: Padding(
          padding: const EdgeInsets.only(top: 0.0),
          child: Shimmer.fromColors(
              baseColor: Colors.black38,
              highlightColor: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(top: 0.0, left: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 80.0,
                      height: 80.0,
                      color: Colors.black12,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: 15.0,
                            width: 205.0,
                            color: Colors.black12,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            height: 15.0,
                            width: 145.0,
                            color: Colors.black12,
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                height: 12.0,
                                width: 55.0,
                                color: Colors.black12,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 130.0),
                                child: Container(
                                  height: 22.0,
                                  width: 20.0,
                                  color: Colors.black12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}

///
///
/// Calling imageLoading animation for set a list layout
///
///
Widget _loadingImageAnimation(BuildContext context) {
  MediaQueryData mediaQueryData = MediaQuery.of(context);
  return ListView.builder(
    padding: EdgeInsets.only(top: 5.0),
    primary: false,
    shrinkWrap: true,
    scrollDirection: Axis.vertical,
    itemCount: ElectronicData.length,
    itemBuilder: (context, index) => loadingCard(ElectronicData[index]),
  );
}

///
///
/// Calling ImageLoaded animation for set a list layout
///
///
Widget _imageLoaded(BuildContext context) {
  MediaQueryData mediaQueryData = MediaQuery.of(context);
  return ListView.builder(
    padding: EdgeInsets.only(top: 5.0),
    primary: false,
    shrinkWrap: true,
    scrollDirection: Axis.vertical,
    itemCount: ElectronicData.length,
    itemBuilder: (context, index) => BuildCard(ElectronicData[index]),
  );
}
