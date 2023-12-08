import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'opacitywidget.dart';

class ListviewAnimation extends StatefulWidget {
  ListviewAnimation({Key? key}) : super(key: key);

  @override
  _ListviewAnimationState createState() => _ListviewAnimationState();
}

var listCat = [
  {
    "id": "28",
    "user_id": "76",
    "name": "Mac",
    "score": "5300",
    "rank": 1,
    "image": "https://images2.imgbox.com/de/07/oOaZ8crJ_o.jpg",
    "date_created": "27-08-2019 10:08:30"
  },
  {
    "id": "27",
    "user_id": "77",
    "name": "neque",
    "score": "5200",
    "rank": 2,
    "image": "https://images2.imgbox.com/40/cb/a3PD1gIK_o.jpg",
    "date_created": "27-08-2019 10:08:22"
  },
  {
    "id": "22",
    "user_id": "75",
    "name": "Jak Jon",
    "score": "5000",
    "rank": 3,
    "image": "https://images2.imgbox.com/fd/57/4Vr530dc_o.jpg",
    "date_created": "26-08-2019 09:08:38"
  },
  {
    "id": "26",
    "user_id": "78",
    "name": " Gravida",
    "score": "214",
    "rank": 4,
    "image": "https://images2.imgbox.com/be/b4/O4Oodr3r_o.jpg",
    "date_created": "27-08-2019 10:08:12"
  },
  {
    "id": "23",
    "user_id": "74",
    "name": "Image Cat",
    "score": "200",
    "rank": 5,
    "image": "https://images2.imgbox.com/f6/5b/5PWPZHq9_o.jpg",
    "date_created": "26-08-2019 09:08:45"
  },
  {
    "id": "25",
    "user_id": "79",
    "name": "porttitor",
    "score": "200",
    "rank": 6,
    "image": "https://images2.imgbox.com/ee/be/gUsVeJEO_o.jpeg",
    "date_created": "27-08-2019 10:08:04"
  },
  {
    "id": "20",
    "user_id": "72",
    "name": "Test RO",
    "score": "100",
    "rank": 7,
    "image": "https://images2.imgbox.com/5f/5d/is6tA4Cq_o.jpeg",
    "date_created": "22-08-2019 11:08:24"
  },
  {
    "id": "21",
    "user_id": "71",
    "name": "The Path",
    "score": "100",
    "rank": 8,
    "image": "https://images2.imgbox.com/c1/c5/rqa3urBB_o.jpg",
    "date_created": "22-08-2019 11:08:34"
  }
];

class _ListviewAnimationState extends State<ListviewAnimation>
    with TickerProviderStateMixin {
  AnimationController? _animationController;
  double animationDuration = 0.0;
  int totalItems = 10;

  @override
  void initState() {
    super.initState();
    final int totalDuration = 4000;
    _animationController = AnimationController(
        vsync: this, duration: new Duration(milliseconds: totalDuration));
    animationDuration = totalDuration / (100 * (totalDuration / totalItems));
    _animationController!.forward();
  }

  @override
  void dispose() {
    _animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(56),
          child: AppBar(
            title: Text(
              "List Animation",
            ),
            elevation: 0.0,
            centerTitle: true,
          )),
      body: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: listCat == null ? 0 : listCat.length,
          itemBuilder: (BuildContext context, int index) {
            return new WrOpacityWidget(
              index: index,
              animationController: _animationController,
              duration: animationDuration,
              widgets: Container(
                margin: EdgeInsets.all(MediaQuery.of(context).size.width / 30),
                child: ListTile(
                  leading: CachedNetworkImage(
                    placeholder: (context, url) => CircularProgressIndicator(),
                    imageUrl: listCat[index]['image'] as String,
                  ),
                  title: Text(listCat[index]['name'] as String),
                ),
              ),
            );
          }),
    );
  }
}
