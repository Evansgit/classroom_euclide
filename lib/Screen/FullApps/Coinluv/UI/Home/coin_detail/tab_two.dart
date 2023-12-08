import 'package:flutter/material.dart';

import 'package:crypto_template/Screen/FullApps/Coinluv/Component/Style.dart';

class tabTwo extends StatefulWidget {
  _tabTwoState createState() => _tabTwoState();
}

class _tabTwoState extends State<tabTwo> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          card(
              "https://www.cryptocurrencer.com/wp-content/uploads/2018/01/CRYPTOCURRENCY-bitcoin-logo.jpg",
              "Title",
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry printing and typesetting industry"),
          card(
              "https://www.cryptocurrencer.com/wp-content/uploads/2018/01/CRYPTOCURRENCY-bitcoin-logo.jpg",
              "Title",
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry printing and typesetting industry"),
          card(
              "https://www.cryptocurrencer.com/wp-content/uploads/2018/01/CRYPTOCURRENCY-bitcoin-logo.jpg",
              "Title",
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry printing and typesetting industry"),
          card(
              "https://www.cryptocurrencer.com/wp-content/uploads/2018/01/CRYPTOCURRENCY-bitcoin-logo.jpg",
              "Title",
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry printing and typesetting industry"),
          card(
              "https://www.cryptocurrencer.com/wp-content/uploads/2018/01/CRYPTOCURRENCY-bitcoin-logo.jpg",
              "Title",
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry printing and typesetting industry"),
          card(
              "https://www.cryptocurrencer.com/wp-content/uploads/2018/01/CRYPTOCURRENCY-bitcoin-logo.jpg",
              "Title",
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry printing and typesetting industry"),
        ],
      ),
    );
  }
}

Widget card(String img, String txtHeader, String txtSub) {
  return Padding(
    padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
    child: Container(
      height: 90.0,
      width: double.infinity,
      decoration: BoxDecoration(color: ColorStyle.colorSenondaryBackground),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Image.network(
              img,
              height: 32.0,
              width: 32.0,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                txtHeader,
                style: txtStyle.txtHeader,
              ),
              Container(
                  width: 230.0,
                  child: Text(
                    txtSub,
                    style:
                        txtStyle.txtLight.copyWith(fontWeight: FontWeight.w200),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Icon(
              Icons.chevron_right,
              color: Colors.white,
              size: 30.0,
            ),
          )
        ],
      ),
    ),
  );
}
