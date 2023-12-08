import 'package:crypto_template/Screen/UI_Screen/Plane_Apps/Component/Toggle.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'Connections.dart';
import 'FaceIDScreen.dart';
import 'Home2.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _value = true;
  String _true = "true";

  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      backgroundColor: Color(0xFFECF2F9),
      drawer: Drawer(
        child: _drawer(),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            _value
                ? Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 45.0, left: 20.0),
                            child: InkWell(
                              onTap: () {
                                _drawerKey.currentState!.openDrawer();
                              },
                              child: Container(
                                height: 50.0,
                                width: 50.0,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/boxHome.png"))),
                                child: Center(
                                  child: Image.asset(
                                      "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/menuHome.png"),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 45.0, right: 20.0),
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).push(PageRouteBuilder(
                                    pageBuilder: (_, __, ___) => new Home2()));
                              },
                              child: Container(
                                height: 50.0,
                                width: 50.0,
                                child: Center(
                                    child: Icon(
                                  Icons.home,
                                  color: Color(0xFF0979FF),
                                )),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        height: 40.0,
                        width: 180.0,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(80.0)),
                            color: Color(0xFFECF2F9),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10.0,
                                spreadRadius: 4.0,
                                color: Colors.black12.withOpacity(0.1),
                              )
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Received",
                              style: TextStyle(
                                  fontSize: 11.0,
                                  fontFamily: "Sofia",
                                  color: Color(0xFF0979FF),
                                  fontWeight: FontWeight.w600),
                            ),
                            Container(
                              width: 0.4,
                              height: 37.0,
                              color: Colors.blue,
                            ),
                            Text(
                              "Shared",
                              style: TextStyle(
                                  fontSize: 11.0,
                                  fontFamily: "Sofia",
                                  color: Color(0xFF0979FF),
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30.0),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 20.0),
                        child: Image.asset(
                            "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/graph.png",
                            height: 180.0,
                            width: 400.0),
                      ),
                      SizedBox(height: 30.0),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 20.0),
                        child: Image.asset(
                            "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/graph2.png",
                            height: 130.0,
                            width: 400.0),
                      ),
                    ],
                  )
                : _hide(),
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height - 180),
                  child: Center(
                    child: LiteRollingSwitchCustom(
                      //initial value
                      value: true,

                      textOn: 'Hide',
                      textOff: 'Show',
                      colorOn: Color(0xFFECF2F9),
                      colorOff: Color(0xFFECF2F9),
                      iconOn: Icons.remove_red_eye,
                      iconOff: Icons.remove_red_eye_outlined,
                      textSize: 12.0,
                      onChanged: (state) {
                        setState(() {
                          _value = state!;
                        });
                        print('Current State of SWITCH IS: $state');
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: 20.5,
                      right: 20.5,
                      top: MediaQuery.of(context).size.height - 120),
                  child: Container(
                    height: 90.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xFFECF2F9),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(2.0, 3.3),
                            blurRadius: 10.0,
                            spreadRadius: 4.0,
                            color: Colors.black12.withOpacity(0.1),
                          )
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(37.0))),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 0.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(PageRouteBuilder(
                                    pageBuilder: (_, __, ___) =>
                                        Connections()));
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 5.0, left: 30.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 50.0,
                                      width: 50.0,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/boxHome.png"))),
                                      child: Center(
                                        child: Image.asset(
                                            "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/connectionHome.png"),
                                      ),
                                    ),
                                    Text(
                                      "Connections",
                                      style: TextStyle(
                                          fontFamily: "Sofia",
                                          color: Color(0xFF0979FF),
                                          fontSize: 10.0,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 5.0, left: 0.0),
                              child: Container(
                                height: 50.0,
                                width: 50.0,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0xFF16B1FF),
                                          blurRadius: 7.0,
                                          spreadRadius: 1.0)
                                    ],
                                    color: Color(0xFF16B1FF),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(50.0),
                                    )),
                                child: Center(
                                  child: Image.asset(
                                      "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/plusHome.png"),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 5.0, right: 30.0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(PageRouteBuilder(
                                      pageBuilder: (_, __, ___) =>
                                          FaceIDScreen()));
                                },
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 50.0,
                                      width: 50.0,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/boxHome.png"))),
                                      child: Center(
                                        child: Image.asset(
                                            "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/Wallet.png"),
                                      ),
                                    ),
                                    Text(
                                      "Credentials",
                                      style: TextStyle(
                                          fontFamily: "Sofia",
                                          color: Color(0xFF0979FF),
                                          fontSize: 10.0,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _hide() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 45.0, left: 20.0),
              child: Container(
                height: 50.0,
                width: 50.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/boxHome.png"))),
                child: Center(
                  child: Image.asset(
                      "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/menuHome.png"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 45.0, right: 20.0),
              child: Container(
                height: 50.0,
                width: 50.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/boxHome.png"))),
                child: Center(
                  child: Stack(children: [
                    Image.asset(
                        "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/notifHome.png"),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0, top: 3.0),
                      child: CircleAvatar(
                        radius: 5.5,
                        backgroundColor: Colors.redAccent,
                        child: Center(
                          child: Text(
                            "2",
                            style:
                                TextStyle(color: Colors.white, fontSize: 8.0),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 70.0),
        Lottie.asset("lib/Screen/UI_Screen/Plane_Apps/Assets/seo.json",
            height: 300.0, width: 500.0),
      ],
    );
  }

  Widget _drawer() {
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.white
          //  canvasColor:
          //    Color(0xFFECF2F9), //This will change the drawer background to blue.
          //other styles
          ),
      child: Drawer(
        child: SingleChildScrollView(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Image.asset(
                      "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/Circle.png")),
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey[100],
                      child: CircleAvatar(
                        radius: 45,
                        backgroundImage: NetworkImage(
                            "https://images.pexels.com/photos/1680172/pexels-photo-1680172.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 5.0,
                        ),
                        Container(
                          width: 115.0,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40.0)),
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color(0xFF16B1FF),
                                    Color(0xFF0979FF),
                                    Color(0xFF0979FF),
                                  ]),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12.withOpacity(0.08),
                                  blurRadius: 10.0,
                                  spreadRadius: 3.0,
                                )
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Center(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                        "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/drawer/verified.png"),
                                    SizedBox(
                                      width: 3.0,
                                    ),
                                    Text(
                                      "Verifiled",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: "Sofia",
                                          letterSpacing: 0.9),
                                    ),
                                  ],
                                ),
                              ],
                            )),
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "Hayder Majeed",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF0979FF),
                              fontSize: 17.0),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 25.0, bottom: 0.0),
                    title: Text(
                      "Home",
                      style: TextStyle(
                          fontFamily: "Sofia",
                          color: Color(0xFF0979FF),
                          fontWeight: FontWeight.w600,
                          fontSize: 17.0),
                    ),
                    leading: Image.asset(
                      "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/drawer/home.png",
                      fit: BoxFit.cover,
                      height: 22.0,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black26,
                      size: 15.0,
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 0.0, bottom: 0.0),
                    title: Text(
                      "Profile",
                      style: TextStyle(
                          fontFamily: "Sofia",
                          color: Color(0xFF0979FF),
                          fontWeight: FontWeight.w600,
                          fontSize: 17.0),
                    ),
                    leading: Image.asset(
                      "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/drawer/profile.png",
                      fit: BoxFit.cover,
                      height: 22.0,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black26,
                      size: 15.0,
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 0.0, bottom: 0.0),
                    title: Text(
                      "Network",
                      style: TextStyle(
                          fontFamily: "Sofia",
                          color: Color(0xFF0979FF),
                          fontWeight: FontWeight.w600,
                          fontSize: 17.0),
                    ),
                    leading: Image.asset(
                      "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/drawer/nekwork.png",
                      fit: BoxFit.cover,
                      height: 22.0,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black26,
                      size: 15.0,
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 0.0, bottom: 0.0),
                    title: Text(
                      "Verification",
                      style: TextStyle(
                          fontFamily: "Sofia",
                          color: Color(0xFF0979FF),
                          fontWeight: FontWeight.w600,
                          fontSize: 17.0),
                    ),
                    leading: Image.asset(
                      "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/drawer/verification.png",
                      fit: BoxFit.cover,
                      height: 22.0,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black26,
                      size: 15.0,
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 0.0, bottom: 0.0),
                    title: Text(
                      "Biometrics",
                      style: TextStyle(
                          fontFamily: "Sofia",
                          color: Color(0xFF0979FF),
                          fontWeight: FontWeight.w600,
                          fontSize: 17.0),
                    ),
                    leading: Image.asset(
                      "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/drawer/biometric.png",
                      fit: BoxFit.cover,
                      height: 22.0,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black26,
                      size: 15.0,
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 0.0, bottom: 0.0),
                    title: Text(
                      "Language",
                      style: TextStyle(
                          fontFamily: "Sofia",
                          color: Color(0xFF0979FF),
                          fontWeight: FontWeight.w600,
                          fontSize: 17.0),
                    ),
                    leading: Image.asset(
                      "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/drawer/language.png",
                      fit: BoxFit.cover,
                      height: 22.0,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black26,
                      size: 15.0,
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 0.0, bottom: 0.0),
                    title: Text(
                      "Messages",
                      style: TextStyle(
                          fontFamily: "Sofia",
                          color: Color(0xFF0979FF),
                          fontWeight: FontWeight.w600,
                          fontSize: 17.0),
                    ),
                    leading: Image.asset(
                      "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/drawer/messages.png",
                      fit: BoxFit.cover,
                      height: 22.0,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black26,
                      size: 15.0,
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 0.0, bottom: 0.0),
                    title: Text(
                      "Payment",
                      style: TextStyle(
                          fontFamily: "Sofia",
                          color: Color(0xFF0979FF),
                          fontWeight: FontWeight.w600,
                          fontSize: 17.0),
                    ),
                    leading: Image.asset(
                      "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/drawer/payment.png",
                      fit: BoxFit.cover,
                      height: 22.0,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black26,
                      size: 15.0,
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 0.0, bottom: 0.0),
                    title: Text(
                      "Setting",
                      style: TextStyle(
                          fontFamily: "Sofia",
                          color: Color(0xFF0979FF),
                          fontWeight: FontWeight.w600,
                          fontSize: 17.0),
                    ),
                    leading: Image.asset(
                      "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/drawer/setting.png",
                      fit: BoxFit.cover,
                      height: 22.0,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black26,
                      size: 15.0,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Divider(),
                  ListTile(
                    contentPadding: EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 0.0, bottom: 0.0),
                    title: Text(
                      "Sign out",
                      style: TextStyle(
                          fontFamily: "Sofia",
                          color: Color(0xFF0979FF),
                          fontWeight: FontWeight.w300,
                          fontSize: 17.0),
                    ),
                    leading: Image.asset(
                      "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/drawer/logout.png",
                      fit: BoxFit.cover,
                      height: 22.0,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black26,
                      size: 15.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _show() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 45.0, left: 20.0),
              child: Container(
                height: 50.0,
                width: 50.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/boxHome.png"))),
                child: Center(
                  child: Image.asset(
                      "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/menuHome.png"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 45.0, right: 20.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => new Home2()));
                },
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  child: Center(
                      child: Icon(
                    Icons.home,
                    color: Color(0xFF0979FF),
                  )),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          height: 40.0,
          width: 180.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(80.0)),
              color: Color(0xFFECF2F9),
              boxShadow: [
                BoxShadow(
                  blurRadius: 10.0,
                  spreadRadius: 4.0,
                  color: Colors.black12.withOpacity(0.1),
                )
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Received",
                style: TextStyle(
                    fontSize: 11.0,
                    fontFamily: "Sofia",
                    color: Color(0xFF0979FF),
                    fontWeight: FontWeight.w600),
              ),
              Container(
                width: 0.4,
                height: 37.0,
                color: Colors.blue,
              ),
              Text(
                "Shared",
                style: TextStyle(
                    fontSize: 11.0,
                    fontFamily: "Sofia",
                    color: Color(0xFF0979FF),
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        SizedBox(height: 30.0),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 20.0),
          child: Image.asset(
              "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/graph.png",
              height: 180.0,
              width: 400.0),
        ),
        SizedBox(height: 30.0),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 20.0),
          child: Image.asset(
              "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/graph2.png",
              height: 130.0,
              width: 400.0),
        ),
      ],
    );
  }
}
