import 'package:crypto_template/Screen/FullApps/Coinluv/Component/Style.dart';
import 'package:crypto_template/Screen/FullApps/Coinluv/UI/Home/ICO_Detail/ico_detail.dart';
import 'package:flutter/material.dart';

class active extends StatefulWidget {
  _activeState createState() => _activeState();
}

class _activeState extends State<active> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          card(
              "https://www.cryptocurrencer.com/wp-content/uploads/2018/01/CRYPTOCURRENCY-bitcoin-logo.jpg",
              "TITLE (PRE-ICO)",
              "4.2",
              "Lorem ipsum dolor sit amet, conadada. Loremipsum dolor sit amet, conadada.",
              Icons.timer,
              "87 days 18 hours left",
              Icons.chevron_right),
          card(
              "https://www.cryptocurrencer.com/wp-content/uploads/2018/01/CRYPTOCURRENCY-bitcoin-logo.jpg",
              "TITLE (PRE-ICO)",
              "4.2",
              "Lorem ipsum dolor sit amet, conadada. Loremipsum dolor sit amet, conadada.",
              Icons.timer,
              "87 days 18 hours left",
              Icons.chevron_right),
          card(
              "https://www.cryptocurrencer.com/wp-content/uploads/2018/01/CRYPTOCURRENCY-bitcoin-logo.jpg",
              "TITLE (PRE-ICO)",
              "4.2",
              "Lorem ipsum dolor sit amet, conadada. Loremipsum dolor sit amet, conadada.",
              Icons.timer,
              "87 days 18 hours left",
              Icons.chevron_right),
          card(
              "https://www.cryptocurrencer.com/wp-content/uploads/2018/01/CRYPTOCURRENCY-bitcoin-logo.jpg",
              "TITLE (PRE-ICO)",
              "4.2",
              "Lorem ipsum dolor sit amet, conadada. Loremipsum dolor sit amet, conadada.",
              Icons.timer,
              "87 days 18 hours left",
              Icons.chevron_right),
        ],
      ),
    );
  }

  Widget card(String iconImg, String title, String rating, String subTitle,
      IconData iconBtmL, String time, IconData iconBtmR) {
    return Padding(
      padding: const EdgeInsets.only(
          top: 15.0, left: 15.0, right: 15.0, bottom: 5.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
              PageRouteBuilder(pageBuilder: (_, __, ___) => new icoDetail()));
        },
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              color: ColorStyle.colorSenondaryBackground),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 170.0,
                width: 4.0,
                decoration: BoxDecoration(
                    color: ColorStyle.colorOrangeBackground,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0))),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Image.network(
                          iconImg,
                          height: 30.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(
                            title,
                            style: txtStyle.txtMedium,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40.0),
                          child: Container(
                            height: 27.0,
                            width: 50.0,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(3.0)),
                                color: ColorStyle.colorOrangeBackground),
                            child: Center(
                                child:
                                    Text(rating, style: txtStyle.txtRegular)),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 50.0, right: 10.0, top: 10.0),
                    child: Container(
                        width: 200.0,
                        child: Text(subTitle, style: txtStyle.txtLightRoboto)),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              iconBtmL,
                              color: Colors.white,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text(
                                time,
                                style: txtStyle.txtRegular
                                    .copyWith(fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 60.0),
                          child: Icon(
                            iconBtmR,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  )
                ],
              ),
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}
