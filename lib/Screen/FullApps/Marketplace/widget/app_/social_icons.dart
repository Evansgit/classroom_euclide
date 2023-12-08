import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialIcons extends StatefulWidget {
  Function? onPressed;
  SocialIcons({this.onPressed});
  @override
  State<StatefulWidget> createState() {
    return SocialIconsState();
  }
}

class SocialIconsState extends State<SocialIcons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 0.0),
      child: Column(
        children: <Widget>[
          Text(
            'or connect with',
            style: TextStyle(
                fontFamily: "Sofia",
                fontWeight: FontWeight.w300,
                fontSize: 15.0,
                color: Colors.white),
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                height: 50.0,
                width: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  color: Colors.white,
                ),
                child: IconButton(
                  // onPressed: widget.onPressed,
                  onPressed: () async {},
                  icon: Icon(
                    FontAwesomeIcons.facebookF,
                    color: Colors.blueAccent,
                  ),
                  iconSize: 30.0,
                ),
              ),
              Container(
                height: 50.0,
                width: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  color: Colors.white,
                ),
                child: IconButton(
                  onPressed: () async {},
                  icon: Icon(FontAwesomeIcons.google),
                  iconSize: 30.0,
                ),
              ),
              Container(
                height: 50.0,
                width: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  color: Colors.white,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.twitter,
                    color: Colors.lightBlueAccent,
                  ),
                  iconSize: 30.0,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  void _buildShowDialog({String? error, String? errorDetails}) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Text('$errorDetails'),
            title: Text('$error'),
            actions: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0, backgroundColor: Colors.transparent,
                ),
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }
}
