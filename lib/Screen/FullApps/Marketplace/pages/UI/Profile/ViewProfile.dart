import 'package:flutter/material.dart';

import '../../../../../../Library/Ratting_Bar/ratting.dart';

class viewProfil extends StatefulWidget {
  @override
  _viewProfilState createState() => _viewProfilState();
}

class _viewProfilState extends State<viewProfil> {
  @override
  double rating = 3.5;
  int starCount = 5;

  /// Custom Text black
  static var _customTextStyle = TextStyle(
    color: Colors.black,
    fontFamily: "Sofia",
    fontSize: 17.0,
    fontWeight: FontWeight.w800,
  );

  /// Custom Text for Header title
  static var _subHeaderCustomStyle = TextStyle(
      fontWeight: FontWeight.w700,
      fontFamily: "Sofia",
      fontSize: 16.0,
      color: Colors.black);

  /// Custom Text for Detail title
  static var _detailText = TextStyle(
      fontFamily: "Sofia",
      color: Colors.black54,
      letterSpacing: 0.3,
      wordSpacing: 0.5);

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black54,
            )),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(100.0)),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 1.0,
                          color: Colors.black12,
                          spreadRadius: 2.0)
                    ],
                    image: DecorationImage(
                        image: AssetImage(
                            "lib/Screen/FullApps/Marketplace/assets/avatars/avatar-1.jpg"),
                        fit: BoxFit.cover)),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  "Sally Hanses",
                  style: TextStyle(
                    fontSize: 21.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Text(
                  "Singapore",
                  style: TextStyle(
                      color: Colors.black54,
                      fontFamily: "Sofia",
                      fontSize: 13.0,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Center(
                child: Text(
              "Joined since 2018",
              style: TextStyle(
                  color: Colors.black54,
                  fontFamily: "Sofia",
                  fontSize: 13.0,
                  fontWeight: FontWeight.w500),
            )),
            Padding(
              padding: const EdgeInsets.only(
                  top: 15.0, bottom: 20.0, left: 20.0, right: 20.0),
              child: Divider(
                height: 2.0,
                color: Colors.black12.withOpacity(0.9),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, bottom: 10.0),
              child: Text(
                "Ratings",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.0,
                    fontFamily: "Sofia"),
              ),
            ),
            Expanded(
              child: DefaultTabController(
                length: 2,
                child: new Scaffold(
                  backgroundColor: Colors.white,
                  appBar: PreferredSize(
                    preferredSize:
                        Size.fromHeight(40.0), // here the desired height
                    child: new AppBar(
                      backgroundColor: Colors.white,
                      elevation: 0.0,
                      centerTitle: true,
                      automaticallyImplyLeading: false,
//                  leading: Icon(Icons.vpn_key,color: Colors.transparent,size: 0.0,),
//                  actions: <Widget>[
//                    Icon(Icons.vpn_key,color: Colors.transparent,size: 80.0,),
//                  ],
                      title: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black54),
                            color: Colors.white),
                        child: new TabBar(
                          labelColor: Colors.white,
                          unselectedLabelColor: Colors.black26,
                          indicator: ShapeDecoration(
                              shape: Border.all(
                            width: 120.0,
                            color: Colors.black38,
                          )),
                          labelStyle: TextStyle(decorationColor: Colors.white),
                          tabs: [
                            new Tab(
                              text: "Seller",
                            ),
                            new Tab(
                              text: "Buyer",
                            )
                          ],
                          indicatorColor: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  body: new TabBarView(
                    children: [
                      Seller(),
                      Buyer(),
                    ],
                  ),
                ),
              ),
            ),
//            Text("Listing"),
//            Container(
//              height: 80.0,
//              width: 400.0,
//              color: Colors.blueAccent,
//            )
          ],
        ),
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
              borderColor: Colors.yellow,
              starCount: starCount,
              color: Colors.yellow,
              onRatingChanged: changeRating as void Function(double)),
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

class Seller extends StatelessWidget {
  @override
  double rating = 3.5;
  int starCount = 5;

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
      child: Container(
        width: double.infinity,
        height: 410.0,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black54),
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 7.0, left: 10.0),
                        child: StarRating(
                          borderColor: Colors.yellow,
                          onRatingChanged: (double rating) {},
                          size: 20.0,
                          starCount: 5,
                          rating: rating,
                          color: Colors.yellow,
                        ),
                      ),
                      SizedBox(width: 5.0),
                      Text('8 Reviews')
                    ]),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 20.0, right: 20.0, top: 5.0, bottom: 7.0),
              child: _line(),
            ),
            _buildRating('18 Nov 2018',
                'Item delivered in good condition. I will recommend to other buyer.',
                (rating) {
              this.rating = rating;
            }, "lib/Screen/FullApps/Marketplace/assets/avatars/avatar-2.jpg"),
            Padding(
              padding: EdgeInsets.only(
                  left: 20.0, right: 20.0, top: 15.0, bottom: 7.0),
              child: _line(),
            ),
            _buildRating('18 Nov 2018',
                'Item delivered in good condition. I will recommend to other buyer.',
                (rating) {
              this.rating = rating;
            }, "lib/Screen/FullApps/Marketplace/assets/avatars/avatar-4.jpg"),
            Padding(
              padding: EdgeInsets.only(
                  left: 20.0, right: 20.0, top: 15.0, bottom: 15.0),
              child: _line(),
            ),
            Center(
              child: Text(
                "See more",
                style: TextStyle(color: Colors.blueAccent),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Buyer extends StatelessWidget {
  @override
  double rating = 3.5;
  int starCount = 5;

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
      child: Container(
        width: double.infinity,
        height: 410.0,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black54),
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Icon(
                      Icons.star,
                      size: 40.0,
                      color: Colors.yellow,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Ratings",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 20.0),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0, left: 50.0),
                child: Text("No Ratings as a buyer."),
              )
            ],
          ),
        ),
      ),
    );
  }
}

double rating = 3.5;
int starCount = 5;

/// Custom Text for Detail title
var _detailText = TextStyle(
    fontFamily: "Sofia",
    color: Colors.black54,
    letterSpacing: 0.3,
    wordSpacing: 0.5);

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
            borderColor: Colors.yellow,
            rating: rating,
            starCount: starCount,
            color: Colors.yellow,
            onRatingChanged: changeRating as void Function(double)),
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
