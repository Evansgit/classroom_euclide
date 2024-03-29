import 'package:flutter/material.dart';

class Concept1List extends StatefulWidget {
  Concept1List({Key? key}) : super(key: key);

  _Concept1ListState createState() => _Concept1ListState();
}

class _Concept1ListState extends State<Concept1List> {
  @override
  Widget build(BuildContext context) {
    ///
    /// To measure the height of the device size
    ///
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Concept 1 List",
          style: TextStyle(fontFamily: "Sofia"),
        ),
      ),
      body: ListView(
        children: <Widget>[
          card("assets/images/deals_layout/buildingMenu.jpg", "Bank",
              "Get best promo"),
          card("assets/images/deals_layout/cardMenu.jpg", "Credit Card",
              "Get best promo"),
          card("assets/images/deals_layout/financeMenu.jpg", "Paid",
              "Get best promo"),
          card("assets/images/deals_layout/findMenu.jpg", "Money",
              "Get best promo"),
          card("assets/images/deals_layout/giveMenu.jpg", "Bonus",
              "Get best promo"),
          card("assets/images/deals_layout/growthMenu.jpg", "Income",
              "Get best promo"),
          card("assets/images/deals_layout/locationMenu.jpg", "Location",
              "Get best promo"),
          card("assets/images/deals_layout/moneyMenu.jpg", "Exchange",
              "Get best promo"),
          card("assets/images/deals_layout/saveMenu.jpg", "Exhange",
              "Get best promo"),
          card("assets/images/deals_layout/shareMenu.jpg", "Plan",
              "Get best promo"),
          SizedBox(
            height: 10.0,
          )
        ],
      ),
    );
  }

  ///
  /// Card under of tab bar
  ///
  Widget card(String img, String title, String subTitle) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: 120.0,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  blurRadius: 10.0,
                  color: Colors.black12.withOpacity(0.1),
                  spreadRadius: 3.0),
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                      fontFamily: "Sofia",
                      color: Colors.black87,
                      fontWeight: FontWeight.w700,
                      fontSize: 21.0,
                    ),
                  ),
                  Text(
                    subTitle,
                    style: TextStyle(
                        color: Colors.black54,
                        fontFamily: "Sans",
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Container(
                width: 100.0,
                height: 80.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0)),
                    image: DecorationImage(
                        image: AssetImage(img), fit: BoxFit.fill)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
