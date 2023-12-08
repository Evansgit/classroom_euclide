import 'package:flutter/material.dart';
import 'package:crypto_template/Screen/FullApps/Marketplace/dataList/savedDataDummy.dart';
import 'package:crypto_template/Screen/FullApps/Marketplace/pages/UI/Layout_Component/product_detail_saved.dart';

class listing extends StatefulWidget {
  @override
  _listingState createState() => _listingState();
}

class _listingState extends State<listing> {
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
      body: SingleChildScrollView(
        child: Container(
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
                  padding: const EdgeInsets.only(top: 15.0),
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
                  "Listings",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0,
                      fontFamily: "Sofia"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0.0),
                child: Container(
                  child: ListView.builder(
                    padding: EdgeInsets.only(top: 5.0),
                    primary: false,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: ElectronicData.length,
                    itemBuilder: (context, index) =>
                        BuildCard(ElectronicData[index]),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Center(
                  child: Text(
                "See more",
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontFamily: "Sofia",
                    fontWeight: FontWeight.w600),
              )),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
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
                  pageBuilder: (_, __, ___) => new ProductDetailSaved(list),
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
