import 'package:crypto_template/Screen/UI_Screen/LanguageLearning_Apps/pages/create_account.dart';
import 'package:crypto_template/Screen/UI_Screen/LanguageLearning_Apps/pages/dashboard.dart';
import 'package:crypto_template/Screen/UI_Screen/LanguageLearning_Apps/pages/home.dart';
import 'package:crypto_template/Screen/UI_Screen/LanguageLearning_Apps/pages/lesson_screen.dart';
import 'package:flutter/material.dart';

class LanguageLearning extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
    case "/create-account":
      return MaterialPageRoute(builder: (BuildContext context) {
        return CreateAccount();
      });
    case "/dashboard":
      return MaterialPageRoute(builder: (BuildContext context) {
        return Dashboard();
      });
    case "/lesson-screen":
      return MaterialPageRoute(builder: (BuildContext context) {
        return LessonScreen();
      });
    default:
      return MaterialPageRoute(builder: (BuildContext context) {
        return Home();
      });
  }
}
