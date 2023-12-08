import 'package:crypto_template/Screen/FullApps/Coinluv/Component/Style.dart';
import 'package:flutter/material.dart';

class financials extends StatefulWidget {
  @override
  _financialsState createState() => _financialsState();
}

class _financialsState extends State<financials> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 400.0,
              width: double.infinity,
              decoration:
                  BoxDecoration(color: ColorStyle.colorSenondaryBackground),
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
                child: ListView(
                  children: <Widget>[
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Token Name",
                          style: txtStyle.txtLight,
                        ),
                        Text(
                          "VTX",
                          style: txtStyle.txtMediumOrange,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Token Price",
                          style: txtStyle.txtLight,
                        ),
                        Text(
                          "1 VTX = 0.33 USD",
                          style: txtStyle.txtMediumOrange,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Bonus",
                          style: txtStyle.txtLight,
                        ),
                        Text(
                          "Yes",
                          style: txtStyle.txtMediumOrange,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Token for Sale",
                          style: txtStyle.txtLight,
                        ),
                        Text(
                          "10,00,00,000",
                          style: txtStyle.txtMediumOrange,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 50.0,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.blueAccent, Colors.lightBlueAccent])),
              child: Center(
                child: Text(
                  "BUY NOW ON EXCHANGE",
                  style: txtStyle.txtMedium,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
