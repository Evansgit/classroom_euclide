import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class FacebookScreenLogin extends StatefulWidget {
  FacebookScreenLogin();

  @override
  _FacebookScreenLoginState createState() => _FacebookScreenLoginState();
}

class _FacebookScreenLoginState extends State<FacebookScreenLogin>
    with TickerProviderStateMixin {
  late String nameFacebook;
  late String emailFacebook;
  late Map userProfile;

  AccessToken? _accessToken;
  UserModel? _currentUser;
  bool _isLoggedIn = false;

  Future<void> signIn() async {
    final LoginResult result = await FacebookAuth.i.login();

    if (result.status == LoginStatus.success) {
      _accessToken = result.accessToken;

      final data = await FacebookAuth.i.getUserData();
      UserModel model = UserModel.fromJson(data);

      _currentUser = model;
      setState(() {
        Navigator.of(context).pushReplacement(PageRouteBuilder(
            pageBuilder: (_, __, ___) => new HomeExampleScreen()));
      });
    }
  }

  Future<void> signOut() async {
    await FacebookAuth.i.logOut();
    _currentUser = null;
    _accessToken = null;
    setState(() {});
  }

  _loginWithFB() async {
    // final result = await facebookLogin.logIn(['email']);

    // switch (result.status) {
    //   case FacebookLoginStatus.loggedIn:
    //     final token = result.accessToken.token;
    //     final graphResponse = await http.get(
    //         'https://graph.facebook.com/v2.12/me?fields=name,picture,email&access_token=${token}');
    //     final profile = JSON.jsonDecode(graphResponse.body);
    //     print(profile);
    //     SharedPreferences preferences;
    //     preferences = await SharedPreferences.getInstance();
    //     nameFacebook = profile["name"];
    //     emailFacebook = profile["email"];

    //     preferences.setString("name", nameFacebook);
    //     preferences.setString("email", emailFacebook);
    //     setState(() {
    //       nameFacebook = profile["name"];
    //       emailFacebook = profile["email"];

    //       User user;

    //       FirebaseAuth.instance
    //           .createUserWithEmailAndPassword(
    //               email: emailFacebook, password: "password")
    //           .then((currentUser) => FirebaseFirestore.instance
    //               .collection("users")
    //               .doc(currentUser.user.uid)
    //               .set({
    //                 "uid": currentUser.user.uid,
    //                 "name": nameFacebook,
    //                 "email": emailFacebook,
    //                 "password": "passwordFacebook",
    //                 "photoProfile": profile["picture"]["data"]["url"]
    //               })
    //               .then((result) => {
    //                     Navigator.of(context).pushReplacement(PageRouteBuilder(
    //                         pageBuilder: (_, __, ___) =>
    //                             new HomeExampleScreen())),
    //                   })
    //               .catchError((err) => print(err)));

    //       // Navigator.of(context).pushReplacement(MaterialPageRoute(
    //       //     builder: (BuildContext context) => new BottomNavBar(
    //       //           idUser: idFacebook,
    //       //           themeBloc: themeBloc,
    //       //         )));
    //     });

    //     break;

    //   case FacebookLoginStatus.cancelledByUser:
    //     setState(() => _isLoggedIn = false);
    //     break;
    //   case FacebookLoginStatus.error:
    //     setState(() => _isLoggedIn = false);
    //     break;
    // }
  }

  _logout() {
    // facebookLogin.logOut();
    setState(() {
      _isLoggedIn = false;
    });
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
                        "https://images.pexels.com/photos/3225517/pexels-photo-3225517.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
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
                          "Signin With\nFacebook.",
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
                          "Login easy with Facebook sign in ",
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
                          signIn();
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
                                Colors.blue,
                                Colors.blueAccent,
                              ]),
                            ),
                            child: Center(
                                child: Text(
                              "Login With Facebook",
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

class UserModel {
  final String? email;
  final String? id;
  final String? name;
  final PictureModel? pictureModel;

  const UserModel({this.name, this.pictureModel, this.email, this.id});

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
      email: json['email'],
      id: json['id'] as String?,
      name: json['name'],
      pictureModel: PictureModel.fromJson(json['picture']['data']));
}

class PictureModel {
  final String? url;
  final int? width;
  final int? height;

  const PictureModel({this.width, this.height, this.url});

  factory PictureModel.fromJson(Map<String, dynamic> json) => PictureModel(
      url: json['url'], width: json['width'], height: json['height']);
}

/// Button Custom widget
class ButtonCustom extends StatelessWidget {
  String txt;
  Color gradient1;
  Color gradient2;
  Color border;

  ButtonCustom(
      {required this.txt,
      required this.gradient1,
      required this.gradient2,
      required this.border});
  @override
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
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) =>
                        new FacebookScreenLogin()));
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
