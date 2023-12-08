import 'package:flutter/material.dart';
import 'package:crypto_template/Screen/FullApps/Marketplace/dataList/savedDataDummy.dart';
import 'package:crypto_template/Screen/FullApps/Marketplace/pages/UI/Profile/OrderDetail.dart';

class myOrders extends StatefulWidget {
  @override
  _myOrdersState createState() => _myOrdersState();
}

class _myOrdersState extends State<myOrders> {
  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
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
                        "My Orders",
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
              padding: const EdgeInsets.only(top: 14.0),
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
                  padding: const EdgeInsets.only(top: 19.0, left: 10.0),
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
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
