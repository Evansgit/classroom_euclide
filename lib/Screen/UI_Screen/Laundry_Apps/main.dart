import 'package:crypto_template/Screen/UI_Screen/Laundry_Apps/pages/dashboard.dart';
import 'package:crypto_template/Screen/UI_Screen/Laundry_Apps/pages/home.dart';
import 'package:crypto_template/Screen/UI_Screen/Laundry_Apps/pages/login.dart';
import 'package:crypto_template/Screen/UI_Screen/Laundry_Apps/pages/single_order.dart';
import 'package:crypto_template/Screen/UI_Screen/Laundry_Apps/utils/constants.dart';
import 'package:flutter/material.dart';

class LaundryApps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Laundry UI",
      theme: ThemeData(
        scaffoldBackgroundColor: Constants.scaffoldBackgroundColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: "/",
      onGenerateRoute: _onGenerateRoute,
    );
  }
}

Route<dynamic> _onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case "/":
      return MaterialPageRoute(builder: (BuildContext context) {
        return Home();
      });
    case "/login":
      return MaterialPageRoute(builder: (BuildContext context) {
        return Login();
      });
    case "/dashboard":
      return MaterialPageRoute(builder: (BuildContext context) {
        return Dashboard();
      });
    case "/single-order":
      return MaterialPageRoute(builder: (BuildContext context) {
        return SingleOrder();
      });
    default:
      return MaterialPageRoute(builder: (BuildContext context) {
        return Home();
      });
  }
}
