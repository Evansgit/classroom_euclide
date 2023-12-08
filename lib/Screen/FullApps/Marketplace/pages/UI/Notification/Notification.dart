import 'package:flutter/material.dart';
import 'package:crypto_template/Screen/FullApps/Marketplace/dataList/notificationsData.dart';

class notification extends StatefulWidget {
  @override
  _notificationState createState() => _notificationState();
}

class _notificationState extends State<notification> {
  final List<Post> items = [];
  final List<Post> item2 = [];
  @override
  void initState() {
    super.initState();
    setState(() {
      items.add(
        Post(
          image: "lib/Screen/FullApps/Marketplace/assets/img/flashsaleicon.jpg",
          id: 1,
          title: "10% discount on all items",
          desc: "I am looking for some models help for a show",
          time: "1m ago",
        ),
      );

      items.add(
        Post(
          image: "lib/Screen/FullApps/Marketplace/assets/img/flashsaleicon.jpg",
          id: 2,
          title: "Limited time sale",
          desc: "400 hundreds items up for discounts. Hurry!",
          time: "1m ago",
        ),
      );
      items.add(
        Post(
          image: "lib/Screen/FullApps/Marketplace/assets/img/flashsaleicon.jpg",
          id: 3,
          title: "10% discount on all items",
          desc: "I am looking for some models help for a show",
          time: "1m ago",
        ),
      );
      items.add(
        Post(
          image: "lib/Screen/FullApps/Marketplace/assets/img/flashsaleicon.jpg",
          id: 4,
          title: "Limited time sale",
          desc: "400 hundreds items up for discounts. Hurry!",
          time: "1m ago",
        ),
      );
      item2.add(
        Post(
          image: "lib/Screen/FullApps/Marketplace/assets/img/flashsaleicon.jpg",
          id: 1,
          title: "10% discount on all items",
          desc: "I am looking for some models help for a show",
          time: "1m ago",
        ),
      );
      item2.add(
        Post(
          image: "lib/Screen/FullApps/Marketplace/assets/img/flashsaleicon.jpg",
          id: 2,
          title: "Limited time sale",
          desc: "400 hundreds items up for discounts. Hurry!",
          time: "1m ago",
        ),
      );
    });
  }

  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    final MediaQueryData media = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 105.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, bottom: 3.0),
                  child: Text(
                    "RECENT",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.5,
                        color: Colors.black87,
                        fontFamily: "Sofia"),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: items.length > 0
                        ? ListView.builder(
                            itemCount: items.length,
                            primary: false,
                            shrinkWrap: true,
                            padding: const EdgeInsets.all(0.0),
                            itemBuilder: (context, position) {
                              return Dismissible(
                                  key: Key(items[position].id.toString()),
                                  onDismissed: (direction) {
                                    setState(() {
                                      items.removeAt(position);
                                    });
                                  },
                                  background: Container(
                                    color: Color(0xFF6991C7),
                                  ),
                                  child: Container(
                                    height: 84.0,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Divider(height: 5.0),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 5.0),
                                                child: Container(
                                                  height: 45.0,
                                                  width: 45.0,
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          blurRadius: 2.0,
                                                          color: Colors.black12
                                                              .withOpacity(0.1),
                                                          spreadRadius: 1.0,
                                                        )
                                                      ],
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  60.0)),
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              '${items[position].image}'),
                                                          fit: BoxFit.contain)),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10.0, right: 10.0),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: <Widget>[
                                                        Text(
                                                          '${items[position].title}',
                                                          style: TextStyle(
                                                              fontSize: 17.5,
                                                              color: Colors
                                                                  .black87,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600),
                                                        ),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 6.0),
                                                      child: Container(
                                                        width: 220.0,
                                                        child: Text(
                                                          '${items[position].desc}',
                                                          style: new TextStyle(
                                                              fontSize: 15.0,
                                                              fontStyle:
                                                                  FontStyle
                                                                      .italic,
                                                              color: Colors
                                                                  .black38),
                                                          overflow:
                                                              TextOverflow.fade,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 10.0, bottom: 31.0),
                                                child: Text(
                                                  '${items[position].time}',
                                                  style: TextStyle(
                                                      fontSize: 13.0,
                                                      fontFamily: "Sofia",
                                                      color: Colors.black26),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ));
                            })
                        : Padding(
                            padding: EdgeInsets.all(30.0),
                            child: Text(
                              "No Have Notification",
                              textAlign: TextAlign.center,
                            ),
                          ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0.0),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, bottom: 3.0, top: 0.0),
                      child: Text(
                        "OLDER",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16.5,
                            color: Colors.black87,
                            fontFamily: "Sofia"),
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: item2.length > 0
                        ? ListView.builder(
                            shrinkWrap: true,
                            primary: false,
                            itemCount: item2.length,
                            padding: const EdgeInsets.all(0.0),
                            itemBuilder: (context, position) {
                              return Dismissible(
                                  key: Key(item2[position].id.toString()),
                                  onDismissed: (direction) {
                                    setState(() {
                                      item2.removeAt(position);
                                    });
                                  },
                                  background: Container(
                                    color: Color(0xFF6991C7),
                                  ),
                                  child: Container(
                                    height: 88.0,
                                    child: Column(
                                      children: <Widget>[
                                        Divider(height: 5.0),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 5.0),
                                                child: Container(
                                                  height: 45.0,
                                                  width: 45.0,
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          blurRadius: 2.0,
                                                          color: Colors.black12
                                                              .withOpacity(0.1),
                                                          spreadRadius: 1.0,
                                                        )
                                                      ],
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  60.0)),
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              '${item2[position].image}'),
                                                          fit: BoxFit.contain)),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10.0, right: 10.0),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: <Widget>[
                                                        Text(
                                                          '${item2[position].title}',
                                                          style: TextStyle(
                                                              fontSize: 17.5,
                                                              color: Colors
                                                                  .black87,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600),
                                                        ),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 6.0),
                                                      child: Container(
                                                        width: 220.0,
                                                        child: Text(
                                                          '${item2[position].desc}',
                                                          style: new TextStyle(
                                                              fontSize: 15.0,
                                                              fontStyle:
                                                                  FontStyle
                                                                      .italic,
                                                              color: Colors
                                                                  .black38),
                                                          overflow:
                                                              TextOverflow.fade,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 10.0, bottom: 31.0),
                                                child: Text(
                                                  '${item2[position].time}',
                                                  style: TextStyle(
                                                      fontSize: 13.0,
                                                      fontFamily: "Sofia",
                                                      color: Colors.black26),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
//                                    ListTile(
//                                      title: Text(
//                                        '${item2[position].title}',
//                                        style: TextStyle(
//                                            fontSize: 17.5,
//                                            color: Colors.black87,
//                                            fontWeight: FontWeight.w600
//                                        ),
//                                      ),
//                                      subtitle: Padding(
//                                        padding: const EdgeInsets.only(top:6.0),
//                                        child: Container(
//                                          width: 440.0,
//                                          child: Text(
//                                            '${item2[position].desc}',
//                                            style: new TextStyle(
//                                                fontSize: 15.0,
//                                                fontStyle: FontStyle.italic,
//                                                color: Colors.black38
//                                            ),
//                                            overflow: TextOverflow.fade,
//                                          ),
//                                        ),
//                                      ),
//                                      leading: Column(
//                                        children: <Widget>[
//                                          Container(
//                                            height: 45.0,
//                                            width: 45.0,
//                                            decoration: BoxDecoration(
//                                              color: Colors.white,
//                                              boxShadow: [
//                                                BoxShadow(
//                                                  blurRadius: 1.0,
//                                                  color: Colors.black12.withOpacity(0.1),
//                                                  spreadRadius: 1.0,
//                                                )
//                                              ],
//                                                borderRadius: BorderRadius.all(Radius.circular(60.0)),
//                                                image: DecorationImage(image: AssetImage('${item2[position].image}'),fit: BoxFit.contain)
//                                            ),
//                                          )
//                                        ],
//                                      ),
//                                      trailing: Text('${item2[position].time}',style: TextStyle(fontSize: 13.0,fontFamily: "Sofia",color: Colors.black26),),
//                                      onTap: () => _onTapItem(context, item2[position]),
//                                    ),
                                      ],
                                    ),
                                  ));
                            })
                        : Padding(
                            padding: EdgeInsets.all(30.0),
                            child: Text(
                              "No Have Notification",
                              textAlign: TextAlign.center,
                            ),
                          )),
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
                  child: Center(
                      child: Text(
                    "Notification",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontFamily: "Sofia",
                        fontWeight: FontWeight.w600),
                  )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void _onTapItem(BuildContext context, Post post) {
  ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
      content: new Text(post.id.toString() + ' - ' + post.title!)));
}

Widget _Line() {
  return Padding(
    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
    child: Container(
      height: 0.8,
      width: double.infinity,
      color: Colors.black12,
    ),
  );
}

class newNotitificationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88.0,
      child: Column(
        children: <Widget>[
          Divider(height: 5.0),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Container(
                    height: 45.0,
                    width: 45.0,
                    decoration: BoxDecoration(
                        color: Color(0xFFD2E1FF).withOpacity(0.3),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 2.0,
                            color: Colors.black12.withOpacity(0.1),
                            spreadRadius: 1.0,
                          )
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(60.0)),
                        image: DecorationImage(
                            image: AssetImage('Image'), fit: BoxFit.contain)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, right: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            'Title',
                            style: TextStyle(
                                fontSize: 17.5,
                                color: Colors.black87,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0),
                        child: Container(
                          width: 220.0,
                          child: Text(
                            'Description',
                            style: new TextStyle(
                                fontSize: 15.0,
                                fontStyle: FontStyle.italic,
                                color: Colors.black38),
                            overflow: TextOverflow.fade,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0, bottom: 31.0),
                  child: Text(
                    "Time",
                    style: TextStyle(
                        fontSize: 13.0,
                        fontFamily: "Sofia",
                        color: Colors.black26),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
