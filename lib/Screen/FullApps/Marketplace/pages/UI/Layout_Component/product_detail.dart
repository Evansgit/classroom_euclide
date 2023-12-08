import 'package:crypto_template/Screen/FullApps/Marketplace/Library/ExpandedList/ExpandedDetail.dart';
import 'package:crypto_template/Screen/FullApps/Marketplace/dataList/ListHomeData.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../../Library/Carousel/CarouselPro.dart';
import '../../../../../../Library/Ratting_Bar/ratting.dart';

class ProductDetail extends StatefulWidget {
  @override
  _ProductDetailState createState() => _ProductDetailState(this.list);
  ElectronicList list;
  ProductDetail(this.list);
}

class _ProductDetailState extends State<ProductDetail> {
  double rating = 3.5;
  int starCount = 5;

  /// set key for bottom sheet
  final GlobalKey<ScaffoldMessengerState> _key =
      GlobalKey<ScaffoldMessengerState>();

  /// Create Modal BottomSheet
  void _modalBottomSheetSort() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return SingleChildScrollView(
            child: new Container(
              height: 200.0,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 20.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 28.0),
                      child: Icon(
                        Icons.more_horiz,
                        size: 32.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Text(
                        "More",
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                      child: Divider(
                        height: 1.5,
                        color: Colors.black87,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 3.0),
                                child: Icon(
                                  Icons.content_copy,
                                  size: 32.0,
                                ),
                              ),
                              Text(
                                "Copy",
                                style: TextStyle(fontSize: 18.0),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25.0),
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 3.0),
                                  child: Icon(
                                    Icons.save,
                                    size: 32.0,
                                  ),
                                ),
                                Text(
                                  "Save",
                                  style: TextStyle(fontSize: 18.0),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25.0),
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 3.0),
                                  child: Icon(
                                    Icons.more_horiz,
                                    size: 32.0,
                                  ),
                                ),
                                Text(
                                  "More",
                                  style: TextStyle(fontSize: 18.0),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }

  /// Custom Text black
  static var _customTextStyle = TextStyle(
    color: Colors.black,
    fontFamily: "Sofia",
    fontSize: 17.0,
    fontWeight: FontWeight.w800,
  );

  /// Custom Text for Header title
  static var _subHeaderCustomStyle = TextStyle(
      fontWeight: FontWeight.w700,
      fontFamily: "Sofia",
      fontSize: 16.0,
      color: Colors.black);

  /// Custom Text for Detail title
  static var _detailText = TextStyle(
      fontFamily: "Sofia",
      color: Colors.black54,
      letterSpacing: 0.3,
      wordSpacing: 0.5);

  ElectronicList list;
  _ProductDetailState(this.list);

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    final MediaQueryData media = MediaQuery.of(context);
    return Scaffold(
      key: _key,
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 0.0),
            child: Column(
              children: <Widget>[
                Flexible(
                  child: ListView(
                    // padding: EdgeInsets.all(10.0),
                    children: <Widget>[
                      Container(
                        height: 300.0,
                        child: Hero(
                          tag: "hero-grid-${list.id}",
                          child: Material(
                            child: new Carousel(
                              onImageChange: (int, inta) {},
                              onImageTap: (int) {},
                              overlayShadowColors: Colors.white,
                              radius: Radius.circular(8.0),
                              dotColor: Colors.black54,
                              dotIncreaseSize: 1.7,
                              dotBgColor: Colors.transparent,
                              autoplay: false,
                              boxFit: BoxFit.cover,
                              images: [
                                NetworkImage(list.image!),
                                NetworkImage(list.image!),
                                NetworkImage(list.image!),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 10.0,
                        width: double.infinity,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10.0, right: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text(
                                list.title!,
                                style: _customTextStyle,
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text(
                                list.price!,
                                style: TextStyle(
                                    fontSize: 19.0,
                                    fontFamily: "Sofia",
                                    fontWeight: FontWeight.w900,
                                    color: Colors.blueAccent),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 15.0, left: 20.0, right: 20.0, bottom: 5.0),
                        child: _line(),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              IconButton(
                                icon: Icon(
                                  Icons.mail_outline,
                                  size: 27.0,
                                  color: Colors.black,
                                ),
                                onPressed: () {},
                              ),
                              Text(
                                'Message',
                                style: _detailText.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              )
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              IconButton(
                                icon: Icon(
                                  Icons.bookmark,
                                  color: Colors.black,
                                  size: 26.0,
                                ),
                                onPressed: () {},
                              ),
                              Text(
                                'Saved',
                                style: _detailText.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              )
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              IconButton(
                                icon: Icon(
                                  FontAwesomeIcons.shareSquare,
                                  color: Colors.black,
                                ),
                                onPressed: () {
                                  _modalBottomSheetSort();
                                },
                              ),
                              Text(
                                'Share',
                                style: _detailText.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              )
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20.0, left: 20.0, right: 20.0),
                        child: _line(),
                      ),
                      SizedBox(height: 15.0),
                      ListTile(
                        title: Text(
                          'Description',
                          style: _subHeaderCustomStyle.copyWith(
                              fontSize: 16.0, color: Colors.black),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Column(
                            children: <Widget>[
                              ExpansionTileCustom(
                                title: Text(
                                  'Iphone 6s plus 16gb,accessories with box, condition very well 9/10 lorem ipsum dum all accessories with box, condition very well 9/10 lorem ipsum dum 9/10 lorem ipsum',
                                  style: _detailText,
                                ),
                                children: [
                                  SizedBox(height: 10.0),
                                  Text("Spesifikasi :",
                                      style: _subHeaderCustomStyle.copyWith(
                                          fontSize: 14.0)),
                                  SizedBox(height: 5.0),
                                  Text(
                                    "- Ram 8 gb",
                                    style: _detailText,
                                  ),
                                  Text("- Internal 256 GB", style: _detailText),
                                  Text("- Camera 20px", style: _detailText),
                                  Text("- Device Black", style: _detailText),
                                ],
//                              child: Text("Read More",style: _subHeaderCustomStyle.copyWith(fontSize: 13.0,color: Colors.blueAccent),
//                              textAlign: TextAlign.end,
//                              ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20.0, top: 10.0, bottom: 5.0),
                        child: _line(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, top: 15.0, bottom: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Seller Information',
                              style: _subHeaderCustomStyle.copyWith(
                                  color: Colors.black),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  InkWell(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 2.0, right: 4.0),
                                      child: Text(
                                        'See Profile',
                                        style: _subHeaderCustomStyle.copyWith(
                                            color: Colors.black54,
                                            fontSize: 14.0),
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.pushNamed(context, '/profile');
                                    },
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 15.0, top: 2.0),
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      size: 18.0,
                                      color: Colors.black54,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 45.0,
                              width: 45.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "lib/Screen/FullApps/Marketplace/assets/avatars/avatar-3.jpg"),
                                      fit: BoxFit.cover),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50.0))),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Sally Hansen',
                                      style: _subHeaderCustomStyle.copyWith(
                                          fontSize: 14.5,
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'Seller since 2010',
                                      style:
                                          _detailText.copyWith(fontSize: 12.0),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20.0, top: 20.0, bottom: 10.0),
                        child: Container(
                          height: 150.0,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "lib/Screen/FullApps/Marketplace/assets/img/mapExample.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                        child: _line(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'Reviews',
                                  style: _subHeaderCustomStyle.copyWith(
                                      color: Colors.black),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, top: 15.0, bottom: 15.0),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      InkWell(
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                top: 2.0, right: 3.0),
                                            child: Text(
                                              'View All',
                                              style: _subHeaderCustomStyle
                                                  .copyWith(
                                                      color: Colors.black54,
                                                      fontSize: 14.0),
                                            )),
                                        onTap: () {
                                          Navigator.pushNamed(
                                              context, '/reviews-all');
                                        },
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 15.0, top: 2.0),
                                        child: Icon(
                                          Icons.arrow_forward_ios,
                                          size: 18.0,
                                          color: Colors.black54,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      StarRating(
                                        size: 25.0,
                                        starCount: 5,
                                        rating: rating,
                                        color: Colors.yellow,
                                        borderColor: Colors.yellow,
                                        onRatingChanged: (double rating) {},
                                      ),
                                      SizedBox(width: 5.0),
                                      Text('8 Reviews')
                                    ]),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 20.0, right: 20.0, top: 15.0, bottom: 7.0),
                        child: _line(),
                      ),
                      _buildRating('18 Nov 2018',
                          'Item delivered in good condition. I will recommend to other buyer.',
                          (rating) {
                        setState(() {
                          this.rating = rating;
                        });
                      }, "lib/Screen/FullApps/Marketplace/assets/avatars/avatar-1.jpg"),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 20.0, right: 20.0, top: 15.0, bottom: 7.0),
                        child: _line(),
                      ),
                      _buildRating('18 Nov 2018',
                          'Item delivered in good condition. I will recommend to other buyer.',
                          (rating) {
                        setState(() {
                          this.rating = rating;
                        });
                      }, "lib/Screen/FullApps/Marketplace/assets/avatars/avatar-4.jpg"),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 20.0, right: 20.0, top: 15.0, bottom: 7.0),
                        child: _line(),
                      ),
                      _buildRating('18 Nov 2018',
                          'Item delivered in good condition. I will recommend to other buyer.',
                          (rating) {
                        setState(() {
                          this.rating = rating;
                        });
                      }, "lib/Screen/FullApps/Marketplace/assets/avatars/avatar-2.jpg"),
                      Padding(padding: EdgeInsets.only(bottom: 20.0)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Container(
                    height: 50.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                      const Color(0xFFA3BDED),
                      const Color(0xFF6991C7),
                    ])),
                    child: Center(
                        child: Text(
                      "Order",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontFamily: "Sofia",
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.0),
                    )),
                  ),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 20.0),
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            ),
          ),

          /// Get a class AppbarGradient
          /// This is a Appbar in home activity
