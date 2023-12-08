import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailNews extends StatefulWidget {
  @override
  _DetailNewsState createState() => _DetailNewsState();
}

class _DetailNewsState extends State<DetailNews> {
  /// Check user
  bool _checkUser = true;

  String? _nama, _photoProfile, _email;

  void initState() {
    //_getData();
    //_checkFirst();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String _book = "Bookmark";

    _launchURL() async {
      const url =
          'https://www.google.com/maps/place/Jakarta/@-6.2293867,106.6894316,11z/data=!3m1!4b1!4m5!3m4!1s0x2e69f3e945e34b9d:0x5371bf0fdad786a2!8m2!3d-6.2087634!4d106.845599';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          scrollDirection: Axis.vertical,
          slivers: <Widget>[
            /// AppBar
            SliverPersistentHeader(
              delegate: MySliverAppBar(
                  expandedHeight: _height - 30.0,
                  img:
                      "https://images.pexels.com/photos/5837131/pexels-photo-5837131.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                  id: "dsadsa",
                  title: "Basketball new team",
                  price: 30,
                  location: "United States",
                  ratting: 14),
              pinned: true,
            ),

            SliverToBoxAdapter(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                  // StreamBuilder(
                  //   stream: Firestore.instance
                  //       .collection('users')
                  //       .document(widget.userId)
                  //       .snapshots(),
                  //   builder: (context, snapshot) {
                  //     if (!snapshot.hasData) {
                  //       return new Text("Loading");
                  //     } else {
                  //       var userDocument = snapshot.data;
                  //       _nama = userDocument["name"];
                  //       _email = userDocument["email"];
                  //       _photoProfile = userDocument["photoProfile"];
                  //     }

                  //     var userDocument = snapshot.data;
                  //     return Container();
                  //   },
                  // ),

                  Container(
                    height: 2.0,
                    width: double.infinity,
                    color: Colors.black12.withOpacity(0.03),
                  ),

                  SizedBox(
                    height: 15.0,
                  ),

                  Container(
                    height: 20.0,
                    width: double.infinity,
                    color: Colors.black12.withOpacity(0.03),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),

                  /// Description
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, left: 20.0, right: 20.0, bottom: 10.0),
                    child: Text(
                      "Description",
                      style: TextStyle(
                          fontFamily: "Sofia",
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 0.0, left: 20.0, right: 20.0, bottom: 0.0),
                    child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          fontFamily: "Sofia",
                          color: Colors.black54,
                          fontSize: 18.0),
                      overflow: TextOverflow.clip,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 30.0, left: 20.0, right: 20.0, bottom: 0.0),
                    child: Text(
                      "when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          fontFamily: "Sofia",
                          color: Colors.black54,
                          fontSize: 18.0),
                      overflow: TextOverflow.clip,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, left: 20.0, right: 20.0, bottom: 0.0),
                    child: Text(
                      "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using '",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          fontFamily: "Sofia",
                          color: Colors.black54,
                          fontSize: 18.0),
                      overflow: TextOverflow.clip,
                    ),
                  ),

                  /// service

                  //Text(_nama),

                  SizedBox(
                    height: 60.0,
                  ),

                  /// Button
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 8.0, right: 8.0, bottom: 10.0),
                    child: Row(
                      children: [
                        Container(
                          height: 55.0,
                          width: MediaQuery.of(context).size.width / 3,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
                              // gradient: LinearGradient(
                              //     colors: [
                              //       const Color(0xFF00C09A),
                              //       Color(0xFF00C09A),
                              //     ],
                              //     begin: const FractionalOffset(0.0, 0.0),
                              //     end: const FractionalOffset(1.0, 0.0),
                              //     stops: [0.0, 1.0],
                              //     tileMode: TileMode.clamp)
                              border: Border.all(
                                  width: 1.0, color: Colors.blueAccent)),
                          child: Center(
                            child: Text(
                              "Save",
                              style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 19.0,
                                  fontFamily: "Sofia",
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        InkWell(
                          onTap: () async {},
                          child: Container(
                            height: 55.0,
                            width: MediaQuery.of(context).size.width / 1.7,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                                gradient: LinearGradient(
                                    colors: [
                                      Colors.blueAccent,
                                      Colors.blueAccent
                                    ],
                                    begin: const FractionalOffset(0.0, 0.0),
                                    end: const FractionalOffset(1.0, 0.0),
                                    stops: [0.0, 1.0],
                                    tileMode: TileMode.clamp)),
                            child: Center(
                              child: Text(
                                _book,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 19.0,
                                    fontFamily: "Sofia",
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ])),
          ],
        ),
      ),
    );
  }
}

class MySliverAppBar extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  String? img, id, title, location;
  num? price;
  double? ratting;

  MySliverAppBar(
      {required this.expandedHeight,
      this.img,
      this.id,
      this.title,
      this.price,
      this.location,
      this.ratting});

  var _txtStyleTitle = TextStyle(
    color: Colors.black54,
    fontFamily: "Sofia",
    fontSize: 20.0,
    fontWeight: FontWeight.w800,
  );

  var _txtStyleSub = TextStyle(
    color: Colors.black26,
    fontFamily: "Sofia",
    fontSize: 12.5,
    fontWeight: FontWeight.w600,
  );

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          height: 50.0,
          width: double.infinity,
          color: Colors.white,
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            "Newsas",
            style: TextStyle(
              color: Colors.black,
              fontFamily: "Sofia",
              fontWeight: FontWeight.w700,
              fontSize: (expandedHeight / 40) - (shrinkOffset / 40) + 18,
            ),
          ),
        ),
        Opacity(
          opacity: (1 - shrinkOffset / expandedHeight),
          child: Hero(
            tag: 'hero-tag-${id}',
            child: new DecoratedBox(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  fit: BoxFit.cover,
                  image: new NetworkImage(img!),
                ),
                shape: BoxShape.rectangle,
              ),
              child: Container(
                margin: EdgeInsets.only(top: 620.0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: FractionalOffset(0.0, 0.0),
                    end: FractionalOffset(0.0, 1.0),
                    stops: [0.0, 1.0],
                    colors: <Color>[
                      Color(0x00FFFFFF),
                      Color(0xFFFFFFFF),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Opacity(
            opacity: (1 - shrinkOffset / expandedHeight),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 20.0, right: 20.0, left: 20.0, bottom: 40.0),
              child: Container(
                height: 170.0,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: Colors.white.withOpacity(0.85)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 15.0, right: 2.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                    width: 210.0,
                                    child: Text(
                                      title!,
                                      style: _txtStyleTitle.copyWith(
                                          fontSize: 27.0),
                                      overflow: TextOverflow.clip,
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(right: 13.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        "Sporth",
                                        style: TextStyle(
                                            fontSize: 25.0,
                                            color: Color(0xFF00C09A),
                                            fontWeight: FontWeight.w600,
                                            fontFamily: "Sofia"),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                      child: Container(
                          height: 35.0,
                          width: 35.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(40.0),
                            ),
                            color: Colors.white70,
                          ),
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                          )),
                    ))),
            SizedBox(
              width: 36.0,
            )
          ],
        ),
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
