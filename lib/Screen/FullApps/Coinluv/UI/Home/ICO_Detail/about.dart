import 'package:crypto_template/Screen/FullApps/Coinluv/Component/Style.dart';
import 'package:flutter/material.dart';

class about extends StatefulWidget {
  @override
  _aboutState createState() => _aboutState();
}

class _aboutState extends State<about> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  height: 100.0,
                  width: 160.0,
                  decoration:
                      BoxDecoration(color: ColorStyle.colorSenondaryBackground),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Starts",
                        style: txtStyle.txtMedium,
                      ),
                      SizedBox(
                        height: 7.0,
                      ),
                      Text(
                        "Feb 23, 2019",
                        style: txtStyle.txtMediumOrange,
                      ),
                      Text(
                        "11:00 PM",
                        style: txtStyle.txtRegular,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 100.0,
                  width: 160.0,
                  decoration:
                      BoxDecoration(color: ColorStyle.colorSenondaryBackground),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Ends",
                        style: txtStyle.txtMedium,
                      ),
                      SizedBox(
                        height: 7.0,
                      ),
                      Text(
                        "Apr 23, 2019",
                        style: txtStyle.txtMediumOrange,
                      ),
                      Text(
                        "11:00 PM",
                        style: txtStyle.txtRegular,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 20.0),
              child: Text(
                "About",
                style: txtStyle.txtMedium,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                height: 250.0,
                width: double.infinity,
                decoration:
                    BoxDecoration(color: ColorStyle.colorSenondaryBackground),
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 15.0, left: 15.0, right: 10.0),
                  child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                    style: txtStyle.txtLight,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 20.0),
              child: Text(
                "Categories",
                style: txtStyle.txtMedium,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 0.0, right: 15.0),
              child: Wrap(
                verticalDirection: VerticalDirection.down,
                children: <Widget>[
                  card("Cat 1", 80.0),
                  card("Long Cat 1", 150.0),
                  card("Cat 1", 80.0),
                  card("Long Cat 2", 150.0),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 20.0),
              child: Text(
                "Social Profiles",
                style: txtStyle.txtMedium,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 10.0, right: 15.0),
              child: Row(
                children: <Widget>[
                  profileCircle(Icons.timer),
                  profileCircle(Icons.favorite),
                  profileCircle(Icons.camera),
                  profileCircle(Icons.report),
                  profileCircle(Icons.location_on),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget card(String txt, double width) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0, top: 10.0),
      child: Container(
        height: 40.0,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(7)),
          color: ColorStyle.colorSenondaryBackground,
        ),
        child: Center(
          child: Text(
            txt,
            style: txtStyle.txtRegular,
          ),
        ),
      ),
    );
  }

  Widget profileCircle(IconData icon) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, top: 0.0),
      child: Container(
        height: 45.0,
        width: 45.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          color: ColorStyle.colorSenondaryBackground,
        ),
        child: Center(
          child: Icon(
            icon,
            color: Colors.white,
            size: 20.0,
          ),
        ),
      ),
    );
  }
}
