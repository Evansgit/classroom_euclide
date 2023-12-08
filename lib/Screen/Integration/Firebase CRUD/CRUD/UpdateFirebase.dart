import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class UpdateFirebase extends StatefulWidget {
  @override
  _UpdateFirebaseState createState() => _UpdateFirebaseState();
}

class _UpdateFirebaseState extends State<UpdateFirebase> {
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
                pageBuilder: (_, __, ___) => new updateData(
                      title: title,
                      desc: description,
                      id: list[i].reference.id,
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

class updateData extends StatefulWidget {
  String name, desc, title, id;
  updateData(
      {required this.name,
      required this.title,
      required this.desc,
      required this.id});

  @override
  _updateDataState createState() => _updateDataState();
}

class _updateDataState extends State<updateData> {
  @override
  void initState() {
    nameController = TextEditingController(text: widget.name);
    descController = TextEditingController(text: widget.desc);
    titleController = TextEditingController(text: widget.title);
    // TODO: implement initState
    super.initState();
  }

  @override
  late TextEditingController nameController, descController, titleController;

  updateData() async {
    await FirebaseFirestore.instance
        .collection('information')
        .doc(widget.id)
        .update({
      "Name": nameController.text,
      "Description": descController.text,
      "Title": titleController.text
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.7,
        centerTitle: true,
        title: Text(
          "Update Data",
          style: TextStyle(
              fontFamily: "Sofia", fontSize: 19.0, fontWeight: FontWeight.w400),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30.0,
              ),
              Text(
                "Name",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Sofia",
                    fontSize: 18.0,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 5.0,
              ),
              Container(
                height: 50.0,
                width: double.infinity,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10.0,
                          color: Colors.black12.withOpacity(0.1)),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(40.0))),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Theme(
                      data: ThemeData(
                        highlightColor: Colors.white,
                        hintColor: Colors.white,
                      ),
                      child: TextFormField(
                          style: TextStyle(
                              color: Colors.black87, fontFamily: "Sofia"),
                          controller: nameController,
                          decoration: InputDecoration(
                            hintText: 'Name',
                            hintStyle: TextStyle(
                                color: Colors.black54, fontFamily: "Sofia"),
                            enabledBorder: new UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1.0,
                                  style: BorderStyle.none),
                            ),
                          )),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                "Title",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Sofia",
                    fontSize: 18.0,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 5.0,
              ),
              Container(
                height: 50.0,
                width: double.infinity,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10.0,
                          color: Colors.black12.withOpacity(0.1)),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(40.0))),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Theme(
                      data: ThemeData(
                        highlightColor: Colors.white,
                        hintColor: Colors.white,
                      ),
                      child: TextFormField(
                          style: TextStyle(
                              color: Colors.black87, fontFamily: "Sofia"),
                          controller: titleController,
                          decoration: InputDecoration(
                            hintText: 'Title',
                            hintStyle: TextStyle(
                                color: Colors.black54, fontFamily: "Sofia"),
                            enabledBorder: new UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1.0,
                                  style: BorderStyle.none),
                            ),
                          )),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                "Description",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Sofia",
                    fontSize: 18.0,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 5.0,
              ),
              Container(
                height: 50.0,
                width: double.infinity,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10.0,
                          color: Colors.black12.withOpacity(0.1)),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(40.0))),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Theme(
                      data: ThemeData(
                        highlightColor: Colors.white,
                        hintColor: Colors.white,
                      ),
                      child: TextFormField(
                          style: TextStyle(
                              color: Colors.black87, fontFamily: "Sofia"),
                          controller: descController,
                          decoration: InputDecoration(
                            hintText: 'Description',
                            hintStyle: TextStyle(
                                color: Colors.black54, fontFamily: "Sofia"),
                            enabledBorder: new UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1.0,
                                  style: BorderStyle.none),
                            ),
                          )),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 80.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: InkWell(
                  onTap: () {
                    updateData();
                    //  uploadImage();
                    _showDialog(context);
                  },
                  child: Container(
                    height: 55.0,
                    width: double.infinity,
                    child: Center(
                      child: Text("Update Profile",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 17.0,
                              fontFamily: "Sofia")),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(40.0)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Card Popup if success payment
_showDialog(BuildContext ctx) {
  showDialog(
    context: ctx,
    barrierDismissible: true,
    builder: (BuildContext context) => SimpleDialog(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: InkWell(
                    onTap: () {
                      Navigator.of(ctx).pop();
                    },
                    child: Icon(
                      Icons.close,
                      size: 30.0,
                    ))),
            SizedBox(
              width: 10.0,
            )
          ],
        ),
        Container(
            padding: EdgeInsets.only(top: 30.0, right: 60.0, left: 60.0),
            color: Colors.white,
            child: Icon(
              Icons.check_circle,
              size: 150.0,
              color: Colors.green,
            )),
        Center(
            child: Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Text(
            "Succes",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22.0),
          ),
        )),
        Center(
            child: Padding(
          padding: const EdgeInsets.only(top: 30.0, bottom: 40.0),
          child: Text(
            "Update Information Succes",
            style: TextStyle(fontSize: 17.0),
          ),
        )),
      ],
    ),
  );
}
