import 'package:crypto_template/Screen/FullApps/VinckierFoods/Model/food.dart';
import 'package:crypto_template/Screen/FullApps/VinckierFoods/Screens/B1_HomeScreen/detailFoodScreenT4.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class FoodList extends StatelessWidget {
  final foodItems = <Food>[
    Food(
        title: "Avocado Grocery",
        price: "34.00",
        img:
            'https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/Vegetable%2FAvocado.png?alt=media&token=eb3310c9-8f1e-437c-8247-84665573d8e3',
        rating: "4.2"),
    Food(
        title: "Guava Grocery",
        price: "45.00",
        img:
            'https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/Vegetable%2FGuava.png?alt=media&token=bcc43011-7b7b-4fe0-8014-68c960b5b81e',
        rating: "4.2"),
    Food(
        title: "Orange Grocery",
        price: "10.00",
        img:
            'https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/Vegetable%2FOrange.png?alt=media&token=9d464302-0565-46ab-8874-3dfcb94fae88',
        rating: "4.7")
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
        scrollDirection: Axis.horizontal,
        children: foodItems.map<Widget>((Food food) {
          return GestureDetector(
              onTap: () {
                Navigator.of(context).push(PageRouteBuilder(
                    pageBuilder: (_, __, ___) => new FoodDetailT4(
                          title: food.title,
                          id: food.title,
                          image: food.img,
                          location: food.rating,
                          price: food.price,
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
                padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 20.0),
                child: Container(
                  width: 170,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey[300]!, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Material(
                        child: Container(
                          height: 170.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                              image: DecorationImage(
                                  image: NetworkImage(food.img!),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          food.title!,
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Sofia",
                              fontSize: 17.0),
                        ),
                      ),
                      SizedBox(
                        height: 1.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  food.rating!,
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontFamily: "Sofia",
                                      color: Colors.black38),
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Icon(
                                  EvaIcons.star,
                                  color: Colors.yellow,
                                  size: 10.0,
                                ),
                                Icon(
                                  EvaIcons.star,
                                  color: Colors.yellow,
                                  size: 10.0,
                                ),
                                Icon(
                                  EvaIcons.star,
                                  color: Colors.yellow,
                                  size: 10.0,
                                ),
                                Icon(
                                  EvaIcons.star,
                                  color: Colors.yellow,
                                  size: 10.0,
                                ),
                                Icon(
                                  EvaIcons.star,
                                  color: Colors.black38,
                                  size: 10.0,
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  "(200)",
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.black38),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 2.0, left: 10.0),
                        child: Text(
                          "\$" + food.price!,
                          style: TextStyle(
                              fontSize: 17.0,
                              fontFamily: "Sofia",
                              color: Color(0xFF5FBD84),
                              fontWeight: FontWeight.w700),
                        ),
                      )
                    ],
                  ),
                ),
              ));
        }).toList());
  }
}
