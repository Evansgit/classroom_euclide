import 'dart:io';

import 'package:flutter/material.dart';

class imageGallerySelected extends StatefulWidget {
  @override
  _imageGallerySelectedState createState() => _imageGallerySelectedState();
}

class _imageGallerySelectedState extends State<imageGallerySelected> {
  @override
  //save the result of gallery file
  File? galleryFile1,
      galleryFile2,
      galleryFile3,
      galleryFile4,
      galleryFile5,
      galleryFile6,
      galleryFile7,
      galleryFile8,
      galleryFile9;
  Widget build(BuildContext context) {
    //display image selected from gallery

    MediaQueryData mediaQuery = MediaQuery.of(context);
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    final MediaQueryData media = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          InkWell(
                            onTap: () {
//                  imageSelectorGallery1();
                            },
                            child: displaySelectedFile1(galleryFile1),
                          ),
                          InkWell(
                            onTap: () {
//                  imageSelectorGallery2();
                            },
                            child: displaySelectedFile2(galleryFile2),
                          ),
                          InkWell(
                            onTap: () {
//                  imageSelectorGallery3();
                            },
                            child: displaySelectedFile3(galleryFile3),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          InkWell(
                            onTap: () {
//                  imageSelectorGallery4();
                            },
                            child: displaySelectedFile4(galleryFile4),
                          ),
                          InkWell(
                            onTap: () {
//                  imageSelectorGallery5();
                            },
                            child: displaySelectedFile5(galleryFile5),
                          ),
                          InkWell(
                            onTap: () {
//                  imageSelectorGallery6();
                            },
                            child: displaySelectedFile6(galleryFile6),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          InkWell(
                            onTap: () {
//                  imageSelectorGallery7();
                            },
                            child: displaySelectedFile7(galleryFile7),
                          ),
                          InkWell(
                            onTap: () {
//                  imageSelectorGallery8();
                            },
                            child: displaySelectedFile8(galleryFile8),
                          ),
                          InkWell(
                            onTap: () {
//                  imageSelectorGallery9();
                            },
                            child: displaySelectedFile9(galleryFile9),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          /// Get a class AppbarGradient
          /// This is a Appbar in home activity
          Container(
            height: 200.0,
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: statusBarHeight),
                  height: 58.0 + statusBarHeight,
                  width: double.infinity,
                  decoration: BoxDecoration(

                      /// gradient in appbar
                      gradient: LinearGradient(
                          colors: [
                            const Color(0xFFA3BDED),
                            const Color(0xFF6991C7),
                          ],
                          begin: const FractionalOffset(0.0, 0.0),
                          end: const FractionalOffset(1.0, 0.0),
                          stops: [0.0, 1.0],
                          tileMode: TileMode.clamp)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: InkWell(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              "Cancel",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.0),
                            )),
                      ),
                      Center(
                          child: Text(
                        "Camera Roll",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontFamily: "Sofia",
                            fontWeight: FontWeight.w600),
                      )),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Text(
                          "Done",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget displaySelectedFile1(File? file) {
  double size = 110.0;
  return new Container(
      height: size,
      width: size,
      color: Color(0xFFD2E1FF).withOpacity(0.3),
//child: new Card(child: new Text(''+galleryFile.toString())),
//child: new Image.file(galleryFile),
      child: file == null
          ? new Container(
              height: size,
              width: size,
              color: Color(0xFFD2E1FF).withOpacity(0.3),
              child: Center(
                  child: Text(
                "No image",
                style: TextStyle(color: Colors.black54),
              )),
            )
          : new Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: <Widget>[
                Container(
                  height: size,
                  width: size,
                  color: Color(0xFFD2E1FF).withOpacity(0.3),
                  child: Image.file(
                    file,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 30.0,
                  width: 30.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      color: Colors.red),
                  child: Center(
                    child: Text(
                      "1",
                      style: TextStyle(color: Colors.white, fontSize: 17.0),
                    ),
                  ),
                )
              ],
            ));
}

Widget displaySelectedFile2(File? file) {
  double size = 110.0;
  return new Container(
      height: size,
      width: size,
      color: Color(0xFFD2E1FF).withOpacity(0.3),
//child: new Card(child: new Text(''+galleryFile.toString())),
//child: new Image.file(galleryFile),
      child: file == null
          ? new Container(
              height: size,
              width: size,
              color: Color(0xFFD2E1FF).withOpacity(0.3),
              child: Center(
                  child: Text(
                "No image",
                style: TextStyle(color: Colors.black54),
              )),
            )
          : new Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: <Widget>[
                Container(
                  height: size,
                  width: size,
                  color: Color(0xFFD2E1FF).withOpacity(0.3),
                  child: Image.file(
                    file,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 30.0,
                  width: 30.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      color: Colors.red),
                  child: Center(
                    child: Text(
                      "2",
                      style: TextStyle(color: Colors.white, fontSize: 17.0),
                    ),
                  ),
                )
              ],
            ));
}

Widget displaySelectedFile3(File? file) {
  double size = 110.0;
  return new Container(
      height: size,
      width: size,
      color: Color(0xFFD2E1FF).withOpacity(0.3),
//child: new Card(child: new Text(''+galleryFile.toString())),
//child: new Image.file(galleryFile),
      child: file == null
          ? new Container(
              height: size,
              width: size,
              color: Color(0xFFD2E1FF).withOpacity(0.3),
              child: Center(
                  child: Text(
                "No image",
                style: TextStyle(color: Colors.black54),
              )),
            )
          : new Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: <Widget>[
                Container(
                  height: size,
                  width: size,
                  color: Color(0xFFD2E1FF).withOpacity(0.3),
                  child: Image.file(
                    file,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 30.0,
                  width: 30.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      color: Colors.red),
                  child: Center(
                    child: Text(
                      "3",
                      style: TextStyle(color: Colors.white, fontSize: 17.0),
                    ),
                  ),
                )
              ],
            ));
}

