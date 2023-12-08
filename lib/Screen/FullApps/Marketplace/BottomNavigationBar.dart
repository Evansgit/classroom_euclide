import 'package:flutter/material.dart';
import 'package:crypto_template/Screen/FullApps/Marketplace/pages/UI/HomeScreen/Home.dart';
import 'package:crypto_template/Screen/FullApps/Marketplace/pages/UI/Message/Message.dart';
import 'package:crypto_template/Screen/FullApps/Marketplace/pages/UI/Notification//Notification.dart';
import 'package:crypto_template/Screen/FullApps/Marketplace/pages/UI/Profile/profile.dart';



class bottomNavigationBar extends StatefulWidget {
  @override
  _bottomNavigationBarState createState() => _bottomNavigationBarState();
}

class _bottomNavigationBarState extends State<bottomNavigationBar> {
  bool _loading = true;
  int currentPosition = 0;
  bool isSelect = false;
  int currentIndex = 0;

  /// Set a type current number a layout class
  Widget callPage(int current) {
    switch (current) {
      case 0:
        return new HomeScreen();
      case 1:
        return new Message();
      case 2:
        return new notification();
      case 3:
        return new Profile();
        break;
      default:
        return HomeScreen();
    }
  }

  /// Build BottomNavigationBar Widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: callPage(currentIndex),
      bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
              canvasColor: Colors.white,
              textTheme: Theme.of(context).textTheme.copyWith(
                  bodySmall: TextStyle(color: Colors.black26.withOpacity(0.15)))),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            fixedColor: Color(0xFF6991C7),
            onTap: (value) {
              currentIndex = value;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                    size: 30.0,
                  ),
                  label: "hi"),
              BottomNavigationBarItem(
                  icon: Stack(
                    alignment: AlignmentDirectional(2.0, -1.8),
                    children: <Widget>[
                      Icon(Icons.mail_outline, size: 30.0),
                      CircleAvatar(
                        radius: 8.6,
                        backgroundColor: Colors.redAccent,
                        child: Text(
                          "3",
                          style: TextStyle(fontSize: 13.0, color: Colors.white),
                        ),
                      )
                    ],
                  ),
//                  Icon(Icons.mail_outline,
//                    size: 30.0,),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.notifications_none,
                    size: 30.0,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.menu,
                    size: 30.0,
                  ),
                  label: ""),
            ],
          )),
    );
  }
}
