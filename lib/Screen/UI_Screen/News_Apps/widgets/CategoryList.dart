import 'package:crypto_template/Screen/UI_Screen/News_Apps/models/news.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  final newsItem = <News>[
    News(
        id: 231,
        category: "Sporth",
        imagePath:
            "https://images.pexels.com/photos/3746005/pexels-photo-3746005.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
        title: "Chelsea win 1-0 versus manchester city",
        content:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"),
    News(
        id: 2313,
        category: "Politic",
        imagePath:
            "https://images.pexels.com/photos/5879667/pexels-photo-5879667.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
        title: "Demo in United States Public",
        content:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"),
    News(
        id: 231,
        category: "Tech",
        imagePath:
            "https://images.pexels.com/photos/5412266/pexels-photo-5412266.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
        title: "New Macbook Pro touch bar",
        content:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
        scrollDirection: Axis.horizontal,
        children: newsItem.map<Widget>((News news) {
          return GestureDetector(
              onTap: () {},
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
                                  image: NetworkImage(news.imagePath!),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Container(
                          width: 150.0,
                          child: Text(
                            news.title!,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Sofia",
                                fontSize: 15.0),
                            overflow: TextOverflow.ellipsis,
                          ),
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
                                Container(
                                  width: 145.0,
                                  child: Text(
                                    news.content!,
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: "Sofia",
                                        color: Colors.black38),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: 5.0, left: 10.0, right: 15.0),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            news.category!,
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: "Sofia",
                                color: Color(0xFF5FBD84),
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ));
        }).toList());
  }
}
