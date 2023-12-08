import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignInFirebase extends StatefulWidget {
  @override
  _SignInFirebaseState createState() => _SignInFirebaseState();
}

class _SignInFirebaseState extends State<SignInFirebase> {
  bool isLoading = false;

  final GlobalKey<FormState> _registerFormKey = GlobalKey<FormState>();
  late String _email, _pass, _email2, _pass2, _name, _id;

  TextEditingController loginEmailController = new TextEditingController();
  TextEditingController loginPasswordController = new TextEditingController();

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
                          "https://images.pexels.com/photos/4114132/pexels-photo-4114132.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                      fit: BoxFit.cover)),
            ),
            Container(
              height: _height,
              width: double.infinity,
              decoration:
                  BoxDecoration(color: Colors.black12.withOpacity(0.01)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 300.0),
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
                        "Welcome Back",
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
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 6.0,
                                  color: Colors.black12.withOpacity(0.05),
                                  spreadRadius: 1.0)
                            ],
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
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
                                      return 'Please typle an email';
                                    }
                                    return null;
                                  },
                                  onSaved: (input) => _email = input!,
                                  controller: loginEmailController,
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
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 6.0,
                                  color: Colors.black12.withOpacity(0.05),
                                  spreadRadius: 1.0)
                            ],
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            border: Border.all(
                              color: Colors.black12,
                              width: 0.15,
                            ),
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
                                      return 'Please typle an password';
                                    }
                                    return null;
                                  },
                                  onSaved: (input) => _pass = input!,
                                  controller: loginPasswordController,
                                  style: new TextStyle(color: Colors.black),
                                  textAlign: TextAlign.start,
                                  keyboardType: TextInputType.emailAddress,
                                  autocorrect: false,
                                  autofocus: false,
                                  obscureText: true,
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
                            late User user;
                            if (formState!.validate()) {
                              formState.save();
                              try {
                                prefs.setString("username", _email);
                                prefs.setString("id", _id);
                                user = (await FirebaseAuth.instance
                                        .signInWithEmailAndPassword(
                                            email: _email, password: _pass))
                                    .user!;

                                setState(() {
                                  isLoading = true;
                                });
                                // user.sendEmailVerification();

                              } catch (e) {
                                print('Error: $e');
                                CircularProgressIndicator();
                                print(_email);

                                print(_pass);
                              } finally {
                                // ignore: unnecessary_null_comparison
                                if (user != null) {
                                  user = (await FirebaseAuth.instance
                                      .signInWithEmailAndPassword(
                                          email: _email, password: _pass)
                                      .then((currentUser) => FirebaseFirestore
                                          .instance
                                          .collection("users")
                                          .doc(currentUser.user?.uid)
                                          .get()
                                          .then((DocumentSnapshot result) => Navigator
                                                  .of(context)
                                              .pushReplacement(PageRouteBuilder(
                                                  pageBuilder: (_, __, ___) =>
                                                      new HomeExampleScreen())))
                                          .catchError((err) => print(err)))
                                      .catchError((err) => print(err)));
                                } else {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          title: Text("Login Failed"),
                                          content: Text(
                                              "Please check your password and try again!"),
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
                              }
                            } else {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Text("Error"),
                                      content: Text(
                                          "Please check your email and password"),
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
                            ;
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
                              "Login",
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
                        pageBuilder: (_, ___, ____) => new SignInFirebase())));
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
