import 'package:flutter/material.dart';
import 'package:crypto_template/Library/Constant/SmartKitColor.dart';
import 'package:crypto_template/Screen/FullApps/Vpn/widget/customDivider.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: vpn11,
      appBar: vpnSetAppbar("About") as PreferredSizeWidget?,
      body: ListView(
        padding: EdgeInsets.all(20),
        physics: BouncingScrollPhysics(),
        children: [
          Center(
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(children: [
                TextSpan(
                    text: "Light ",
                    style: TextStyle(
                        color: vpn33,
                        fontSize: 30,
                        fontWeight: FontWeight.w600)),
                TextSpan(
                    text: "VPN",
                    style: TextStyle(
                        color: vpn33,
                        fontSize: 30,
                        fontWeight: FontWeight.w600)),
              ]),
            ),
          ),
          Text(
            "Version 1.0.0",
            textAlign: TextAlign.center,
            style: TextStyle(color: vpn22),
          ),
          ColumnDivider(),
          Image.asset(
            "assets/images/logoApps.png",
            //height: 200,
          ),
          ColumnDivider(),
          Text(
              "Free VPN APPS is a free services to secure your connection and circumvent censorship. Check out our Play Store page for more info.",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black)),
        ],
      ),
    );
  }
}
