import 'package:flutter/material.dart';

class DrawerDetail extends StatefulWidget {
  DrawerDetail({Key? key}) : super(key: key);

  @override
  _DrawerDetailState createState() => _DrawerDetailState();
}

class _DrawerDetailState extends State<DrawerDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
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
                  padding: const EdgeInsets.only(
                      left: 25.0, top: 100.0, bottom: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        size: 19,
                        color: Color(0xFF0979FF),
                      ),
                      SizedBox(
                        width: 1.0,
                      ),
                      Text(
                        "Back",
                        style: TextStyle(
                            fontFamily: "Sofia",
                            fontSize: 17.0,
                            color: Color(0xFF0979FF),
                            fontWeight: FontWeight.w800),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Security",
                      style: TextStyle(
                          fontFamily: "Sofia",
                          fontSize: 17.0,
                          color: Color(0xFF0979FF),
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 15.0, bottom: 0.0),
                  title: Text(
                    "Change of the Access Code",
                    style: TextStyle(
                        fontFamily: "Sofia",
                        color: Color(0xFF0979FF),
                        fontWeight: FontWeight.w600,
                        fontSize: 16.0),
                  ),
                  leading: Image.asset(
                    "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/drawer/detail/change.png",
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
                    "Privacy",
                    style: TextStyle(
                        fontFamily: "Sofia",
                        color: Color(0xFF0979FF),
                        fontWeight: FontWeight.w600,
                        fontSize: 17.0),
                  ),
                  leading: Image.asset(
                    "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/drawer/detail/privacy.png",
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
                    "Notification",
                    style: TextStyle(
                        fontFamily: "Sofia",
                        color: Color(0xFF0979FF),
                        fontWeight: FontWeight.w600,
                        fontSize: 17.0),
                  ),
                  leading: Image.asset(
                    "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/drawer/detail/notification.png",
                    fit: BoxFit.cover,
                    height: 22.0,
                  ),
                  trailing: Icon(
                    Icons.toggle_off,
                    color: Colors.black26,
                    size: 30.0,
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 0.0, bottom: 0.0),
                  title: Text(
                    "Login with Face ID",
                    style: TextStyle(
                        fontFamily: "Sofia",
                        color: Color(0xFF0979FF),
                        fontWeight: FontWeight.w600,
                        fontSize: 17.0),
                  ),
                  leading: Image.asset(
                    "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/drawer/detail/login.png",
                    fit: BoxFit.cover,
                    height: 22.0,
                  ),
                  trailing: Icon(
                    Icons.toggle_off,
                    color: Colors.black26,
                    size: 30.0,
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
                ExpansionTile(
                  title: Text(
                    "Wallett Backup & Export",
                    style: TextStyle(
                        fontFamily: "Sofia",
                        color: Color(0xFF0979FF),
                        fontWeight: FontWeight.w600,
                        fontSize: 17.0),
                  ),
                  leading: Image.asset(
                    "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/drawer/detail/wallet.png",
                    fit: BoxFit.cover,
                    height: 22.0,
                  ),
                  children: <Widget>[
                    ListTile(
                      title: Text(
                        'Back up',
                        style: TextStyle(
                            fontFamily: "Sofia",
                            color: Color(0xFF0979FF),
                            fontWeight: FontWeight.w600,
                            fontSize: 15.0),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Recovery',
                        style: TextStyle(
                            fontFamily: "Sofia",
                            color: Color(0xFF0979FF),
                            fontWeight: FontWeight.w600,
                            fontSize: 15.0),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 30.0, top: 30.0, bottom: 20.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "About",
                      style: TextStyle(
                          fontFamily: "Sofia",
                          fontSize: 17.0,
                          color: Color(0xFF0979FF),
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 0.0, bottom: 0.0),
                  title: Text(
                    "Privacy Policy",
                    style: TextStyle(
                        fontFamily: "Sofia",
                        color: Color(0xFF0979FF),
                        fontWeight: FontWeight.w600,
                        fontSize: 17.0),
                  ),
                  leading: Image.asset(
                    "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/drawer/detail/privacy.png",
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
                    "Like Us on Facebook",
                    style: TextStyle(
                        fontFamily: "Sofia",
                        color: Color(0xFF0979FF),
                        fontWeight: FontWeight.w600,
                        fontSize: 17.0),
                  ),
                  leading: Image.asset(
                    "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/drawer/detail/facebook.png",
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
                    "Rate Us In the Appstore",
                    style: TextStyle(
                        fontFamily: "Sofia",
                        color: Color(0xFF0979FF),
                        fontWeight: FontWeight.w600,
                        fontSize: 17.0),
                  ),
                  leading: Image.asset(
                    "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/drawer/detail/ratting.png",
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
