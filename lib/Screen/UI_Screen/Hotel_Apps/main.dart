import 'package:crypto_template/Screen/UI_Screen/Hotel_Apps/utils/constants.dart';
import 'package:flutter/material.dart';

import 'pages/home.dart';

class HotelApps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Airbnb Redesign',
      theme: ThemeData(
        primaryColor: Constants.primaryColor,
        scaffoldBackgroundColor: Color.fromRGBO(229, 229, 229, 1),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: "/",
      onGenerateRoute: _onGenerateRoute,
    );
  }
}

// We need to make an onGenerateRoute function to handle routing

Route<dynamic> _onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case "/":
      return MaterialPageRoute(builder: (BuildContext context) {
        return Home(); //To be created
      });
    default:
      return MaterialPageRoute(builder: (BuildContext context) {
        return Home(); //To be created
      });
  }
}
