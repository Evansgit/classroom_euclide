import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Grid.dart';
import 'IconButton.dart';
import 'List.dart';
import 'Sliver.dart';
import 'animateVisible.dart';

class GridAnimation extends StatefulWidget {
  GridAnimation({Key? key}) : super(key: key) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
  }

  @override
  _GridAnimationState createState() => _GridAnimationState();
}

class _GridAnimationState extends State<GridAnimation> {
  int _selectedIndex = 0;
  final List<Widget> _children = [
    LiveListExample(),
    LiveGridExample(),
    SliverExample(),
    AnimateIfVisibleExample(),
    LiveIconButtonExample(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          backgroundColor: Colors.grey[100],
          scaffoldBackgroundColor: Colors.grey[200],
        ),
        home: Scaffold(
          body: _children[_selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            backgroundColor: Colors.white,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.list),
                backgroundColor: Colors.white,
                label: 'List',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.grid_on),
                backgroundColor: Colors.white,
                label: 'Grid',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.view_day),
                backgroundColor: Colors.white,
                label: 'Sliver',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.remove_red_eye),
                backgroundColor: Colors.white,
                label: 'On visibility',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.check_circle),
                backgroundColor: Colors.white,
                label: 'IconButton',
              ),
            ],
            currentIndex: _selectedIndex,
            // selectedItemColor: Colors.amber[800],
            onTap: _onItemTapped,
          ),
        ),
      );
}
