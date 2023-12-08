import 'package:crypto_template/Screen/FullApps/SunriseMart/B3_Category_Screen/Detail_Category/Restaurant_Screen.dart';
import 'package:crypto_template/Screen/FullApps/VinckierFoods/Model/menu.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  final menuItems = <Menu>[
    Menu(
      title: "Dinner",
      img: 'lib/Screen/FullApps/VinckierFoods/Assets/image/dinner.jpg',
    ),
    Menu(
      title: "Lunch",
      img: 'lib/Screen/FullApps/VinckierFoods/Assets/image/lunch.jpg',
    ),
    Menu(
      title: "Breakfast",
      img: 'lib/Screen/FullApps/VinckierFoods/Assets/image/breakfast.jpg',
    ),
    Menu(
      title: "Cafe",
      img: 'lib/Screen/FullApps/VinckierFoods/Assets/image/cafe.jpg',
    ),
    Menu(
      title: "Healty",
      img: 'lib/Screen/FullApps/VinckierFoods/Assets/image/healtyfood.jpg',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
        scrollDirection: Axis.horizontal,
        children: menuItems.map<Widget>((Menu menu) {
          return GestureDetector(
              onTap: () {
                Navigator.of(context).push(PageRouteBuilder(
                    pageBuilder: (_, __, ___) => new restaurant(
                          title: menu.title,
                        ),
                    transitionDuration: Duration(milliseconds: 600),
                    transitionsBuilder:
                        (_, Animation<double> animation, __, Widget child) {
                      return Opacity(
                        opacity: animation.value,
                        child: child,
                      );
                    }));
              },
              child: Padding(
                padding: EdgeInsets.only(left: 20.0, top: 20.0, bottom: 20.0),
                child: Container(
                  width: 90,
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey[300]!, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: Image.asset(
                          menu.img!,
                          colorBlendMode: BlendMode.darken,
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        menu.title!,
                        style: TextStyle(
                            color: Colors.black45,
                            fontFamily: "Sofia",
                            fontSize: 14.0),
                      )
                    ],
                  ),
                ),
              ));
        }).toList());
  }
}
