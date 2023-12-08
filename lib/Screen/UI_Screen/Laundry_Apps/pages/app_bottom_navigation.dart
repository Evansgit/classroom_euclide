import 'package:crypto_template/Screen/UI_Screen/Hotel_Apps/widgets/custom_nav_bar.dart';
import 'package:crypto_template/Screen/UI_Screen/Laundry_Apps/pages/dashboard.dart';
import 'package:flutter/material.dart';

class BottomNavLaundry extends StatefulWidget {
  @override
  _BottomNavLaundryState createState() => _BottomNavLaundryState();
}

class _BottomNavLaundryState extends State<BottomNavLaundry> {
  int currentIndex = 0;
  bool _color = true;
  Widget callPage(int current) {
    switch (current) {
      case 0:
        return new Dashboard();
        break;
      case 1:
        return new Dashboard();
        break;
      case 2:
        return new Dashboard();
        break;
      case 3:
        return new Dashboard();
        break;
      case 4:
        return new Dashboard();
        break;
      default:
        return new Dashboard();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: callPage(currentIndex),
      bottomNavigationBar: BottomNavigationDotBar(
          color: Colors.black26,
          items: <BottomNavigationDotBarItem>[
            BottomNavigationDotBarItem(
                icon: Icons.home,
                onTap: () {
                  setState(() {
                    currentIndex = 0;
                  });
                }),
            BottomNavigationDotBarItem(
                icon: Icons.message,
                onTap: () {
                  setState(() {
                    currentIndex = 1;
                  });
                }),
            BottomNavigationDotBarItem(
                icon: Icons.trip_origin,
                onTap: () {
                  setState(() {
                    currentIndex = 2;
                  });
                }),
            BottomNavigationDotBarItem(
                icon: Icons.favorite,
                onTap: () {
                  setState(() {
                    currentIndex = 3;
                  });
                }),
            BottomNavigationDotBarItem(
                icon: Icons.person,
                onTap: () {
                  setState(() {
                    currentIndex = 4;
                  });
                }),
          ]),
    );
  }
}
