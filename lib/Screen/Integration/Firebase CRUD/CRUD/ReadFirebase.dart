import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ReadFirebase extends StatefulWidget {
  @override
  _ReadFirebaseState createState() => _ReadFirebaseState();
}

class _ReadFirebaseState extends State<ReadFirebase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.7,
        centerTitle: true,
        title: Text(
          "Read Database",
          style: TextStyle(
              fontFamily: "Sofia", fontSize: 19.0, fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection("information")
                  .snapshots(),
              builder:
                  (BuildContext ctx, AsyncSnapshot<QuerySnapshot> snapshot) {
                return Card(
                  list: snapshot.data!.docs,
                  dataUser: '',
                );
              },
            ),
            SizedBox(
              height: 15.0,
            )
          ],
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  String dataUser;
  final List<DocumentSnapshot> list;
  Card({required this.dataUser, required this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(top: 0.0),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      primary: false,
      itemCount: list.length,
      itemBuilder: (context, i) {
        String title = list[i].get('Title').toString();
        String description = list[i].get('Description').toString();
        String name = list[i].get('Name').toString();

        return InkWell(
          onTap: () {
            Navigator.of(context).push(PageRouteBuilder(
                pageBuilder: (_, __, ___) => new readDetail(
                      title: title,
                      desc: description,
                      name: name,
                    ),
                transitionDuration: Duration(milliseconds: 1000),
                transitionsBuilder:
                    (_, Animation<double> animation, __, Widget child) {
                  return Opacity(
                    opacity: animation.value,
                    child: child,
                  );
                }));
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 200.0,
                  child: Text(
                    title,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Sofia",
                        fontSize: 18.0,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 2.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2.1,
                  child: Text(
                    description,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.black45,
                        fontFamily: "Sofia",
                        fontSize: 18.0,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  height: 0.4,
                  width: double.infinity,
                  color: Colors.black12.withOpacity(0.2),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

class readDetail extends StatefulWidget {
  String name, desc, title;
  readDetail({required this.name, required this.title, required this.desc});

  @override
  _readDetailState createState() => _readDetailState();
}

class _readDetailState extends State<readDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.7,
        centerTitle: true,
        title: Text(
          "Information Detail",
          style: TextStyle(
              fontFamily: "Sofia", fontSize: 19.0, fontWeight: FontWeight.w400),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 10.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Name : \t",
                  style: TextStyle(
                      fontFamily: "Sofia",
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0),
                ),
                Text(
                  widget.name,
                  style: TextStyle(
                      fontFamily: "Sofia",
                      fontWeight: FontWeight.w300,
                      fontSize: 19.0),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Text(
                  "Title : \t",
                  style: TextStyle(
                      fontFamily: "Sofia",
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0),
                ),
                Text(
                  widget.title,
                  style: TextStyle(
                      fontFamily: "Sofia",
                      fontWeight: FontWeight.w300,
                      fontSize: 19.0),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Text(
                  "Description : \t",
                  style: TextStyle(
                      fontFamily: "Sofia",
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0),
                ),
                Text(
                  widget.desc,
                  style: TextStyle(
                      fontFamily: "Sofia",
                      fontWeight: FontWeight.w300,
                      fontSize: 19.0),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
