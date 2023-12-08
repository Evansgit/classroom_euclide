import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:shared_preferences/shared_preferences.dart';

class GoogleScreenLogin extends StatefulWidget {
  GoogleScreenLogin();

  @override
  _GoogleScreenLoginState createState() => _GoogleScreenLoginState();
}

class _GoogleScreenLoginState extends State<GoogleScreenLogin>
    with TickerProviderStateMixin {
  late String nameFacebook;
  late String emailFacebook;
  late Map userProfile;

  bool _isLoggedIn = false;

  _logout() {
    setState(() {
      _isLoggedIn = false;
    });
  }

  final GoogleSignIn googleSignIn = new GoogleSignIn();
  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  _login() async {
    try {
      await _googleSignIn.signIn();
      setState(() async {
        SharedPreferences preferences = await SharedPreferences.getInstance();
        String? nameGoogle = _googleSignIn.currentUser?.displayName;
        late String emailGoogle = _googleSignIn.currentUser!.email;
        late String idGoogle = _googleSignIn.currentUser!.id;

        User user;

        FirebaseAuth.instance
            .createUserWithEmailAndPassword(
                email: emailGoogle, password: "password")
            .then((currentUser) => FirebaseFirestore.instance
                .collection("users")
                .doc(idGoogle)
                .set({
                  "uid": idGoogle,
                  "name": nameGoogle,
                  "email": emailGoogle,
                  "photoProfile": _googleSignIn.currentUser!.photoUrl,
                  "password": "passwordGoogle",
                })
                .then((result) => {
                      Navigator.of(context).pushReplacement(PageRouteBuilder(
                          pageBuilder: (_, __, ___) =>
                              new HomeExampleScreen())),
                    })
                .catchError((err) => print(err)));

        Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => new HomeExampleScreen()));
      });
    } catch (err) {
      print(err);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://images.pexels.com/photos/3241961/pexels-photo-3241961.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                    fit: BoxFit.cover)),
            child: Container(
              child: Container(
                margin: EdgeInsets.only(top: 0.0, bottom: 0.0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: FractionalOffset(0.0, 0.0),
                    end: FractionalOffset(0.0, 1.0),
                    // stops: [0.0, 1.0],
                    colors: <Color>[
                      Color(0xFF1E2026).withOpacity(0.5),
                      Color(0xFF1E2026).withOpacity(0.6),
                      Colors.black.withOpacity(0.7),
                      Colors.black.withOpacity(0.8),
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0, bottom: 70.0),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          "Signin With\nGoogle.",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 46.0,
                              fontWeight: FontWeight.w800,
                              fontFamily: "Sofia",
                              letterSpacing: 1.3),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, top: 70.0, right: 20.0),
                        child: Text(
                          "Login easy with google sign in ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17.0,
                              fontWeight: FontWeight.w200,
                              fontFamily: "Sofia",
                              letterSpacing: 1.3),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 250.0,
                    ),
                    InkWell(
                        splashColor: Colors.white,
                        onTap: () {
                          _login();
                        },
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 20.0, right: 20.0),
                          child: Container(
                            height: 52.0,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(80.0),
                              gradient: LinearGradient(colors: [
                                Color(0xFFFEE140),
                                Color(0xFFFA709A),
                              ]),
                            ),
                            child: Center(
                                child: Text(
                              "Login With Google",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: "Sofia",
                                  letterSpacing: 0.9),
                            )),
                          ),
                        )),
                    SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Button Custom widget
class ButtonCustom extends StatelessWidget {
  @override
  String txt;
  Color gradient1;
  Color gradient2;
  Color border;

  ButtonCustom(
      {required this.txt,
      required this.gradient1,
      required this.gradient2,
      required this.border});

  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: Colors.white,
        child: LayoutBuilder(builder: (context, constraint) {
          return Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Container(
              height: 52.0,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: border,
                ),
                borderRadius: BorderRadius.circular(80.0),
                gradient: LinearGradient(colors: [
                  gradient1,
                  gradient2,
                ]),
              ),
              child: Center(
                  child: Text(
                txt,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17.0,
                    fontWeight: FontWeight.w300,
                    fontFamily: "Sofia",
                    letterSpacing: 0.9),
              )),
            ),
          );
        }),
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
                await GoogleSignIn().disconnect();

                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) =>
                        new GoogleScreenLogin()));
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
