import 'package:flutter/material.dart';
import 'package:crypto_template/Screen/FullApps/Marketplace/dataList/notificationsData.dart';
import 'package:crypto_template/Screen/FullApps/Marketplace/pages/UI/Message/ChatItem.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:crypto_template/Screen/FullApps/Marketplace/pages/UI/Message/EditMessage.dart';

class Message extends StatefulWidget {
  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  final List<Post> items = [];
  @override
  void initState() {
    super.initState();
    setState(() {
      items.add(
        Post(
            image:
                "lib/Screen/FullApps/Marketplace/assets/avatars/avatar-1.jpg",
            id: 1,
            title: "Hanson",
            desc: "I am looking for some models help me a show",
            time: "14:45",
            newMessage: true),
      );
      items.add(
        Post(
            image:
                "lib/Screen/FullApps/Marketplace/assets/avatars/avatar-2.jpg",
            id: 2,
            title: "JeffDevson",
            desc: "Photo",
            time: "Yesterday",
            newMessage: false),
      );
      items.add(
        Post(
            image:
                "lib/Screen/FullApps/Marketplace/assets/avatars/avatar-3.jpg",
            id: 3,
            title: "Merry",
            desc: "Thanks",
            time: "14:45",
            newMessage: false),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final title = 'Dismissing Items';
    MediaQueryData mediaQuery = MediaQuery.of(context);
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    final MediaQueryData media = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 140.0),
            child: items.length > 0
                ? ListView.builder(
                    itemCount: items.length,
                    padding: const EdgeInsets.all(15.0),
                    itemBuilder: (context, position) {
                      return Slidable(
                        startActionPane: ActionPane(
                          // A motion is a widget used to control how the pane animates.
                          motion: const ScrollMotion(),
                          children: [],
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(PageRouteBuilder(
                                pageBuilder: (_, __, ___) => new chatItem()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              height: 85.0,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black12.withOpacity(0.1),
                                        blurRadius: 1.5,
                                        spreadRadius: 0.5)
                                  ]),
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(top: 2.0),
                                    child: ListTile(
                                      title: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            '${items[position].title}',
                                            style: TextStyle(
                                              fontSize: 16.0,
                                              fontFamily: "Sofia",
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black87,
                                            ),
                                          ),
                                          Text(
                                            '${items[position].time}',
                                            style: TextStyle(
                                              fontSize: 12.0,
                                              color: Colors.black87,
                                            ),
                                          ),
                                        ],
                                      ),
                                      subtitle: Row(
                                        children: <Widget>[
                                          Container(
                                            width: 200.0,
                                            child: Text(
                                              '${items[position].desc}',
                                              style: new TextStyle(
                                                  fontSize: 15.0,
                                                  fontStyle: FontStyle.italic,
                                                  color: Colors.black45),
                                            ),
                                          ),
                                          items[position].newMessage!
                                              ? Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 12.0),
                                                  child: CircleAvatar(
                                                    radius: 10.6,
                                                    backgroundColor:
                                                        Colors.redAccent,
                                                    child: Text(
                                                      "2",
                                                      style: TextStyle(
                                                          fontSize: 13.0,
                                                          color: Colors.white),
                                                    ),
                                                  ),
                                                )
                                              : Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 12.0),
                                                  child: CircleAvatar(
                                                    radius: 10.6,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    child: Text(
                                                      "2",
                                                      style: TextStyle(
                                                          fontSize: 13.0,
                                                          color: Colors
                                                              .transparent),
                                                    ),
                                                  ),
                                                )
//                                      CircleAvatar(
//                                        backgroundColor: Colors.redAccent,
//                                        radius: 50.0,
//                                        child: Center(
//                                          child: Text(
//                                            '${items[position].count}',
//                                            style: new TextStyle(
//                                                fontSize: 15.0,
//                                                fontStyle: FontStyle.italic,
//                                                color: Colors.black38
//                                            ),
//                                          ),
//                                        ),
//                                      ),
                                        ],
                                      ),
                                      leading: Column(
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 18.0),
                                            child: Container(
                                              height: 50.0,
                                              width: 50.0,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              60.0)),
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          '${items[position].image}'),
                                                      fit: BoxFit.cover)),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    })
                : noItemNotifications(),
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
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(PageRouteBuilder(
                                      pageBuilder: (_, __, ___) =>
                                          new editMessage(),
//                                    transitionsBuilder: (_,Animation<double> animation,__,Widget widget){
//                                      return Opacity(
//                                        opacity: animation.value,
//                                        child: widget,
//                                      );
//                                    },
//                                      transitionDuration: Duration(milliseconds: 1000),
                                    ));
                                  },
                                  child: Text(
                                    "Edit",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 17.0,
                                        fontFamily: "Sofia",
                                        fontWeight: FontWeight.w400),
                                  )),
                            ),
                            Text(
                              "Message",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontFamily: "Sofia",
                                  fontWeight: FontWeight.w600),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 15.0),
                              child: Text(
                                "Edit",
                                style: TextStyle(color: Colors.transparent),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: media.padding.left + 15,
                      right: media.padding.left + 15,
                      bottom: 10.0,
                      top: 10.0),
                  height: 40.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF656565).withOpacity(0.15),
                          blurRadius: 4.0,
                          spreadRadius: 1.0,
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      shape: BoxShape.rectangle),
                  child: Theme(
                    data: ThemeData(hintColor: Colors.transparent),
                    child: TextField(
                      onTap: () {
                        print('search ONtapped');
                      },
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Icon(
                            Icons.search,
                            color: Colors.black54,
                            size: 20.0,
                          ),
                        ),
                        contentPadding: EdgeInsets.only(top: 10.0),
                        hintText: 'Search',
                        hintStyle: TextStyle(
                            fontFamily: "Sofia",
                            fontWeight: FontWeight.w500,
                            color: Colors.black45,
                            fontSize: 13.0,
                            letterSpacing: 1.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showSnackBar(String text) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: new Text(text)));
  }
}

class noItemNotifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      width: 500.0,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
                padding:
                    EdgeInsets.only(top: mediaQueryData.padding.top + 100.0)),
            Image.asset(
              "lib/Screen/FullApps/Marketplace/assets/img/noNotification.jpg",
              height: 200.0,
            ),
            Padding(padding: EdgeInsets.only(bottom: 30.0)),
            Text(
              "Not Have Message",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18.5,
                  color: Colors.black54,
                  fontFamily: "Sofia"),
            ),
          ],
        ),
      ),
    );
  }
}
