import 'package:flutter/material.dart';

import 'Gallery_Screen.dart';

class FoodDetailT2 extends StatefulWidget {
  String? image, title, price, location, id;
  FoodDetailT2({this.image, this.title, this.price, this.location, this.id});

  @override
  _FoodDetailT2State createState() => _FoodDetailT2State();
}

class _FoodDetailT2State extends State<FoodDetailT2> {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          scrollDirection: Axis.vertical,
          slivers: <Widget>[
            SliverPersistentHeader(
              delegate: MySliverAppBar(
                  expandedHeight: _height - 30.0,
                  img: widget.image,
                  id: widget.id,
                  title: widget.title,
                  price: widget.price,
                  location: widget.location),
              pinned: true,
            ),
            SliverToBoxAdapter(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                  Container(
                    height: 90.0,
                    width: double.infinity,
                    color: Colors.black12.withOpacity(0.01),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Row(
                            children: <Widget>[
                              Container(
                                  height: 38.0,
                                  width: 38.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(50.0)),
                                      color: Color(0xFFF7D142)),
                                  child: Center(
                                    child: Image.asset(
                                      "lib/Screen/FullApps/SunriseMart/Assets/icon/ratting.png",
                                      height: 18.0,
                                    ),
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "4.8",
                                      style: TextStyle(
                                          fontFamily: "Sofia",
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Rattings",
                                      style: TextStyle(
                                          fontFamily: "Sofia",
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black26,
                                          fontSize: 13.0),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height: 50.0,
                            width: 0.5,
                            color: Colors.black12,
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                                height: 38.0,
                                width: 38.0,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50.0)),
                                    color: Color(0xFFF32956)),
                                child: Center(
                                  child: Image.asset(
                                    "lib/Screen/FullApps/SunriseMart/Assets/icon/bookmark.png",
                                    height: 18.0,
                                  ),
                                )),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "28",
                                    style: TextStyle(
                                        fontFamily: "Sofia",
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "Bookmark",
                                    style: TextStyle(
                                        fontFamily: "Sofia",
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black26,
                                        fontSize: 13.0),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height: 50.0,
                            width: 0.5,
                            color: Colors.black12,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Row(
                            children: <Widget>[
                              Container(
                                  height: 38.0,
                                  width: 38.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(50.0)),
                                      color: Color(0xFF5658D1)),
                                  child: Center(
                                    child: Image.asset(
                                      "lib/Screen/FullApps/SunriseMart/Assets/icon/photos.png",
                                      height: 18.0,
                                    ),
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "9",
                                      style: TextStyle(
                                          fontFamily: "Sofia",
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Photos",
                                      style: TextStyle(
                                          fontFamily: "Sofia",
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black26,
                                          fontSize: 13.0),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, left: 20.0, right: 20.0, bottom: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Photo",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              fontSize: 20.0,
                              fontWeight: FontWeight.w700),
                          textAlign: TextAlign.justify,
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.of(context).push(PageRouteBuilder(
                                  opaque: false,
                                  pageBuilder: (BuildContext context, _, __) {
                                    return new GalleryScreenT2();
                                  },
                                  transitionDuration:
                                      Duration(milliseconds: 500)));
                            },
                            child: Text("See All",
                                style: TextStyle(
                                    fontFamily: "Sofia",
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w300)))
                      ],
                    ),
                  ),
                  Container(
                    height: 140.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        SizedBox(
                          width: 10.0,
                        ),
                        _photo(
                            "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/Vegetable%2FApple.png?alt=media&token=03cb5fff-2630-47c6-934b-9579d9c24536",
                            "dsada231",
                            context),
                        _photo(
                            "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/Vegetable%2FBeef.png?alt=media&token=002a3e99-0465-498e-8f2c-33199fbcc371",
                            "das231",
                            context),
                        _photo(
                            "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/Vegetable%2FCorn1.png?alt=media&token=eaa26b06-a568-46da-b7b5-134541f1bfde",
                            "32131",
                            context),
                        _photo(
                            "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/Vegetable%2FGuava.png?alt=media&token=bcc43011-7b7b-4fe0-8014-68c960b5b81e",
                            "dsa21",
                            context),
                        _photo(
                            "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/Vegetable%2FMango.png?alt=media&token=14ce5f61-da52-4d64-ad16-1aaa28d9ff19",
                            "321dsa",
                            context),
                        SizedBox(
                          width: 10.0,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 30.0, left: 20.0, right: 20.0, bottom: 50.0),
                    child: Text(
                      "From the french countryside, to your doorstep. PAUL was founded in 1899 as a family bakery and patisserie. Savour a selection of viennosie Discover how to make superb spaghetti carbonaara. this cheesy pasta dish is an Italian favourite and with the right technique, you can make it perfect every time.",
                      style: TextStyle(
                          fontFamily: "Sofia",
                          color: Colors.black54,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Related Post",
                            style: TextStyle(
                                fontFamily: "Sofia",
                                fontSize: 20.0,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "See all",
                            style: TextStyle(
                                fontFamily: "Sofia",
                                fontSize: 16.0,
                                fontWeight: FontWeight.w300),
                          ),
                        ]),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    height: 200.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        SizedBox(
                          width: 10.0,
                        ),
                        _relatedPost(
                            "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/Vegetable%2FCorn1.png?alt=media&token=eaa26b06-a568-46da-b7b5-134541f1bfde",
                            "The Cheeses Guide",
                            "87 Botsford",
                            "4,3"),
                        _relatedPost(
                            "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/Vegetable%2FTomato1.png?alt=media&token=b324bf87-bc59-4cad-b94c-652ebad18ec2",
                            "Garage Bar Seafood",
                            "Gilison London",
                            "4,1"),
                        _relatedPost(
                            "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/Vegetable%2Ffish.png?alt=media&token=350c33db-1294-4495-9959-bd94683637fb",
                            "Spagheti Kilimanjaro",
                            "Netherland",
                            "4,2"),
                        _relatedPost(
                            "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/Vegetable%2FOrange.png?alt=media&token=9d464302-0565-46ab-8874-3dfcb94fae88",
                            "Gangtok Vegetable",
                            "Nepal",
                            "4,7"),
                        _relatedPost(
                            "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/Vegetable%2Fpomegranate.png?alt=media&token=7b5f9312-4d19-47ca-9af9-6ec9f4bccf58",
                            "Soup Caikaki",
                            "Orlando",
                            "4,5"),
                        SizedBox(
                          width: 10.0,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Container(
                      height: 55.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          gradient: LinearGradient(
                              colors: [
                                const Color(0xFF5FBD84),
                                const Color(0xFF5FBD84),
                              ],
                              begin: const FractionalOffset(0.0, 0.0),
                              end: const FractionalOffset(1.0, 0.0),
                              stops: [0.0, 1.0],
                              tileMode: TileMode.clamp)),
                      child: Center(
                        child: Text(
                          "Order Now",
                          style: TextStyle(color: Colors.white, fontSize: 17.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
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

  String? img, id, title, price, location;

  MySliverAppBar(
      {required this.expandedHeight,
      this.img,
      this.id,
      this.title,
      this.price,
      this.location});

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
            "Foddie",
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
                margin: EdgeInsets.only(top: 130.0),
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width - 30,
                    child: Text(
                      title!,
                      style: TextStyle(
                          color: Colors.black87.withOpacity(0.65),
                          fontSize: 30.5,
                          fontFamily: "Sofia",
                          fontWeight: FontWeight.w700),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        size: 14.0,
                        color: Colors.black26,
                      ),
                      Text(
                        location!,
                        style: TextStyle(
                            color: Colors.black26,
                            fontSize: 14.5,
                            fontFamily: "Sofia",
                            fontWeight: FontWeight.w800),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, top: 10.0, bottom: 10.0),
                  child: Container(
                    child: Text(
                      price!,
                      style: TextStyle(
                          color: Color(0xFF5FBD84),
                          fontSize: 25.5,
                          fontFamily: "Sofia",
                          fontWeight: FontWeight.w800),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
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
                      child: Icon(Icons.arrow_back),
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

Widget _photo(String image, id, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Material(
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(PageRouteBuilder(
                  opaque: false,
                  pageBuilder: (BuildContext context, _, __) {
                    return new Material(
                      color: Colors.black54,
                      child: Container(
                        padding: EdgeInsets.only(
                            left: 5.0, right: 5.0, top: 0.0, bottom: 0.0),
                        child: InkWell(
                          child: Hero(
                              tag: "hero-grid-${id}",
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 5.0,
                                    right: 5.0,
                                    top: 160.0,
                                    bottom: 160.0),
                                child: Container(
                                  height: 500.0,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(image),
                                          fit: BoxFit.cover)),
                                ),
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
              height: 110.0,
              width: 140.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(image), fit: BoxFit.cover),
                  color: Colors.black12,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5.0,
                        color: Colors.black12.withOpacity(0.1),
                        spreadRadius: 2.0)
                  ]),
            ),
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
      ],
    ),
  );
}

Widget _relatedPost(String image, title, location, ratting) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 110.0,
          width: 180.0,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(image), fit: BoxFit.cover),
              color: Colors.black12,
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              boxShadow: [
                BoxShadow(
                    blurRadius: 5.0,
                    color: Colors.black12.withOpacity(0.1),
                    spreadRadius: 2.0)
              ]),
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          title,
          style: TextStyle(
              fontFamily: "Sofia",
              fontWeight: FontWeight.w600,
              fontSize: 17.0,
              color: Colors.black87),
        ),
        SizedBox(
          height: 2.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(
              Icons.location_on,
              size: 18.0,
              color: Colors.black12,
            ),
            Text(
              location,
              style: TextStyle(
                  fontFamily: "Sofia",
                  fontWeight: FontWeight.w500,
                  fontSize: 15.0,
                  color: Colors.black26),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.star,
              size: 18.0,
              color: Colors.yellow,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3.0),
              child: Text(
                ratting,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontFamily: "Sofia",
                    fontSize: 13.0),
              ),
            ),
            SizedBox(
              width: 35.0,
            ),
          ],
        ),
      ],
    ),
  );
}