//          Container(
//            height: 200.0,
//            width: double.infinity,
//            child: Column(
//              children: <Widget>[
//                Container(
//                  padding: EdgeInsets.only(top: statusBarHeight),
//                  height: 58.0 + statusBarHeight,
//                  width: double.infinity,
//                  decoration: BoxDecoration(
//                    /// gradient in appbar
//                      gradient: LinearGradient(
//                          colors: [
//                            const Color(0xFFA3BDED),
//                            const Color(0xFF6991C7),
//                          ],
//                          begin: const FractionalOffset(0.0, 0.0),
//                          end: const FractionalOffset(1.0, 0.0),
//                          stops: [0.0, 1.0],
//                          tileMode: TileMode.clamp)),
//                  child: Column(
//                    children: <Widget>[
//                      Padding(
//                        padding: const EdgeInsets.only(top:12.0),
//                        child: Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                          children: <Widget>[
//                            GestureDetector(
//                              onTap: (){
//                                Navigator.of(context).pop();
//                              },
//                              child: Padding(
//                                padding: const EdgeInsets.only(left:15.0),
//                                child: Icon(Icons.arrow_back_ios,color: Colors.black,),
//                              ),
//                            ),
//                            Text("Product Detail",style: TextStyle(color: Colors.white,fontSize: 18.0,fontFamily: "Sofia",fontWeight: FontWeight.w600),),
//                            Padding(
//                              padding: const EdgeInsets.only(right:15.0),
//                              child: Text("Edit",style: TextStyle(color: Colors.transparent),),
//                            ),
//                          ],
//                        ),
//                      ),
//                    ],
//                  ),
//                ),
//              ],
//            ),
//          ),
        ],
      ),
    );
  }

  Widget _buildRating(
      String date, String details, Function changeRating, String image) {
    return ListTile(
      leading: Container(
        height: 45.0,
        width: 45.0,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            borderRadius: BorderRadius.all(Radius.circular(50.0))),
      ),
      title: Row(
        children: <Widget>[
          StarRating(
            size: 20.0,
            rating: rating,
            starCount: starCount,
            color: Colors.yellow,
            onRatingChanged: changeRating as void Function(double),
            borderColor: Colors.yellow,
          ),
          SizedBox(width: 8.0),
          Text(
            date,
            style: TextStyle(fontSize: 12.0),
          )
        ],
      ),
      subtitle: Text(
        details,
        style: _detailText,
      ),
    );
  }
}

Widget _line() {
  return Container(
    height: 0.9,
    width: double.infinity,
    color: Colors.black12,
  );
}
