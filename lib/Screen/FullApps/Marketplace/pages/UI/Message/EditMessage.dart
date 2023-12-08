import 'package:flutter/material.dart';
import 'package:crypto_template/Screen/FullApps/Marketplace/dataList/notificationsData.dart';

class editMessage extends StatefulWidget {
  @override
  _editMessageState createState() => _editMessageState();
}

class _editMessageState extends State<editMessage> {
  final List<Post> items = [];
  @override
  void initState() {
    super.initState();
    setState(() {
      items.add(
        Post(
          image: "lib/Screen/FullApps/Marketplace/assets/avatars/avatar-1.jpg",
          id: 1,
          title: "Hanson",
          desc: "I am looking for some models help me a show",
          time: "14:45",
        ),
      );
      items.add(
        Post(
          image: "lib/Screen/FullApps/Marketplace/assets/avatars/avatar-2.jpg",
          id: 2,
          title: "JeffDevson",
          desc: "Photo",
          time: "Yesterday",
        ),
      );
      items.add(
        Post(
          image: "lib/Screen/FullApps/Marketplace/assets/avatars/avatar-3.jpg",
          id: 3,
          title: "Merry",
          desc: "Thanks",
          time: "14:45",
        ),
      );
    });
  }

  int tapvalue1 = 0;

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
          Column(
            children: <Widget>[
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(top: 140.0),
                  child: Container(
                    child: items.length > 0
                        ? ListView.builder(
                            itemCount: items.length,
                            padding: const EdgeInsets.only(top: 20.0),
                            itemBuilder: (context, position) {
                              return Padding(
                                padding: const EdgeInsets.only(
                                    top: 15.0, right: 10.0),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      if (tapvalue1 == 0) {
                                        tapvalue1++;
                                      } else {
                                        tapvalue1--;
                                      }
                                    });
                                  },
                                  child: Row(
                                    children: <Widget>[
                                      Radio(
                                        value: 1,
                                        groupValue: tapvalue1,
                                        onChanged: null,
                                      ),
                                      Expanded(
                                        child: Container(
                                          height: 85.0,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.black12
                                                        .withOpacity(0.1),
                                                    blurRadius: 1.5,
                                                    spreadRadius: 0.5)
                                              ]),
                                          child: Column(
                                            children: <Widget>[
                                              ListTile(
                                                title: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: <Widget>[
                                                    Text(
                                                      '${items[position].title}',
                                                      style: TextStyle(
                                                        fontSize: 16.0,
                                                        fontFamily: "Sofia",
                                                        fontWeight:
                                                            FontWeight.w500,
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
                                                            fontStyle: FontStyle
                                                                .italic,
                                                            color:
                                                                Colors.black45),
                                                      ),
                                                    ),
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
                                                      padding:
                                                          const EdgeInsets.only(
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
                                                                fit: BoxFit
                                                                    .cover)),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            })
                        : noItemNotifications(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Column(
                  children: <Widget>[
                    Divider(
                      color: Colors.black,
                      height: 2.0,
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Text(
                            "Archive",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.blueAccent,
                                fontSize: 16.0),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Text("Delete",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blueAccent,
                                  fontSize: 16.0)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
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
                                    Navigator.of(context).pop();
                                  },
                                  child: Text(
                                    "Done",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15.0,
                                        fontFamily: "Sofia",
                                        fontWeight: FontWeight.w400),
                                  )),
                            ),
                            Text(
                              "0 Message Selected",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontFamily: "Sofia",
                                  fontWeight: FontWeight.w500),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 15.0),
                              child: Text(
                                "Done",
                                style: TextStyle(
                                    color: Colors.transparent,
                                    fontSize: 15.0,
                                    fontFamily: "Sofia",
                                    fontWeight: FontWeight.w400),
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
