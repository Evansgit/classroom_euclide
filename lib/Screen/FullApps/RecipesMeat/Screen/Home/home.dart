import 'package:flutter/material.dart';

import 'Category/chickenList.dart';
import 'Category/meatList.dart';
import 'Category/steakList.dart';

class home extends StatefulWidget {
  home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFF272731),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 0.0),
          child: Column(
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => new meatList()));
                },
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                          width: double.infinity,
                          height: _height / 3,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "lib/Screen/FullApps/RecipesMeat/Assets/menu1.jpg"),
                                  fit: BoxFit.cover)),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 14.0),
                                child: Text(
                                  "Meat",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Heart",
                                      fontSize: 50.0),
                                ),
                              ))),
                    ),
                    ClipPath(
                        clipper: new DialogonalClipper(),
                        child: Container(
                          height: _height / 3,
                          decoration: BoxDecoration(
                            color: Colors.black12.withOpacity(0.4),
                          ),
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(PageRouteBuilder(
                        pageBuilder: (_, __, ___) => new chickenList()));
                  },
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                            width: double.infinity,
                            height: _height / 3,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "lib/Screen/FullApps/RecipesMeat/Assets/menu2.jpg"),
                                    fit: BoxFit.cover)),
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 14.0),
                                  child: Text(
                                    "Chicken",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Heart",
                                        fontSize: 42.0),
                                  ),
                                ))),
                      ),
                      ClipPath(
                          clipper: new DialogonalClipper(),
                          child: Container(
                            height: _height / 3,
                            decoration: BoxDecoration(
                              color: Colors.black12.withOpacity(0.4),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => new steakList()));
                },
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                          width: double.infinity,
                          height: _height / 3,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "lib/Screen/FullApps/RecipesMeat/Assets/menu3.jpg"),
                                  fit: BoxFit.cover)),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 14.0),
                                child: Text(
                                  "Steak",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Heart",
                                      fontSize: 45.0),
                                ),
                              ))),
                    ),
                    ClipPath(
                        clipper: new DialogonalClipper(),
                        child: Container(
                          height: _height / 3,
                          decoration: BoxDecoration(
                            color: Colors.black12.withOpacity(0.4),
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DialogonalClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = new Path();
    path.lineTo(0.0, size.height);
    path.lineTo(90.0, size.height);
    path.lineTo(150.0, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

class PathPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8.0;

    Path path = Path();
    // Draws a line from left top corner to right bottom
    path.lineTo(40, size.height);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
