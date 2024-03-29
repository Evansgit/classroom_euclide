import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';


class Intro_Slider extends StatelessWidget {
  final pages = [
    //********************************* first slide ***********************************
    PageViewModel(
        pageColor: Colors.blue,
        body: Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: Text(
            'Flutter UI Component',
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            'Welcome',
          ),
        ),
        textStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
        mainImage: CachedNetworkImage(
          imageUrl: 'https://images2.imgbox.com/ac/a5/wYqxsfA5_o.png',
          alignment: Alignment.center,
        )),

    //********************************* second slide ***********************************
    PageViewModel(
      pageColor: Colors.deepOrange[300],
      title: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Text(
          'Ready To Use',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 50),
        child: Text('Save Hours Of Development.'),
      ),
      mainImage: CachedNetworkImage(
        imageUrl: 'https://images2.imgbox.com/c4/17/ybbX6Q3m_o.png',
        width: double.infinity,
        // height: 150.0,
        // width: 150.0,
        alignment: Alignment.center,
      ),
      textStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
    ),

    //********************************* third slide ***********************************
    PageViewModel(
      pageColor: Colors.deepPurple,
      title: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Text(
          'Go With',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 50),
        child: Text('Easy to Use Component'),
      ),
      mainImage: CachedNetworkImage(
        imageUrl: 'https://images2.imgbox.com/1b/82/jYOvQTrp_o.png',
        // height: 150.0,
        //width: 150.0,
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
      ),
      home: Builder(
        builder: (context) => IntroViewsFlutter(
          pages,
          onTapDoneButton: () {
            // Navigator.pushReplacement(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => OnBordingRoute(),
            //   ),
            // );
          },
          pageButtonsColor: Colors.blue,
          pageButtonTextStyles: TextStyle(
              color: Colors.blue, fontSize: 18.0, fontFamily: 'Regular'),
        ),
      ),
    );
  }
}
