import 'package:flutter/material.dart';
import '../Support_Screen/InformationScreen.dart';
import 'AlliedWallet/SplashScreen.dart';
import 'ChatApp/main.dart';
import 'Coinapult/SplashScreen.dart';
import 'Coinbase/SplashScreen.dart';
import 'Coinluv/UI/Opening/SplashScreen.dart';
import 'DataCellulerApps/main.dart';
import 'FreshChoice/OnBoarding_Screen/SplashScreen_T3.dart';
import 'HouseWix/main.dart';
import 'Marketplace/main.dart';
import 'Mozido/SplashScreen.dart';
import 'NIuEducation/Opening/SplashScreen.dart';
import 'RecipesMeat/Screen/Intro/SplashScreen.dart';
import 'Safeway/Splash/SplashScreenT5.dart';
import 'SmartKey/SmartKeyMain.dart';
import 'Snapcash/SplashScreen.dart';
import 'SunriseMart/Intro/Splash_Screen_T2.dart';
import 'VinckierFoods/SplashScreen.dart';
import 'Vpn/VpnMain.dart';
import 'Workout/main.dart';
import 'cloudStorage/screens/CSSplashScreen.dart';
import 'medium/screens/MSplashScreen.dart';

class FullAppsList extends StatefulWidget {
  FullAppsList({Key? key}) : super(key: key);

  @override
  _FullAppsListState createState() => _FullAppsListState();
}

class _FullAppsListState extends State<FullAppsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          centerTitle: false,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          actions: <Widget>[
            InkWell(
              onTap: () {
                // _showInterstitialAd();
                Navigator.of(context).push(PageRouteBuilder(
                    pageBuilder: (_, __, ___) => InformationScreen()));
              },
              child: Padding(
                  padding:
                      const EdgeInsets.only(right: 20.0, left: 20.0, top: 15.0),
                  child: Image.asset(
                    "assets/images/help.png",
                    height: 25.0,
                    width: 25.0,
                  )),
            )
          ],
          title: Padding(
            padding: const EdgeInsets.only(top: 25.0, left: 2.0),
            child: Text(
              "Full Application",
              style: TextStyle(
                  fontFamily: "Sofia",
                  fontWeight: FontWeight.w900,
                  fontSize: 31.0,
                  color: Colors.black),
            ),
          ),
          elevation: 0.0,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => MyAppWorkout()));
                },
                child: card(
                    "Gold Gym Workout", Color.fromARGB(255, 131, 202, 163))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SplashScreenAllied()));
                },
                child: card("Allied Wallet", Color(0xFF4CA1A3))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SplashScreenApult()));
                },
                child: card("Coinapult", Color(0xFFA5E1AD))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SplashScreenCoinbase()));
                },
                child: card("Coinbase", Color(0xFFF1CA89))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => Marketplace()));
                },
                child: card("Marketplace", Color(0xFFFFB26B))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SplashScreenT3()));
                },
                child: card("Fresh Choice", Color(0xFF939B62))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SplashScreenMozido()));
                },
                child: card("Mozido", Color(0xFFFFD56B))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SplashScreenT5()));
                },
                child: card("Safeway", Color(0xFF907FA4))),
            //
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => CSSplashScreen()));
                },
                child: card("Cloud Storage", Color(0xFFA7BBC7))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => HouseWix()));
                },
                child: card("House Wix", Color.fromARGB(255, 195, 186, 255))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => MSplashScreen()));
                },
                child: card("Medium", Color(0xFF8AC4D0))),

            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SmartKeyMain()));
                },
                child: card("Quiz App", Color(0xFFA7BBC7))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      PageRouteBuilder(pageBuilder: (_, __, ___) => VpnMain()));
                },
                child: card("LightVpn", Color(0xFFECA3F5))),
            // InkWell(
            //     onTap: () {
            //       Navigator.of(context).push(PageRouteBuilder(
            //           pageBuilder: (_, __, ___) => NBSplashScreen()));
            //     },
            //     child: card("NewsBlog", Color(0xFF898AA6))),

            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => DataCellulerApps()));
                },
                child: card("Data Celluler Apps", Color(0xFFA5E1AD))),

            InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      PageRouteBuilder(pageBuilder: (_, __, ___) => MainWa()));
                },
                child: card("WhatsApp Chatting", Color(0xFF4CA1A3))),

            // InkWell(
            //     onTap: () {
            //       Navigator.of(context).push(PageRouteBuilder(
            //           pageBuilder: (_, __, ___) => EASplashScreen()));
            //     },
            //     child: card("Event", Color(0xFFFCC5C0))),

            ///
            InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      PageRouteBuilder(pageBuilder: (_, __, ___) => CoinLuv()));
                },
                child: card("Coin Luv Wallet", Color(0xFFA6D6D6))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SplashScreenSnapcash()));
                },
                child: card("Snapcash", Color(0xFFA7BBC7))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SplashScreenSunriseMart()));
                },
                child: card("Sunrise Mart", Color(0xFFECA3F5))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SplashNiu()));
                },
                child: card("Niu Education", Color(0xFFBDD2B6))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SplashScreenT4()));
                },
                child: card("Vinckier Foods", Color(0xFF7ECA9C))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => RecipesMeat()));
                },
                child: card("Recipes Meat", Color(0xFF8AC4D0))),
            SizedBox(
              height: 100.0,
            )
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
