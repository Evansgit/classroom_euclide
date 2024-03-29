import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:line_icons/line_icons.dart';
import 'package:crypto_template/Library/Constant/SmartKitColor.dart';
import 'package:crypto_template/Screen/FullApps/Vpn/mobile/Screens/VpnSelectVpnMobile.dart';
import 'package:crypto_template/Screen/FullApps/Vpn/tablet/Screens/VpnSubscriptionDetailTablet.dart';
import 'package:crypto_template/Screen/FullApps/Vpn/widget/customDivider.dart';

import 'VpnKillSwitchTablet.dart';
import 'VpnSelectVpnTablet.dart';
import 'VpnsharePageTablet.dart';
import 'aboutScreenTablet.dart';

class VpnHomeTablet extends StatefulWidget {
  VpnHomeTablet({Key? key}) : super(key: key);

  @override
  _VpnHomeStateTablet createState() => _VpnHomeStateTablet();
}

class _VpnHomeStateTablet extends State<VpnHomeTablet>
    with TickerProviderStateMixin {
  AnimationController? rotateController, helmController;
  Animation<double>? helmAnimation;

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  GlobalKey currentLocationButtonKey = GlobalKey();
  GlobalKey connectButtonKey = GlobalKey();
  GlobalKey drawerButtonKey = GlobalKey();
  bool isclicked = false;
  double drawerheaderheight = 150;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: vpn11,
      drawer: Drawer(
        child: _drawerWidget(context),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        elevation: 3,
        flexibleSpace: Container(
          width: double.infinity,
        ),
        centerTitle: true,
        title: Text("Free VPN APPS", style: TextStyle(color: Colors.white)),
        leading: IconButton(
          icon: CachedNetworkImage(
            imageUrl: "https://smartkit.wrteam.in/smartkit/vpn/drawer.png",
            height: 20,
            width: 20,
          ),
          onPressed: () => scaffoldKey.currentState!.openDrawer(),
        ),
      ),
      bottomNavigationBar: vpnSetBottomNavigation(0, context, false),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => VpnSubscriptionDetailTablet()));
              },
              child: Container(
                decoration: vpncirculargradient_box,
                margin: EdgeInsets.only(top: 25, left: 20, right: 20),
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.network(
                      "https://smartkit.wrteam.in/smartkit/vpn/sel_premium.svg",
                      height: 20,
                      width: 20,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Go Premium",
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .merge(TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: _body(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _body() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          children: [
            Center(child: _connectButtonWidget()),
            Positioned.fill(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Status : ",
                      style: Theme.of(context).textTheme.titleLarge!.merge(
                          TextStyle(
                              letterSpacing: 0.5,
                              color: vpn22,
                              fontWeight: FontWeight.bold)),
                    ),
                    Text(
                      isclicked == true ? "Connected" : "Not Connected",
                      //textAlign: TextAlign.center,
                      //style: Theme.of(context).textTheme.headline6.merge(TextStyle(color: value.isConnected ? DesignConfig.green : DesignConfig.pink,fontWeight: FontWeight.w500)),
                      style: Theme.of(context).textTheme.titleLarge!.merge(
                          TextStyle(
                              color: isclicked == true
                                  ? Colors.greenAccent[400]
                                  : Colors.redAccent[400],
                              fontWeight: FontWeight.w500)),
                    ),
                  ],
                ),
//                 }),
              ),
            ),
          ],
        ),
        ColumnDivider(space: 20),
        _currentLocationWidget(),
        ColumnDivider(space: 10),
      ],
    );
  }

  Widget _currentLocationWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: TextButton(
        key: currentLocationButtonKey,
        style: TextButton.styleFrom(
          foregroundColor: Colors.white.withOpacity(0.1), shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(color: vpn77)),
        ),
        child: Row(
          children: [
            CachedNetworkImage(
              imageUrl: "https://smartkit.wrteam.in/smartkit/vpn/canada.png",
              height: 40,
              width: 40,
            ),
            RowDivider(),
            Expanded(
                child: Text(
              "Canada",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .merge(TextStyle(color: vpn77)),
            )),
            RowDivider(),
            Icon(
              LineIcons.angleRight,
              color: Colors.black,
            ),
          ],
        ),
        onPressed: () {
          _changeLocationClick(false);
        },
      ),
    );
  }

  void _changeLocationClick(bool isfinish) async {
    if (isfinish) Navigator.of(context).pop();
    await Navigator.push(
        context, MaterialPageRoute(builder: (context) => VpnSelectVpnTablet()));
  }

  Widget _connectButtonWidget() {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 50),
        child: SvgPicture.network(
          isclicked != true
              ? "https://smartkit.wrteam.in/smartkit/vpn/connect.svg"
              : "https://smartkit.wrteam.in/smartkit/vpn/disconnect.svg",
          width: 160.0,
          fit: BoxFit.fill,
        ),
      ),
      onTap: () {
        if (isclicked == true) {
          setState(() {
            isclicked = false;
          });
        } else {
          setState(() {
            isclicked = true;
          });
        }
      },
    );
  }

  Widget _drawerWidget(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          child: Container(
            height: drawerheaderheight,
            alignment: Alignment.center,
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/images/logoApps.png",
                  color: Colors.white,
                  width: 30.0,
                  fit: BoxFit.fill,
                ),
              ),
              Text(
                "Free VPN APPS",
                style: Theme.of(context).textTheme.headlineSmall!.merge(TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white)),
              )
            ]),
          ),
        ),
        ListTile(
          //dense: true,
          leading: CachedNetworkImage(
              imageUrl:
                  "https://smartkit.wrteam.in/smartkit/vpn/dra_locations.png",
              height: 40,
              width: 30),
          title: Text(
            "Choose Server",
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .merge(TextStyle(color: vpn77)),
          ),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => VpnSelectVpnMobile()));
          },
        ),
        ListTile(
          leading: Icon(LineIcons.wrench, color: Colors.black),
          title: Text(
            "Settings",
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .merge(TextStyle(color: vpn77)),
          ),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => VpnKillSwitchTablet()));
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              Text("About",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .merge(TextStyle(color: vpn77))),
              // RowDivider(),
              Expanded(
                child: Divider(),
              )
            ],
          ),
        ),
        ListTile(
          //dense: true,
          title: Text(
            "Privacy Policy",
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .merge(TextStyle(color: vpn77)),
          ),
          leading: CachedNetworkImage(
              imageUrl:
                  "https://smartkit.wrteam.in/smartkit/vpn/dra_pricacypolicy.png",
              height: 40,
              width: 30),
          //leading: Icon(LineIcons.shield, color: Colors.black),
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
        ListTile(
          //dense: true,
          title: Text(
            "Terms of Services",
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .merge(TextStyle(color: vpn77)),
          ),
          leading: CachedNetworkImage(
              imageUrl:
                  "https://smartkit.wrteam.in/smartkit/vpn/dra_termscondi.png",
              height: 40,
              width: 30),
          //leading: Icon(LineIcons.sticky_note, color: Colors.black),
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
        ListTile(
          //dense: true,
          title: Text(
            "About",
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .merge(TextStyle(color: vpn77)),
          ),
          leading: Icon(LineIcons.infoCircle, color: Colors.black),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AboutScreenTablet()));
          },
        ),
        ListTile(
          //dense: true,
          title: Text(
            "Rate Us",
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .merge(TextStyle(color: vpn77)),
          ),
          leading: Icon(
            LineIcons.starAlt,
            color: Colors.black,
          ),
          // onTap: _rateUsClick,
        ),
        ListTile(
          //dense: true,
          title: Text(
            "Share App",
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .merge(TextStyle(color: vpn77)),
          ),
          leading: CachedNetworkImage(
              imageUrl: "https://smartkit.wrteam.in/smartkit/vpn/dra_share.png",
              height: 40,
              width: 30),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => VpnSharePageTablet()));
          },
        ),
      ],
    );
  }
}
