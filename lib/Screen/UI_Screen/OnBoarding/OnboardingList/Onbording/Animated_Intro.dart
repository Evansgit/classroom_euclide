import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';

class Animated_Intro extends StatelessWidget {
  //making list of pages needed to pass in IntroViewsFlutter constructor.
  final pages = [
    PageViewModel(
        pageColor: const Color(0xFF03A9F4),
        bubble: CachedNetworkImage(
            imageUrl: 'https://images2.imgbox.com/0b/eb/jtEbIimr_o.png'),
        body: Text(
          'Haselfree  booking  of  flight  tickets  with  full  refund  on  cancelation',
        ),
        title: Text(
          'Lorem Ipsum',
        ),
        textStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
        mainImage: CachedNetworkImage(
          imageUrl: 'https://images2.imgbox.com/d4/8a/iIeNlBaL_o.png',
          height: 285.0,
          width: 285.0,
          alignment: Alignment.center,
        )),
    PageViewModel(
      pageColor: const Color(0xFF8BC34A),
      iconImageAssetPath:
          'https://smartkit.wrteam.in/smartkit/images/waiter.png',
      body: Text(
        'We  work  for  the  comfort ,  enjoy  your  stay  at  our  beautiful  hotels',
      ),
      title: Text('Hotels'),
      mainImage: CachedNetworkImage(
        imageUrl: 'https://images2.imgbox.com/0b/eb/jtEbIimr_o.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      ),
      textStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
    ),
    PageViewModel(
      pageColor: const Color(0xFF607D8B),
      iconImageAssetPath: 'https://images2.imgbox.com/9d/9d/M8dm2wOS_o.png',
      body: Text(
        'Easy  cab  booking  at  your  doorstep  with  cashless  payment  system',
      ),
      title: Text('Cabs'),
      mainImage: CachedNetworkImage(
        imageUrl: 'https://images2.imgbox.com/ac/a5/wYqxsfA5_o.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      ),
      textStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IntroViews Flutter', //title of app
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ), //ThemeData
      home: Builder(
        builder: (context) => IntroViewsFlutter(
          pages,
          onTapDoneButton: () {},
          pageButtonTextStyles: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ), //IntroViewsFlutter
      ), //Builder
    ); //Material App
  }
}
