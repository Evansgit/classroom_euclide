import 'package:flutter/material.dart';

class detailRecipe extends StatefulWidget {
  String? image, title, id;
  List<String>? ingredient, directions;
  num? rating;
  detailRecipe(
      {this.directions,
      this.id,
      this.image,
      this.ingredient,
      this.rating,
      this.title});

  @override
  _detailRecipeState createState() => _detailRecipeState();
}

class _detailRecipeState extends State<detailRecipe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF272731),
      body: Stack(
        children: [
          Hero(
            tag: widget.id!,
            child: Material(
              child: Container(
                width: double.infinity,
                height: 500.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(widget.image!), fit: BoxFit.cover)),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 40.0, left: 10.0),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 50.0,
                width: 35.0,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 4.0),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 20.0,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.black12.withOpacity(0.3),
                    borderRadius: BorderRadius.all(Radius.circular(40.0))),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 300.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "lib/Screen/FullApps/RecipesMeat/Assets/background.png"),
                      fit: BoxFit.fill)),
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.title!,
                          style: TextStyle(
                              fontFamily: "Sofia",
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 26.0),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 18.0,
                            ),
                            SizedBox(
                              width: 4.0,
                            ),
                            Text(
                              widget.rating.toString(),
                              style: TextStyle(
                                  fontFamily: "Sofia",
                                  color: Colors.yellow,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 19.5),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                            "lib/Screen/FullApps/RecipesMeat/Assets/left.png"),
                        Text(
                          "Ingredients",
                          style: TextStyle(
                              fontFamily: "Heart",
                              color: Colors.white70,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 2.8,
                              fontSize: 23.0),
                        ),
                        Image.asset(
                            "lib/Screen/FullApps/RecipesMeat/Assets/left.png"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 12.0, left: 10.0, right: 10.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: widget.ingredient!
                            .map((item) => Padding(
                                  padding: const EdgeInsets.only(top: 6.0),
                                  child: Row(
                                    children: [
                                      new Text(
                                        "- " + item,
                                        style: TextStyle(
                                            color: Colors.white60,
                                            fontFamily: "Sofia",
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w200),
                                      ),
                                    ],
                                  ),
                                ))
                            .toList()),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                          "lib/Screen/FullApps/RecipesMeat/Assets/left.png"),
                      Text(
                        "Directions",
                        style: TextStyle(
                            fontFamily: "Heart",
                            color: Colors.white70,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 2.8,
                            fontSize: 23.0),
                      ),
                      Image.asset(
                          "lib/Screen/FullApps/RecipesMeat/Assets/left.png"),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 12.0, left: 10.0, right: 10.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: widget.directions!
                            .map((item) => Padding(
                                  padding: const EdgeInsets.only(top: 20.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 300.0,
                                        child: new Text(
                                          "- " + item,
                                          style: TextStyle(
                                              color: Colors.white60,
                                              fontFamily: "Sofia",
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.w200),
                                        ),
                                      ),
                                    ],
                                  ),
                                ))
                            .toList()),
                  ),
                  SizedBox(
                    height: 30.0,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
