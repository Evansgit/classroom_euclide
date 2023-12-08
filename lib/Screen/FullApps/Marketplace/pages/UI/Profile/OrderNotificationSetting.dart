import 'package:flutter/material.dart';

class orderNotificationSetting extends StatefulWidget {
  @override
  _orderNotificationSettingState createState() =>
      _orderNotificationSettingState();
}

class _orderNotificationSettingState extends State<orderNotificationSetting> {
  @override
  bool _switch = false;
  bool _switch2 = false;
  bool _switch3 = false;
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
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(Icons.note),
                      Padding(
                        padding: const EdgeInsets.only(right: 150.0),
                        child: Text(
                          "Push",
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Switch(
                            value: _switch,
                            onChanged: (bool e) => _something(e)),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 5.0, left: 25.0, right: 25.0),
                  child: Divider(
                    height: 1.0,
                    color: Colors.black54,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(Icons.email),
                      Padding(
                        padding: const EdgeInsets.only(right: 150.0),
                        child: Text(
                          "Email",
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Switch(
                            value: _switch2,
                            onChanged: (bool e) => _something2(e)),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 5.0, left: 25.0, right: 25.0),
                  child: Divider(
                    height: 1.0,
                    color: Colors.black54,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(Icons.sms),
                      Padding(
                        padding: const EdgeInsets.only(right: 150.0),
                        child: Text(
                          "Sms",
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Switch(
                            value: _switch3,
                            onChanged: (bool e) => _something3(e)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 5.0, left: 25.0, right: 25.0),
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
                        "Order",
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

  void _something(bool e) {
    setState(() {
      if (e) {
        e = true;
        _switch = true;
      } else {
        e = false;
        _switch = false;
      }
    });
  }

  void _something2(bool e) {
    setState(() {
      if (e) {
        e = true;
        _switch2 = true;
      } else {
        e = false;
        _switch2 = false;
      }
    });
  }

  void _something3(bool e) {
    setState(() {
      if (e) {
        e = true;
        _switch3 = true;
      } else {
        e = false;
        _switch3 = false;
      }
    });
  }
}
