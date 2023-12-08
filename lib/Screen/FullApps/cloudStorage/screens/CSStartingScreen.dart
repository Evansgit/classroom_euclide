import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:crypto_template/Screen/FullApps/cloudStorage/screens/CSDashboardScreen.dart';
import 'package:crypto_template/Screen/FullApps/cloudStorage/screens/CSSignInScreen.dart';
import 'package:crypto_template/Screen/FullApps/cloudStorage/utils/CSColors.dart';
import 'package:crypto_template/Screen/FullApps/cloudStorage/utils/CSImages.dart';
import 'package:crypto_template/Screen/FullApps/cloudStorage/utils/CSWidgets.dart';

class CSStartingScreen extends StatefulWidget {
  static String tag = '/CSStartingScreen';

  @override
  CSStartingScreenState createState() => CSStartingScreenState();
}

class CSStartingScreenState extends State<CSStartingScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {}

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(CSFileSharingLogo, height: 200, width: 200),
              10.height,
              200.height,
              googleSignInWidget().onTap(
                () {
                  CSDashboardScreen().launch(context);
                },
              ),
              15.height,
              appleSignInWidget().onTap(
                () {
                  CSDashboardScreen().launch(context);
                },
              ),
              15.height,
              authButtonWidget("Sign Up").onTap(
                () {
                  CSDashboardScreen().launch(context);
                },
              ),
              20.height,
              RichText(
                text: TextSpan(
                  text: "Already have an account?",
                  style: TextStyle(color: Colors.grey),
                  children: [
                    TextSpan(
                        text: " Sign In",
                        style: TextStyle(color: CSDarkBlueColor)),
                  ],
                ),
              ).onTap(
                () {
                  CSSignInScreen().launch(context);
                },
              ),
            ],
          ).paddingAll(16.0),
        ),
      ),
    );
  }
}
