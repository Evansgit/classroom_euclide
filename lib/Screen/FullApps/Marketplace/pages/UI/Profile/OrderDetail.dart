import 'package:flutter/material.dart';
import 'package:crypto_template/Screen/FullApps/Marketplace/dataList/savedDataDummy.dart';
import 'package:crypto_template/Screen/FullApps/Marketplace/pages/UI/Layout_Component/addReview.dart';

import '../../../../../../Library/Ratting_Bar/ratting.dart';

class OrderDetail extends StatefulWidget {
  @override
  _OrderDetailState createState() => _OrderDetailState();
}

class _OrderDetailState extends State<OrderDetail> {
  @override
  double rating = 3.5;
  int starCount = 5;
  static var _detailText = TextStyle(
      fontFamily: "Sofia",
      color: Colors.black54,
      letterSpacing: 0.3,
      wordSpacing: 0.5);
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
                  child: Container(
                    child: ListView.builder(
                      padding: EdgeInsets.only(top: 5.0),
                      primary: false,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: 1,
                      itemBuilder: (context, index) =>
                          BuildCard(ElectronicData[index]),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 10.0),
                  child: Text("Reviews"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    children: <Widget>[
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            StarRating(
                              size: 22.0,
                              borderColor: Colors.yellow,
                              onRatingChanged: (double rating) {},
                              starCount: 5,
                              rating: rating,
                              color: Colors.yellow,
                            ),
                            SizedBox(width: 5.0),
                            Text('1 Reviews')
                          ]),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 15.0, bottom: 7.0),
                  child: _line(),
                ),
                _buildRating('18 Nov 2018',
                    'Item delivered in good condition. I will recommend to other buyer.',
                    (rating) {
                  setState(() {
                    this.rating = rating;
                  });
                }, "lib/Screen/FullApps/Marketplace/assets/avatars/avatar-2.jpg"),
                Padding(
                  padding: EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 15.0, bottom: 7.0),
                  child: _line(),
                ),
                SizedBox(
                  height: 20.0,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(PageRouteBuilder(
                        pageBuilder: (_, __, ___) => addReview()));
                  },
                  child: Center(
                    child: Text(
                      "Add Review",
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.w600),
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
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            )),
                      ),
                      Center(
                          child: Text(
                        "Order Detail",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontFamily: "Sofia",
                            fontWeight: FontWeight.w600),
                      )),
                      Text(
                        "nsdaaa",
                        style: TextStyle(color: Colors.transparent),
                      ),
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

  Widget _buildRating(
      String date, String details, Function changeRating, String image) {
    return ListTile(
      leading: Container(
        height: 45.0,
        width: 45.0,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            borderRadius: BorderRadius.all(Radius.circular(50.0))),
      ),
      title: Row(
        children: <Widget>[
          StarRating(
            size: 20.0,
            rating: rating,
            starCount: starCount,
            color: Colors.yellow,
            onRatingChanged: changeRating as void Function(double),
            borderColor: Colors.yellow,
          ),
          SizedBox(width: 8.0),
          Text(
            date,
            style: TextStyle(fontSize: 12.0),
          )
        ],
      ),
      subtitle: Text(
        details,
        style: _detailText,
      ),
    );
  }
}

Widget _line() {
  return Container(
    height: 0.9,
    width: double.infinity,
    color: Colors.black12,
  );
}

class BuildCard extends StatefulWidget {
  @override
  _BuildCardState createState() => _BuildCardState(this.list);
  SavedDataDummy list;
  BuildCard(this.list);
}

class _BuildCardState extends State<BuildCard> {
  @override
  SavedDataDummy list;
  bool isSelect = false;
  _BuildCardState(this.list);
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
          padding: const EdgeInsets.only(top: 14.0),
          child: ListTile(
            onTap: () {
              Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (_, __, ___) => new OrderDetail(),
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
                    height: 70.0,
                    width: 70.0,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
