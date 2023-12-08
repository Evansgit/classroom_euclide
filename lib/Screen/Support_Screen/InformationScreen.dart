import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InformationScreen extends StatefulWidget {
  InformationScreen({Key? key}) : super(key: key);

  @override
  _InformationScreenState createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {
  @override
  Widget build(BuildContext context) {
    _launchURLRating() async {
      const url =
          'https://codecanyon.net/item/flutter-biggest-pro-kit-flutter-ui-kit-in-flutter-ui-kit-flutter/reviews/36377920';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    _launchURLPorto() async {
      const url = 'https://codecanyon.net/user/jeffdeveloper/portfolio';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    _launchURLCode() async {
      const url =
          'https://codecanyon.net/item/flutter-biggest-pro-kit-flutter-ui-kit-in-flutter-ui-kit-flutter/36377920';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "Setting",
          style: TextStyle(
            color: Colors.black,
            fontFamily: "Sofia",
          ),
        ),
      ),
      body: Column(
        children: [
          InkWell(
              onTap: _launchURLRating, child: _card(Icons.grade, "Ratting")),
          InkWell(
              onTap: _launchURLPorto,
              child: _card(Icons.text_snippet, "Our Portofolio")),
          InkWell(
              onTap: _launchURLCode,
              child: _card(Icons.code, "Get Source Code")),
        ],
      ),
    );
  }

  Widget _card(IconData _icon, String _title) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 15.0, right: 15.0, top: 25.0, bottom: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(_icon),
              SizedBox(
                width: 15.0,
              ),
              Text(
                _title,
                style: TextStyle(fontFamily: "Sofia"),
              ),
            ],
          ),
          Icon(Icons.arrow_forward_ios)
        ],
      ),
    );
  }
}
