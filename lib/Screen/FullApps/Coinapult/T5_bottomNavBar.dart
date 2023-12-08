import 'package:flutter/material.dart';

import 'T5_budget.dart';
import 'T5_home.dart';
import 'T5_profile.dart';
import 'T5_tabBar_home.dart';
import 'T5_wallet.dart';

class T5_bottomNavBar extends StatefulWidget {
  T5_bottomNavBar({Key? key}) : super(key: key);

  _T5_bottomNavBarState createState() => _T5_bottomNavBarState();
}

class _T5_bottomNavBarState extends State<T5_bottomNavBar> {
  int currentIndex = 0;

  /// Set a type current number a layout class
  Widget callPage(int current) {
    switch (current) {
      case 0:
        return new T5_tabBar_home();
      case 1:
        return new T5_budget();
      case 2:
        return new T5_wallet();
      case 3:
        return new T5_profile();
        break;
      default:
        return T5_home();
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
            fixedColor: Colors.greenAccent,
            onTap: (value) {
              currentIndex = value;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    size: 23.0,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.account_balance_wallet,
                  ),
                  label: "Budget"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.credit_card,
                  ),
                  label: "Card"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    size: 24.0,
                  ),
                  label: "Acount"),
            ],
          )),
    );
  }
}