Widget displaySelectedFile4(File? file) {
  double size = 110.0;
  return new Container(
      height: size,
      width: size,
      color: Color(0xFFD2E1FF).withOpacity(0.3),
//child: new Card(child: new Text(''+galleryFile.toString())),
//child: new Image.file(galleryFile),
      child: file == null
          ? new Container(
              height: size,
              width: size,
              color: Color(0xFFD2E1FF).withOpacity(0.3),
              child: Center(
                  child: Text(
                "No image",
                style: TextStyle(color: Colors.black54),
              )),
            )
          : new Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: <Widget>[
                Container(
                  height: size,
                  width: size,
                  color: Color(0xFFD2E1FF).withOpacity(0.3),
                  child: Image.file(
                    file,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 30.0,
                  width: 30.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      color: Colors.red),
                  child: Center(
                    child: Text(
                      "4",
                      style: TextStyle(color: Colors.white, fontSize: 17.0),
                    ),
                  ),
                )
              ],
            ));
}

Widget displaySelectedFile5(File? file) {
  double size = 110.0;
  return new Container(
      height: size,
      width: size,
      color: Color(0xFFD2E1FF).withOpacity(0.3),
//child: new Card(child: new Text(''+galleryFile.toString())),
//child: new Image.file(galleryFile),
      child: file == null
          ? new Container(
              height: size,
              width: size,
              color: Color(0xFFD2E1FF).withOpacity(0.3),
              child: Center(
                  child: Text(
                "No image",
                style: TextStyle(color: Colors.black54),
              )),
            )
          : new Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: <Widget>[
                Container(
                  height: size,
                  width: size,
                  color: Color(0xFFD2E1FF).withOpacity(0.3),
                  child: Image.file(
                    file,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 30.0,
                  width: 30.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      color: Colors.red),
                  child: Center(
                    child: Text(
                      "5",
                      style: TextStyle(color: Colors.white, fontSize: 17.0),
                    ),
                  ),
                )
              ],
            ));
}

