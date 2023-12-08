import 'package:flutter/material.dart';

class GalleryScreenT2 extends StatefulWidget {
  GalleryScreenT2({Key? key}) : super(key: key);

  @override
  _GalleryScreenT2State createState() => _GalleryScreenT2State();
}

class _GalleryScreenT2State extends State<GalleryScreenT2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: PageView(
        controller: PageController(
          initialPage: 0,
        ),
        scrollDirection: Axis.horizontal,

        ///Enable physics property to provide your PageView with a
        ///custom scroll behaviour
        ///Here BouncingScrollPhysics will pull back the boundary
        ///item (first or last) if the user tries to scroll further.
        //physics: BouncingScrollPhysics(),
        pageSnapping: true,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
                top: 8.0, bottom: 5.0, left: 5.0, right: 5.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/Vegetable%2FBawal.png?alt=media&token=4c98e743-c464-42e5-a702-9b029bbe0da7"),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 8.0, bottom: 5.0, left: 5.0, right: 5.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/Vegetable%2Fnibbles.png?alt=media&token=73d31f11-8b27-4df6-9e20-fd1dbe362ee7"),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 8.0, bottom: 5.0, left: 5.0, right: 5.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/Vegetable%2FDrumbstick1.png?alt=media&token=c67d8854-7d87-472b-9429-cc00b02b365a"),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 8.0, bottom: 5.0, left: 5.0, right: 5.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/Vegetable%2FButterMurukku.png?alt=media&token=e9b7e453-c154-4059-acf1-95bb862ae854"),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 8.0, bottom: 5.0, left: 5.0, right: 5.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/Vegetable%2FCorn1.png?alt=media&token=eaa26b06-a568-46da-b7b5-134541f1bfde"),
                    fit: BoxFit.cover),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
