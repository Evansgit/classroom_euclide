import 'package:flutter/material.dart';
import 'package:crypto_template/Library/Constant/SmartKitColor.dart';
import 'package:crypto_template/Screen/FullApps/SmartKey/mobile/SmartKeyScreens/SmartKeyHomeMobile.dart';
import 'package:crypto_template/Screen/FullApps/SmartKey/mobile/SmartKeyScreens/SmartKeySubCategoryMobile.dart';

class SmartKeyCategoryMobile extends StatefulWidget {
  SmartKeyCategoryMobile({Key? key}) : super(key: key);

  @override
  _SmartKeyCategoryMobileState createState() => _SmartKeyCategoryMobileState();
}

class _SmartKeyCategoryMobileState extends State<SmartKeyCategoryMobile> {
  @override
  Widget build(BuildContext context) {
    List catList = [
      {'img': "assets/images/logoApps.png", 'title': "demo"},
      {'img': "assets/images/logoApps.png", 'title': "demo"},
      {'img': "assets/images/logoApps.png", 'title': "demo"},
      {'img': "assets/images/logoApps.png", 'title': "demo"},
      {'img': "assets/images/logoApps.png", 'title': "demo"},
      {'img': "assets/images/logoApps.png", 'title': "demo"}
    ];

    Widget listLitem(int index) {
      return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Card(
            child: Material(
                borderRadius: BorderRadius.circular(20.0),
                //color:primary,
                child: InkWell(
                    splashColor: smartkey2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          Image.asset(
                            "assets/images/logoApps.png",
                            width: 40,
                            height: 40,
                          ),
                          Expanded(
                            child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  catList[index]['title'],
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )),
                          )
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SmartKeySubCategoryMobile(),
                        ),
                      );
                    })),
            elevation: 5,
          ));
    }

    return WillPopScope(
      onWillPop: () {
        return Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => SmartKeyHomeMobile(),
          ),
        ).then((value) => value as bool);
      },
      child: Scaffold(
          backgroundColor: smartkey2,
          appBar: AppBar(
            elevation: 0.0,
            title: Container(child: Text("Select Category")),
            backgroundColor: Colors.transparent,
            flexibleSpace: Container(
              decoration: BoxDecoration(gradient: smartkeygradient),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: catList.length,
                itemBuilder: (BuildContext context, int index) {
                  return listLitem(index);
                }),
          )),
    );
  }
}
