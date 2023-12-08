import 'package:crypto_template/Screen/FullApps/Coinluv/Component/Style.dart';
import 'package:flutter/material.dart';

class newsLayout extends StatefulWidget {
  @override
  _newsLayoutState createState() => _newsLayoutState();
}

class _newsLayoutState extends State<newsLayout> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: <Widget>[
        cardTwitter("Google Devs", "@GoogleDevsIndia 3m",
            "Inviting computer science students to register for the lastest event in computer technology"),
        cardTwitter("Google Devs", "@GoogleDevsIndia 3m",
            "Inviting computer science students to register for the lastest event in computer technology"),
        cardTwitter("Google Devs", "@GoogleDevsIndia 3m",
            "Inviting computer science students to register for the lastest event in computer technology"),
        cardTwitter("Google Devs", "@GoogleDevsIndia 3m",
            "Inviting computer science students to register for the lastest event in computer technology"),
        cardTwitter("Google Devs", "@GoogleDevsIndia 3m",
            "Inviting computer science students to register for the lastest event in computer technology"),
        cardTwitter("Google Devs", "@GoogleDevsIndia 3m",
            "Inviting computer science students to register for the lastest event in computer technology"),
      ],
    ));
  }

  Widget cardTwitter(String header, String subHeader, String txt) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        color: ColorStyle.colorSenondaryBackground,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 14.0, left: 8.0),
              child: Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(50.0))),
                  child: Icon(Icons.person)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Google Devs",
                          style: txtStyle.txtHeader,
                        ),
                        Text(
                          " @GoogleDevsIndia 3m",
                          style:
                              txtStyle.txtLightRoboto.copyWith(fontSize: 13.0),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(top: 10.0),
                      width: 260.0,
                      child: Text(
                        "Inviting computer science students to register for the lastest event in computer technology",
                        style: txtStyle.txtLightRoboto,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, bottom: 15.0),
                    child: Container(
                      width: 250.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Icon(
                            Icons.comment,
                            color: Colors.white,
                          ),
                          Icon(Icons.repeat, color: Colors.white),
                          Icon(Icons.favorite_border, color: Colors.white),
                          Icon(Icons.share, color: Colors.white)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
