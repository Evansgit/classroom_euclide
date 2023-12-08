import 'package:flutter/material.dart';
import 'package:crypto_template/Screen/FullApps/Marketplace/pages/UI/Profile/phoneNumberSetting.dart';

class accountSetting extends StatefulWidget {
  @override
  _accountSettingState createState() => _accountSettingState();
}

class _accountSettingState extends State<accountSetting> {
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 110.0),
                ),
                _itemComponent("Name", "Sally Hanses"),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 15.0, left: 30.0, right: 25.0),
                  child: Divider(
                    height: 1.0,
                    color: Colors.black54,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: _itemComponent(
                      "Email address", "sally.hanses@hanses.com"),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 15.0, left: 30.0, right: 25.0),
                  child: Divider(
                    height: 1.0,
                    color: Colors.black54,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(PageRouteBuilder(
                            pageBuilder: (_, __, ___) =>
                                new phoneNumberSetting()));
                      },
                      child: _itemComponent("Phone number", "8888 8888")),
                ),
              ],
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
                      Text(
                        "Account Settings",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontFamily: "Sofia",
                            fontWeight: FontWeight.w600),
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

  Widget _itemComponent(String title, desc) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17.0),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  desc,
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14.0),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30.0, top: 5.0),
            child: Icon(Icons.arrow_forward_ios),
          )
        ],
      ),
    );
  }
}
