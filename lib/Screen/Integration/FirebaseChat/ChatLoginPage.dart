import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'ChatLoading.dart';
import 'ChatUserList.dart';
import 'package:shared_preferences/shared_preferences.dart';

String? curruserid = '', currusername = '';
late User currentUser;

class ChatLoginPage extends StatefulWidget {
  ChatLoginPage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  ChatLoginPageState createState() => ChatLoginPageState();
}

class ChatLoginPageState extends State<ChatLoginPage> {
  final GoogleSignIn googleSignIn = GoogleSignIn();
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  bool isLoading = false;

  @override
  void initState() {
    super.initState();
  }

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
                .collection("chatusers")
                .doc(idGoogle)
                .set({
                  'createdAt': DateTime.now().millisecondsSinceEpoch.toString(),
                  'chattingWith': null,
                  "uid": idGoogle,
                  "name": nameGoogle,
                  "email": emailGoogle,
                  "photoProfile": _googleSignIn.currentUser!.photoUrl,
                  "password": "passwordGoogle",
                })
                .then((result) => {
                      Navigator.of(context).pushReplacement(PageRouteBuilder(
                          pageBuilder: (_, __, ___) =>
                              new ChatUserList(currentUserId: idGoogle))),
                    })
                .catchError((err) => print(err)));
      });
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (BuildContext context) =>
              ChatUserList(currentUserId: "idGoogle")));
    } catch (err) {
      print(err);
    }
  }

  Future<Null> handleSignIn() async {
    this.setState(() {
      isLoading = true;
    });

    if (await googleSignIn.isSignedIn()) {
      await googleSignIn.disconnect();
      await googleSignIn.signOut();
    }

    GoogleSignInAccount googleUser =
        await (googleSignIn.signIn() as FutureOr<GoogleSignInAccount>);
    GoogleSignInAuthentication googleAuth = await googleUser.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    User firebaseUser =
        (await firebaseAuth.signInWithCredential(credential)).user!;

    print("==user--${firebaseUser.uid}");

    final QuerySnapshot result = await FirebaseFirestore.instance
        .collection('chatusers')
        .where('id', isEqualTo: firebaseUser.uid)
        .get();
    final List<DocumentSnapshot> documents = result.docs;
    if (documents.length == 0) {
      FirebaseFirestore.instance
          .collection('chatusers')
          .doc(firebaseUser.uid)
          .set({
        'name': firebaseUser.displayName,
        'id': firebaseUser.uid,
        'createdAt': DateTime.now().millisecondsSinceEpoch.toString(),
        'chattingWith': null
      });

      // Write data to local
      currentUser = firebaseUser;
      curruserid = currentUser.uid;
      currusername = currentUser.displayName;
    } else {
      // Write data to local
      curruserid = (documents[0].data() as Map)['id'];
      currusername = (documents[0].data() as Map)['name'];
    }

    this.setState(() {
      isLoading = false;
    });

    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) =>
                ChatUserList(currentUserId: firebaseUser.uid)));
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login', style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.white,
          leading: BackButton(color: Colors.black),
          centerTitle: true,
        ),
        body: Stack(
          children: <Widget>[
            Center(
              child: ElevatedButton(
                onPressed: () => handleSignIn().catchError((err) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text('Sign in failed')));
                  this.setState(() {
                    isLoading = false;
                  });
                }),
                child: Text(
                  'SIGN IN WITH GOOGLE',
                  style: TextStyle(fontSize: 16.0),
                ),
                style: raisedButtonStyle,
              ),
            ),

            // Loading
            Positioned(
              child: isLoading ? ChatLoading() : Container(),
            ),
          ],
        ));
  }

  ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    foregroundColor: Colors.white, backgroundColor: Color(0xffdd4b39),

    // highlightColor: Color(0xffff7f7f),
    padding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
    /* shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(15)),
    ),*/
  );
}
