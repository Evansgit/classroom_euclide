import 'package:crypto_template/Screen/UI_Screen/News_Apps/utils/constants.dart';
import 'package:flutter/material.dart';

class NewsApps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Constants.primaryColor,
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: "/",
    );
  }
}
