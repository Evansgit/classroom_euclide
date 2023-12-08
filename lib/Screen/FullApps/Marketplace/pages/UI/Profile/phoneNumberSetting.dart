import 'package:flutter/material.dart';
import 'package:crypto_template/Screen/FullApps/Marketplace/pages/UI/Profile/AddPhoneNumber.dart';

class phoneNumberSetting extends StatefulWidget {
  @override
  _phoneNumberSettingState createState() => _phoneNumberSettingState();
}

class _phoneNumberSettingState extends State<phoneNumberSetting> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    final MediaQueryData media = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 20.0),
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 90.0),
                    ),
                    Text(
                      "Phone Number",
                      style: TextStyle(
                        fontSize: 17.5,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "8888 8888",
                            style: TextStyle(
                                color: Colors.black45, fontSize: 16.5),
                          ),
                          Text(
                            "Remove",
                            style: TextStyle(
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.w600,
                                fontSize: 15.0),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text("Confirmed",
                        style:
                            TextStyle(color: Colors.black45, fontSize: 16.5)),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 15.0, left: 0.0, right: 0.0),
                      child: Divider(
                        height: 1.0,
                        color: Colors.black54,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Center(
                        child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(PageRouteBuilder(
                                  pageBuilder: (_, __, ___) =>
                                      new addPhoneNumber()));
                            },
                            child: Text(
                              "Add Phone Number",
                              style: TextStyle(color: Colors.blueAccent),
                            )),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),

          /// Get a class AppbarGradient
          /// This is a Appbar in home activity
          Container(
            height: 200.0,
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: statusBarHeight),
                  height: 58.0 + statusBarHeight,
                  width: double.infinity,
                  decoration: BoxDecoration(

                      /// gradient in appbar
                      gradient: LinearGradient(
                          colors: [
                            const Color(0xFFA3BDED),
                            const Color(0xFF6991C7),
                          ],
                          begin: const FractionalOffset(0.0, 0.0),
                          end: const FractionalOffset(1.0, 0.0),
                          stops: [0.0, 1.0],
                          tileMode: TileMode.clamp)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Phone Number Settings",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontFamily: "Sofia",
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Icon(
                        Icons.arrow_back_ios,
                        color: Colors.transparent,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
