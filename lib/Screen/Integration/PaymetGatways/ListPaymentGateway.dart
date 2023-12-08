import 'package:crypto_template/Screen/Integration/PaymetGatways/razorpay_screen.dart';
import 'package:flutter/material.dart';

import 'PayStackScreen.dart';
import 'StripePaymentScreen.dart';

class ListPaymentGatways extends StatefulWidget {
  ListPaymentGatways({Key? key}) : super(key: key);

  @override
  _ListPaymentGatwaysState createState() => _ListPaymentGatwaysState();
}

class _ListPaymentGatwaysState extends State<ListPaymentGatways> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Payment Gateway",
          style: TextStyle(fontFamily: "Sofia", fontWeight: FontWeight.w700),
        ),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // InkWell(
            //     onTap: () {
            //       Navigator.of(context).push(PageRouteBuilder(
            //           pageBuilder: (_, __, ___) => FlutterWaveScreen()));
            //     },
            //     child: card("Flutter Wave Payment Screen", Color(0xFFCCD6A6))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => PayStackScreen()));
                },
                child: card("Pay Stack Payment Screen", Color(0xFFCCD6A6))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => RazorPayScreen()));
                },
                child: card("Razor Pay Payment Screen", Color(0xFFCCD6A6))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => StripePaymentScreen()));
                },
                child: card("Stripe Payment Screen", Color(0xFFCCD6A6))),
          ],
        ),
      ),
    );
  }

  Widget card(String title, Color _colors) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
                color: _colors,
                borderRadius: BorderRadius.all(Radius.circular(5.0))),
            child: Center(
              child: Image.asset(
                "assets/images/logo.png",
                height: 45.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Stack(
              children: [
                Container(
                  height: 90.0,
                  width: MediaQuery.of(context).size.width - 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12.withOpacity(0.03),
                            blurRadius: 10.0,
                            spreadRadius: 5.0)
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 32.0, left: 19.0),
                    child: Text(
                      title,
                      style: TextStyle(
                          fontFamily: "Sofia",
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width - 145, top: 30.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: CircleAvatar(
                      child: Center(
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 14.0,
                        ),
                      ),
                      backgroundColor: _colors,
                      radius: 14.0,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
