import 'package:flutter/material.dart';

class searchBoxEmpty extends StatefulWidget {
  searchBoxEmpty();

  _searchBoxEmptyState createState() => _searchBoxEmptyState();
}

class _searchBoxEmptyState extends State<searchBoxEmpty>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 20.0, top: 40.0),
          child: Text("Category Recipes",
              style: TextStyle(
                  fontFamily: "Sofia",
                  fontSize: 18.0,
                  letterSpacing: 0.9,
                  color: Colors.black87,
                  fontWeight: FontWeight.w600)),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 20.0,
          ),
          child: Container(
            height: 200.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                SizedBox(
                  width: 20.0,
                ),
                InkWell(
                  onTap: () {},
                  child: cardCountry(
                    colorTop: Color(0xFFF07DA4),
                    colorBottom: Color(0xFFF5AE87),
                    image: "assets/image/breakfastSearch.png",
                    title: "Breakfast",
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: cardCountry(
                      colorTop: Color(0xFF63CCD1),
                      colorBottom: Color(0xFF75E3AC),
                      image: "assets/image/cafeSearch.png",
                      title: "Coffe"),
                ),
                InkWell(
                  onTap: () {},
                  child: cardCountry(
                      colorTop: Color(0xFF9183FC),
                      colorBottom: Color(0xFFDB8EF6),
                      image: "assets/image/dinnerSearch.png",
                      title: "Dinner"),
                ),
                InkWell(
                  onTap: () {},
                  child: cardCountry(
                      colorTop: Color(0xFF56B4EE),
                      colorBottom: Color(0xFF59CCE1),
                      image: "assets/image/healtyfoodSearch.png",
                      title: "Healty"),
                ),
                InkWell(
                  onTap: () {},
                  child: cardCountry(
                      colorTop: Color(0xFFF07DA4),
                      colorBottom: Color(0xFFF5AE87),
                      image: "assets/image/lunchSearch.png",
                      title: "Lunch"),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class cardCountry extends StatelessWidget {
  final Color colorTop, colorBottom;
  final String image, title;
  cardCountry(
      {required this.colorTop,
      required this.colorBottom,
      required this.title,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4.0, right: 4.0, bottom: 4.0),
      child: Container(
        height: 200.0,
        width: 130.0,
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(blurRadius: 8.0, color: Colors.black12)],
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          gradient: LinearGradient(
              colors: [colorTop, colorBottom],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
              child: Text(
                title,
                style: TextStyle(
                    color: Colors.white, fontFamily: "Sofia", fontSize: 18.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 4.0),
              child: Align(
                  alignment: Alignment.bottomRight,
                  child: Icon(
                    Icons.food_bank,
                    size: 120,
                    color: Colors.white,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
