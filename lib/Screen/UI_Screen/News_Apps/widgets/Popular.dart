import 'package:crypto_template/Screen/UI_Screen/News_Apps/models/news.dart';
import 'package:flutter/material.dart';
import 'package:crypto_template/Screen/FullApps/VinckierFoods/Style/ThemeT4.dart'
    as Style;

class Popular extends StatelessWidget {
  final newsItem = <News>[
    News(
        id: 231,
        category: "Sporth",
        imagePath:
            "https://images.pexels.com/photos/5837131/pexels-photo-5837131.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
        title: "Basketball new team",
        content:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"),
    News(
        id: 2313,
        category: "Politic",
        imagePath:
            "https://images.pexels.com/photos/4560088/pexels-photo-4560088.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
        title: "United States Public new president",
        content:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"),
    News(
        id: 231,
        category: "Tech",
        imagePath:
            "https://images.pexels.com/photos/3861964/pexels-photo-3861964.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
        title: "New framework flutter",
        content:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: newsItem.length * 120.0,
      child: ListView(
          scrollDirection: Axis.vertical,
          physics: NeverScrollableScrollPhysics(),
          children: newsItem.map<Widget>((News news) {
            return InkWell(
              onTap: () {},
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                child: Material(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border:
                            Border.all(color: Colors.grey[300]!, width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                              image: DecorationImage(
                                  image: NetworkImage(news.imagePath!),
                                  fit: BoxFit.cover)),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 10.0),
                              width: MediaQuery.of(context).size.width - 200,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    width: 140.0,
                                    child: Text(
                                      news.title!,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontFamily: "Sofia",
                                          fontSize: 15.0),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 0.0,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                            width: 140.0,
                                            child: Text(
                                              news.content!,
                                              style: TextStyle(
                                                  fontSize: 14.0,
                                                  fontFamily: "Sofia",
                                                  color: Colors.black38),
                                              overflow: TextOverflow.clip,
                                              maxLines: 2,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: Text(
                                news.category!,
                                style: TextStyle(
                                    fontSize: 14.0,
                                    fontFamily: "Sofia",
                                    color: Style.Colors.mainColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          }).toList()),
    );
  }
}
