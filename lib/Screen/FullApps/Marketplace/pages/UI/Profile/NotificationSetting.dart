import 'package:flutter/material.dart';
import 'package:crypto_template/Screen/FullApps/Marketplace/pages/UI/Profile/OrderNotificationSetting.dart';

class notificationSetting extends StatefulWidget {
  @override
  _notificationSettingState createState() => _notificationSettingState();
}

class _notificationSettingState extends State<notificationSetting> {
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
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(PageRouteBuilder(
                        pageBuilder: (_, __, ___) =>
                            new orderNotificationSetting()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Image.asset(
                          "lib/Screen/FullApps/Marketplace/assets/icon/myOrders.jpg",
                          height: 37.0,
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 30.0, left: 10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Order",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.5),
                              ),
                              Text(
                                "Push,Sms,Email",
                                style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w300),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 100.0, right: 30.0),
                          child: Icon(Icons.arrow_forward_ios),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 20.0, left: 25.0, right: 25.0),
                  child: Divider(
                    height: 1.0,
                    color: Colors.black54,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(Icons.message),
                      Padding(
                        padding: const EdgeInsets.only(right: 30.0, left: 10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Messages",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 16.5),
                            ),
                            Text(
                              "Push, Email",
                              style: TextStyle(
                                  fontSize: 12.0, fontWeight: FontWeight.w300),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 100.0, right: 30.0),
                        child: Icon(Icons.arrow_forward_ios),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 20.0, left: 25.0, right: 25.0),
                  child: Divider(
                    height: 1.0,
                    color: Colors.black54,
                  ),
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
                        "Notification Settings",
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
}
