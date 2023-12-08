import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:line_icons/line_icons.dart';
import 'package:crypto_template/Library/Constant/SmartKitColor.dart';
import 'package:crypto_template/Screen/FullApps/Vpn/mobile/Screens/VpnSubscriptionDetailMobile.dart';
import 'package:crypto_template/Screen/FullApps/Vpn/widget/customDivider.dart';

import 'VpnKillSwitchMobile.dart';
import 'VpnSelectVpnMobile.dart';
import 'VpnsharePageMobile.dart';
import 'aboutScreenMobile.dart';

class VpnHomeMobile extends StatefulWidget {
  VpnHomeMobile({Key? key}) : super(key: key);

  @override
  _VpnHomeStateMobile createState() => _VpnHomeStateMobile();
}

class _VpnHomeStateMobile extends State<VpnHomeMobile>
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
        backgroundColor: Colors.blueAccent,
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
          icon: Icon(
            Icons.menu,
            color: Colors.white,
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
                        builder: (context) => VpnSubscriptionDetailMobile()));
              },
              child: Container(
                decoration: vpncirculargradient_box,
                margin: EdgeInsets.only(top: 25, left: 20, right: 20),
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.workspace_premium,
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
            Icon(
              Icons.flag,
              color: Colors.blueAccent,
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
        context, MaterialPageRoute(builder: (context) => VpnSelectVpnMobile()));
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
                  color: Colors.blue,
                  width: 30.0,
                  fit: BoxFit.fill,
                ),
              ),
              Text(
                "Free VPN APPS",
                style: Theme.of(context).textTheme.headlineSmall!.merge(
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
              )
            ]),
          ),
        ),
        ListTile(
          //dense: true,
          leading: Icon(
            Icons.location_city,
            color: Colors.blue,
          ),
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
                MaterialPageRoute(builder: (context) => VpnKillSwitchMobile()));
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
          leading: Icon(
            Icons.privacy_tip,
          ),
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
          leading: Icon(
            Icons.terminal_sharp,
            color: Colors.blue,
          ),
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
                MaterialPageRoute(builder: (context) => AboutScreenMobile()));
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
          leading: Icon(
            Icons.share,
            color: Colors.blue,
          ),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => VpnSharePageMobile()));
          },
        ),
      ],
    );
  }
}
