import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CreateFirebase extends StatefulWidget {
  CreateFirebase();

  @override
  _CreateFirebaseState createState() => _CreateFirebaseState();
}

class _CreateFirebaseState extends State<CreateFirebase> {
  @override
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  late String _name, _title, _description;

  TextEditingController name = new TextEditingController();
  TextEditingController title = new TextEditingController();
  TextEditingController description = new TextEditingController();

  Widget build(BuildContext context) {
    void addData() {
      FirebaseFirestore.instance
          .runTransaction((Transaction transaction) async {
        FirebaseFirestore.instance.collection("information").add({
          "Name": _name,
          "Title": _title,
          "Description": _description,
        });
      });
      Navigator.pop(context);
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          "Create Information",
          style: TextStyle(fontFamily: "Sofia", fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 25.0, right: 25.0),
          child: Form(
            key: _form,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  "Name",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15.0,
                      fontFamily: "Sofia"),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  validator: (input) {
                    if (input!.isEmpty) {
                      return 'Please input your name';
                    }
                    return null;
                  },
                  onSaved: (input) => _name = input!,
                  controller: name,
                  keyboardType: TextInputType.text,
                  textCapitalization: TextCapitalization.words,
                  style: TextStyle(
                      fontFamily: "WorkSansSemiBold",
                      fontSize: 16.0,
                      color: Colors.black),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 0.5,
                            color: Colors.black12.withOpacity(0.01))),
                    contentPadding: EdgeInsets.all(13.0),
                    hintText: "Input your name",
                    hintStyle: TextStyle(fontFamily: "Sans", fontSize: 15.0),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text("Title",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15.0,
                        fontFamily: "Sofia")),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  validator: (input) {
                    if (input!.isEmpty) {
                      return 'Please input your title';
                    }
                    return null;
                  },
                  onSaved: (input) => _title = input!,
                  controller: title,
                  keyboardType: TextInputType.text,
                  textCapitalization: TextCapitalization.words,
                  style: TextStyle(
                      fontFamily: "WorkSansSemiBold",
                      fontSize: 16.0,
                      color: Colors.black),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 0.5,
                            color: Colors.black12.withOpacity(0.01))),
                    contentPadding: EdgeInsets.all(13.0),
                    hintText: "Input your title",
                    hintStyle: TextStyle(fontFamily: "Sans", fontSize: 15.0),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text("Detail Information",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15.0,
                        fontFamily: "Sofia")),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  color: Colors.white,
                  width: double.infinity,
                  child: TextFormField(
                    validator: (input) {
                      if (input!.isEmpty) {
                        return 'Please input your information';
                      }
                      return null;
                    },
                    maxLines: 6,
                    onSaved: (input) => _description = input!,
                    controller: description,
                    keyboardType: TextInputType.text,
                    textCapitalization: TextCapitalization.words,
                    style: TextStyle(
                        fontFamily: "WorkSansSemiBold",
                        fontSize: 16.0,
                        color: Colors.black),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 0.5,
                              color: Colors.black12.withOpacity(0.01))),
                      contentPadding: EdgeInsets.all(13.0),
                      hintText: "Input your problem",
                      hintStyle: TextStyle(fontFamily: "Sans", fontSize: 15.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100.0,
                ),
                InkWell(
                  onTap: () {
                    final formState = _form.currentState;

                    if (formState!.validate()) {
                      formState.save();
                      setState(() {});

                      addData();
                    } else {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text("Error"),
                              content: Text("Please input your information"),
                              actions: <Widget>[
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0.0, backgroundColor: Colors.transparent,
                                  ),
                                  child: Text("Close"),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                )
                              ],
                            );
                          });
                    }
                  },
                  child: Container(
                    height: 52.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.all(Radius.circular(40.0))),
                    child: Center(
                      child: Text(
                        "Input Data",
                        style: TextStyle(
                            fontFamily: "Sofia",
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
