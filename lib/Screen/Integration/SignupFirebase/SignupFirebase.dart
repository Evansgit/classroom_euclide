import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUpFirebase extends StatefulWidget {
  SignUpFirebase();

  @override
  _SignUpFirebaseState createState() => _SignUpFirebaseState();
}

class _SignUpFirebaseState extends State<SignUpFirebase> {
  bool isLoading = false;
  final GlobalKey<FormState> _registerFormKey = GlobalKey<FormState>();
  late String _email, _pass, _pass2, _name;
  var profilePicUrl;
  TextEditingController SignUpFirebaseEmailController =
      new TextEditingController();
  TextEditingController SignUpFirebaseNameController =
      new TextEditingController();
  TextEditingController SignUpFirebasePasswordController =
      new TextEditingController();
  TextEditingController SignUpFirebaseConfirmPasswordController =
      new TextEditingController();
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              height: _height,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://images.pexels.com/photos/3987395/pexels-photo-3987395.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                      fit: BoxFit.cover)),
            ),
            Container(
              height: _height,
              width: double.infinity,
              decoration:
                  BoxDecoration(color: Colors.black12.withOpacity(0.05)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 230.0),
              child: Container(
                height: _height,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0)),
                    color: Colors.white),
                child: Form(
                  key: _registerFormKey,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 30.0,
                      ),
                      Text(
                        "Create Account",
                        style: TextStyle(
                            fontFamily: "Sofia",
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 28.0),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 25.0, right: 25.0, top: 40.0),
                        child: Container(
                          height: 53.5,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 6.0,
                                  color: Colors.black12.withOpacity(0.05),
                                  spreadRadius: 1.0)
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 12.0, right: 12.0, top: 5.0),
                            child: Theme(
                              data: ThemeData(hintColor: Colors.transparent),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: TextFormField(
                                  validator: (input) {
                                    if (input!.isEmpty) {
                                      return 'Please input your name';
                                    }
                                    return null;
                                  },
                                  onSaved: (input) => _name = input!,
                                  controller: SignUpFirebaseNameController,
                                  style: new TextStyle(color: Colors.black),
                                  textAlign: TextAlign.start,
                                  keyboardType: TextInputType.name,
                                  autocorrect: false,
                                  autofocus: false,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.all(0.0),
                                      filled: true,
                                      fillColor: Colors.transparent,
                                      labelText: 'Username',
                                      hintStyle:
                                          TextStyle(color: Colors.black38),
                                      labelStyle: TextStyle(
                                        fontFamily: "Sofia",
                                        color: Colors.black38,
                                      )),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 25.0, right: 25.0, top: 15.0),
                        child: Container(
                          height: 53.5,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 6.0,
                                  color: Colors.black12.withOpacity(0.05),
                                  spreadRadius: 1.0)
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 12.0, right: 12.0, top: 5.0),
                            child: Theme(
                              data: ThemeData(hintColor: Colors.transparent),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: TextFormField(
                                  validator: (input) {
                                    if (input!.isEmpty) {
                                      return 'Please input your email';
                                    }
                                    return null;
                                  },
                                  onSaved: (input) => _email = input!,
                                  controller: SignUpFirebaseEmailController,
                                  style: new TextStyle(color: Colors.black),
                                  textAlign: TextAlign.start,
                                  keyboardType: TextInputType.emailAddress,
                                  autocorrect: false,
                                  autofocus: false,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.all(0.0),
                                      filled: true,
                                      fillColor: Colors.transparent,
                                      labelText: 'Email',
                                      hintStyle:
                                          TextStyle(color: Colors.black38),
                                      labelStyle: TextStyle(
                                        fontFamily: "Sofia",
                                        color: Colors.black38,
                                      )),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 25.0, right: 25.0, top: 15.0),
                        child: Container(
                          height: 53.5,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 6.0,
                                  color: Colors.black12.withOpacity(0.05),
                                  spreadRadius: 1.0)
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 12.0, right: 12.0, top: 5.0),
                            child: Theme(
                              data: ThemeData(hintColor: Colors.transparent),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: TextFormField(
                                  controller: SignUpFirebasePasswordController,
                                  validator: (input) {
                                    if (input!.isEmpty) {
                                      return 'Please input your password';
                                    }
                                    if (input.length < 8) {
                                      return 'Input more 8 character';
                                    }
                                    return null;
                                  },
                                  onSaved: (input) => _pass = input!,
                                  style: new TextStyle(color: Colors.black),
                                  textAlign: TextAlign.start,
                                  keyboardType: TextInputType.emailAddress,
                                  autocorrect: false,
                                  obscureText: true,
                                  autofocus: false,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.all(0.0),
                                      filled: true,
                                      fillColor: Colors.transparent,
                                      labelText: 'Password',
                                      hintStyle:
                                          TextStyle(color: Colors.black38),
                                      labelStyle: TextStyle(
                                        fontFamily: "Sofia",
                                        color: Colors.black38,
                                      )),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20.0, top: 64.0),
                        child: InkWell(
                          onTap: () async {
                            SharedPreferences prefs;
                            prefs = await SharedPreferences.getInstance();
                            final formState = _registerFormKey.currentState;
                            if (formState!.validate()) {
                              formState.save();
                              setState(() {
                                isLoading = true;
                              });
                              try {
                                prefs.setString("username", _name);
                                prefs.setString("email", _email);
                                prefs.setString(
                                    "photoURL", profilePicUrl.toString());
                                FirebaseAuth.instance
                                    .createUserWithEmailAndPassword(
                                        email: SignUpFirebaseEmailController
                                            .text
                                            .trim(),
                                        password:
                                            SignUpFirebasePasswordController
                                                .text)
                                    .then((currentUser) => FirebaseFirestore
                                        .instance
                                        .collection("users")
                                        .doc(currentUser.user?.uid)
                                        .set({
                                          "uid": currentUser.user?.uid,
                                          "name":
                                              SignUpFirebaseNameController.text,
                                          "email": SignUpFirebaseEmailController
                                              .text,
                                          "password":
                                              SignUpFirebasePasswordController
                                                  .text,
                                        })
                                        .then((result) => {
                                              Navigator.of(context).pushReplacement(
                                                  PageRouteBuilder(
                                                      pageBuilder: (_, __,
                                                              ___) =>
                                                          new HomeExampleScreen())),
                                            })
                                        .catchError((err) => print(err)))
                                    .catchError((err) => print(err));
                              } catch (e) {
                                print(_email);
                                print(_pass);
                              }
                            } else {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Text("Error"),
                                      content: Text("Please input all form"),
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
                              borderRadius: BorderRadius.circular(80.0),
                              gradient: LinearGradient(colors: [
                                Color(0xFFFEE140),
                                Color(0xFFFF942F),
                              ]),
                            ),
                            child: Center(
                                child: Text(
                              "Sign Up",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Sofia",
                                  letterSpacing: 0.9),
                            )),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 18.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeExampleScreen extends StatefulWidget {
  HomeExampleScreen({Key? key}) : super(key: key);

  @override
  _HomeExampleScreenState createState() => _HomeExampleScreenState();
}

class _HomeExampleScreenState extends State<HomeExampleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
              onTap: () async {
                FirebaseAuth.instance.signOut().then((result) =>
                    Navigator.of(context).pushReplacement(PageRouteBuilder(
                        pageBuilder: (_, ___, ____) => new SignUpFirebase())));
              },
              child: Center(
                child: Container(
                    height: 50.0,
                    width: 150.0,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                    ),
                    child: Center(
                      child: Text(
                        "Logout",
                        style: TextStyle(
                            fontFamily: "Sofia",
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
              ))
        ],
      ),
    );
  }
}
