import 'package:flutter/material.dart';


class Concept3Drawer extends StatefulWidget {
  Concept3Drawer();

  @override
  Concept3DrawerState createState() => new Concept3DrawerState();
}

class Concept3DrawerState extends State<Concept3Drawer> {
  GlobalKey<ScaffoldMessengerState> scaffoldKey =
      GlobalKey<ScaffoldMessengerState>();
  late BuildContext context;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;
    Widget widget = Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: new AppBar(
          title: new Text("Concept 3"),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ]),
      drawer: Container(
        width: 170.0,
        child: Drawer(
          child: Drawer(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 150.0,
                  ),
                  ListTile(
                    title: Text(
                      "Home",
                    ),
                    leading: Icon(Icons.home, size: 25.0, color: Colors.grey),
                  ),
                  ListTile(
                    title: Text(
                      "Account",
                    ),
                    leading: Icon(Icons.account_circle,
                        size: 25.0, color: Colors.grey),
                  ),
                  ListTile(
                    title: Text(
                      "Search",
                    ),
                    leading: Icon(Icons.youtube_searched_for,
                        size: 25.0, color: Colors.grey),
                  ),
                  ListTile(
                    title: Text(
                      "Alarm",
                    ),
                    leading: Icon(Icons.access_alarms,
                        size: 25.0, color: Colors.grey),
                  ),
                  ListTile(
                    title: Text(
                      "Comment",
                    ),
                    leading:
                        Icon(Icons.add_comment, size: 25.0, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Divider(),
                  ListTile(
                    title: Text(
                      "Settings",
                    ),
                    leading:
                        Icon(Icons.settings, size: 25.0, color: Colors.grey),
                  ),
                  ListTile(
                    title: Text(
                      "Help",
                    ),
                    leading: Icon(Icons.help_outline,
                        size: 25.0, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            InkWell(
                onTap: () {},
                child: itemCard(
                  image: "assets/images/category3.jpg",
                  title: "Restaurant",
                )),
            InkWell(
                onTap: () {},
                child: itemCard(
                  image: "assets/images/category5.jpg",
                  title: "Home Made",
                )),
            InkWell(
                onTap: () {},
                child: itemCard(
                  image: "assets/images/category6.jpg",
                  title: "Street Food",
                )),
            InkWell(
                onTap: () {},
                child: itemCard(
                  image: "assets/images/category7.jpg",
                  title: "Catering Service",
                )),
          ],
        ),
      ),
    );
    return widget;
  }
}

class itemCard extends StatelessWidget {
  String? image, title;
  itemCard({this.image, this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 10.0, right: 10.0, top: 8.0, bottom: 5.0),
      child: Container(
        height: 140.0,
        width: 400.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
        child: Material(
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              image:
                  DecorationImage(image: AssetImage(image!), fit: BoxFit.cover),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFABABAB).withOpacity(0.7),
                  blurRadius: 4.0,
                  spreadRadius: 3.0,
                ),
              ],
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                color: Colors.black12.withOpacity(0.1),
              ),
              child: Center(
                child: Text(
                  title!,
                  style: TextStyle(
                    shadows: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.7),
                          blurRadius: 10.0,
                          spreadRadius: 2.0)
                    ],
                    color: Colors.white,
                    fontFamily: "Sofia",
                    fontWeight: FontWeight.w800,
                    fontSize: 39.0,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
