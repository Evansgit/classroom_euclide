import 'package:flutter/material.dart';

class notification extends StatefulWidget {
  @override
  _notificationState createState() => _notificationState();
}

class _notificationState extends State<notification> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notification",
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18.0,
              color: Colors.black54,
              fontFamily: "Sofia"),
        ),
        iconTheme: IconThemeData(
          color: const Color(0xFF6991C7),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        width: 500.0,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                  padding:
                      EdgeInsets.only(top: mediaQuery.padding.top + 100.0)),
              Image.asset(
                "lib/Screen/FullApps/NiuEducation/assets/image/noNotification.jpg",
                height: 200.0,
              ),
              Padding(padding: EdgeInsets.only(bottom: 30.0)),
              Text(
                "Not Have Notification",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18.5,
                    color: Colors.black54,
                    fontFamily: "Sofia"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