Widget displaySelectedFile6(File? file) {
  double size = 110.0;
  return new Container(
      height: size,
      width: size,
      color: Color(0xFFD2E1FF).withOpacity(0.3),
//child: new Card(child: new Text(''+galleryFile.toString())),
//child: new Image.file(galleryFile),
      child: file == null
          ? new Container(
              height: size,
              width: size,
              color: Color(0xFFD2E1FF).withOpacity(0.3),
              child: Center(
                  child: Text(
                "No image",
                style: TextStyle(color: Colors.black54),
              )),
            )
          : new Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: <Widget>[
                Container(
                  height: size,
                  width: size,
                  color: Color(0xFFD2E1FF).withOpacity(0.3),
                  child: Image.file(
                    file,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 30.0,
                  width: 30.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      color: Colors.red),
                  child: Center(
                    child: Text(
                      "6",
                      style: TextStyle(color: Colors.white, fontSize: 17.0),
                    ),
                  ),
                )
              ],
            ));
}

Widget displaySelectedFile7(File? file) {
  double size = 110.0;
  return new Container(
      height: size,
      width: size,
      color: Color(0xFFD2E1FF).withOpacity(0.3),
//child: new Card(child: new Text(''+galleryFile.toString())),
//child: new Image.file(galleryFile),
      child: file == null
          ? new Container(
              height: size,
              width: size,
              color: Color(0xFFD2E1FF).withOpacity(0.3),
              child: Center(
                  child: Text(
                "No image",
                style: TextStyle(color: Colors.black54),
              )),
            )
          : new Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: <Widget>[
                Container(
                  height: size,
                  width: size,
                  color: Color(0xFFD2E1FF).withOpacity(0.3),
                  child: Image.file(
                    file,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 30.0,
                  width: 30.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      color: Colors.red),
                  child: Center(
                    child: Text(
                      "7",
                      style: TextStyle(color: Colors.white, fontSize: 17.0),
                    ),
                  ),
                )
              ],
            ));
}

Widget displaySelectedFile8(File? file) {
  double size = 110.0;
  return new Container(
      height: size,
      width: size,
      color: Color(0xFFD2E1FF).withOpacity(0.3),
//child: new Card(child: new Text(''+galleryFile.toString())),
//child: new Image.file(galleryFile),
      child: file == null
          ? new Container(
              height: size,
              width: size,
              color: Color(0xFFD2E1FF).withOpacity(0.3),
              child: Center(
                  child: Text(
                "No image",
                style: TextStyle(color: Colors.black54),
              )),
            )
          : new Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: <Widget>[
                Container(
                  height: size,
                  width: size,
                  color: Color(0xFFD2E1FF).withOpacity(0.3),
                  child: Image.file(
                    file,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 30.0,
                  width: 30.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      color: Colors.red),
                  child: Center(
                    child: Text(
                      "8",
                      style: TextStyle(color: Colors.white, fontSize: 17.0),
                    ),
                  ),
                )
              ],
            ));
}

Widget displaySelectedFile9(File? file) {
  double size = 110.0;
  return new Container(
      height: size,
      width: size,
      color: Color(0xFFD2E1FF).withOpacity(0.3),
//child: new Card(child: new Text(''+galleryFile.toString())),
//child: new Image.file(galleryFile),
      child: file == null
          ? new Container(
              height: size,
              width: size,
              color: Color(0xFFD2E1FF).withOpacity(0.3),
              child: Center(
                  child: Text(
                "No image",
                style: TextStyle(color: Colors.black54),
              )),
            )
          : new Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: <Widget>[
                Container(
                  height: size,
                  width: size,
                  color: Color(0xFFD2E1FF).withOpacity(0.3),
                  child: Image.file(
                    file,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 30.0,
                  width: 30.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      color: Colors.red),
                  child: Center(
                    child: Text(
                      "9",
                      style: TextStyle(color: Colors.white, fontSize: 17.0),
                    ),
                  ),
                )
              ],
            ));
}
